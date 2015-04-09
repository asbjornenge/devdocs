module Docs
  class TagHub 
    class EntriesFilter < Docs::EntriesFilter
      def get_name
        at_css('h1').child.content
      end

      def get_type
        'WebApps'
      end

#      def additional_entries
#        css('h1').map do |node|
#          name = node.child.content
#
#          [name, self.type, name]
#        end
#      end
    end
  end
end
