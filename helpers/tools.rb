module Tools
  def markdown(text)
    Tilt::KramdownTemplate.new { text }.render
  end

  def get_page(slug = false)
    if slug
      # Find the page in our pages folder
      sitemap.find_resource_by_path "#{slug}/index.html"
    else
      # Return pages root
      sitemap.find_resource_by_path "index.html"
    end
  end

  def get_child(page, path)
    base = basepath page
    if base.empty?
      get_page path
    else
      get_page base + path
    end
  end

  def get_slug(page)
    basepath(page).split('/').last
  end

  def basepath(page)
    page.path.gsub 'index.html', ''
  end
end
