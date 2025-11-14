#!/bin/bash

# Script to download images from Google Photos shared links
# Usage: ./download_google_photo.sh <google-photos-url> [output-filename]

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if URL is provided
if [ -z "$1" ]; then
    echo -e "${RED}Error: No URL provided${NC}"
    echo "Usage: ./download_google_photo.sh <google-photos-url> [output-filename]"
    echo "Example: ./download_google_photo.sh https://photos.app.goo.gl/xxxxx my-image.jpg"
    exit 1
fi

GOOGLE_URL="$1"
ASSETS_DIR="./assets/images"

# Create assets directory if it doesn't exist
mkdir -p "$ASSETS_DIR"

# Get output filename
if [ -z "$2" ]; then
    # Generate filename from timestamp
    FILENAME="photo-$(date +%Y%m%d-%H%M%S).jpg"
else
    FILENAME="$2"
fi

OUTPUT_PATH="$ASSETS_DIR/$FILENAME"

echo -e "${YELLOW}Downloading image from Google Photos...${NC}"

# Method 1: Try to get the direct image URL using curl
# Google Photos shared links redirect to a page, we need to extract the actual image URL
TEMP_HTML=$(mktemp)
curl -sL "$GOOGLE_URL" > "$TEMP_HTML"

# Extract the high-resolution image URL from the HTML
# Google Photos embeds the image URL in various places, we'll try to find it
IMAGE_URL=$(grep -oP 'https://lh3\.googleusercontent\.com/[^"]+' "$TEMP_HTML" | head -1)

if [ -z "$IMAGE_URL" ]; then
    # Try alternative extraction method
    IMAGE_URL=$(grep -oP '"(https://lh3\.googleusercontent\.com/[^"]+)"' "$TEMP_HTML" | sed 's/"//g' | head -1)
fi

rm "$TEMP_HTML"

if [ -z "$IMAGE_URL" ]; then
    echo -e "${RED}Error: Could not extract image URL from Google Photos link${NC}"
    echo -e "${YELLOW}Please try:${NC}"
    echo "1. Open the link in a browser"
    echo "2. Right-click the image and select 'Open image in new tab'"
    echo "3. Copy that URL and run:"
    echo "   wget -O \"$OUTPUT_PATH\" \"<direct-image-url>\""
    exit 1
fi

# Add parameters to get full resolution
IMAGE_URL="${IMAGE_URL%=*}=d"

echo -e "${YELLOW}Found image URL:${NC} $IMAGE_URL"
echo -e "${YELLOW}Downloading to:${NC} $OUTPUT_PATH"

# Download the image
if wget -q --show-progress -O "$OUTPUT_PATH" "$IMAGE_URL"; then
    echo -e "${GREEN}✓ Success!${NC} Image downloaded to: $OUTPUT_PATH"
    echo ""
    echo -e "${GREEN}Add this to your Jekyll post:${NC}"
    echo ""
    echo "{% include vhs-image.html"
    echo "   src=\"/assets/images/$FILENAME\""
    echo "   alt=\"Description of image\""
    echo "   caption=\"Your caption here\""
    echo "   size=\"full\""
    echo "%}"
    echo ""
else
    echo -e "${RED}Error: Failed to download image${NC}"
    echo "You can try downloading manually:"
    echo "wget -O \"$OUTPUT_PATH\" \"$IMAGE_URL\""
    exit 1
fi
