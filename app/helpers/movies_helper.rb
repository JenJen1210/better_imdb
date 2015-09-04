module MoviesHelper

   def render_spuds(value)
      output = ''
      if (1..5).include?(value.to_i)
         value.to_i.times { output += image_tag('potato.jpg')}
      else
        5.times do
          output += image_tag('potato.jpg')
        end
      end
      output.html_safe
   end
end
