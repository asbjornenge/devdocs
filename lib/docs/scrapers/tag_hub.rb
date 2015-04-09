module Docs
  class TagHub < UrlScraper
    self.name = 'TagHub'
    self.type = 'tag_hub'
    self.version = '1.0.0'
#    self.dir = '/srv/smart/documentation/taghub-webapps'
    self.base_url = 'http://localhost:8000/'
    self.root_path = 'index.html'
    self.links = {
      home: 'https://www.taghub.net/',
      code: 'https://www.taghub.net/'
    }

    html_filters.push 'tag_hub/entries', 'tag_hub/clean_html'
#    text_filters.push 'django/fix_urls'

    options[:container] = '.rst-content'

    options[:skip] = %w(
      getting-started-guide/index)
#      contents.html
#      genindex.html
#      py-modindex.html
#      glossary.html
#      search.html
#      intro/whatsnext.html)

#    options[:skip_patterns] = [
#      /\Afaq\//,
#      /\Ainternals\//,
#      /\Amisc\//,
#      /\Areleases\//,
#      /\A_/,
#      /\index\//]

    options[:attribution] = <<-HTML
      &copy; Django Software Foundation and individual contributors<br>
      Licensed under the BSD License.
    HTML
  end
end
