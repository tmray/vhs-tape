module Jekyll
  class CategoryPageGenerator < Generator
    safe true
    priority :normal

    def generate(site)
      # Get all unique categories from posts
      categories = site.posts.docs.map { |post| post.data['category'] }.compact.uniq
      
      # Create a hash to track normalized categories and their original versions
      category_mapping = {}
      
      categories.each do |category|
        normalized = category.to_s.capitalize
        if category_mapping[normalized]
          category_mapping[normalized] << category
        else
          category_mapping[normalized] = [category]
        end
      end

      category_mapping.each do |normalized_category, original_categories|
        # Create a new page for each normalized category
        site.pages << CategoryPage.new(site, site.source, 'categories', normalized_category, original_categories)
      end
    end
  end

  class CategoryPage < Page
    def initialize(site, base, dir, category, original_categories = [])
      @site = site
      @base = base
      @dir = dir
      @name = "#{category.downcase.gsub(/\s+/, '-')}.html"

      self.process(@name)
      self.data = {
        'layout' => 'default',
        'title' => category,
        'category' => category,
        'original_categories' => original_categories,
        'permalink' => "/category/#{category.downcase.gsub(/\s+/, '-')}/"
      }

      # Read the template content
      template_path = File.join(base, '_categories', '_posts.html')
      if File.exist?(template_path)
        self.content = File.read(template_path)
      else
        self.content = "Category: #{category}"
      end
    end
  end
end 