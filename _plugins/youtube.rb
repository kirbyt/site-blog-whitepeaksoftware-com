# Based on the plugin found at: 
# https://gist.github.com/joelverhagen/1805814
#
# Example use:
#
# Easily embed a YouTube video. Just drop this file in your _plugins directory.
#
# {% youtube oHg5SJYRHA0 %}
# You can also specify a height and width. If you do not, it defaults to 560 x 420.
#
# {% youtube oHg5SJYRHA0 500 400 %}
#

class YouTube < Liquid::Tag
  Syntax = /^\s*([^\s]+)(\s+(\d+)\s+(\d+)\s*)?/
 
  def initialize(tagName, markup, tokens)
    super
 
    if markup =~ Syntax then
      @id = $1
 
      if $2.nil? then
          @width = 560
          @height = 420
      else
          @width = $2.to_i
          @height = $3.to_i
      end
    else
      raise "No YouTube ID provided in the \"youtube\" tag"
    end
  end
 
  def render(context)
    "<div class=\"youtube-video\"><figure><iframe width=\"#{@width}\" height=\"#{@height}\" src=\"https://www.youtube.com/embed/#{@id}?color=white&theme=light\"></iframe></figure></div>"
  end
 
  Liquid::Template.register_tag "youtube", self
end