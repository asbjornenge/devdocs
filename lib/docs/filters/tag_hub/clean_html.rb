module Docs
  class TagHub 
    class CleanHtmlFilter < Filter
      def call

        css('h1', 'h2', 'h3', 'dt').each do |node|
          node.content = node.content
        end

        css('div[role="navigation"]').each do |node|
            node.remove
        end

        doc
      end
    end
  end
end
