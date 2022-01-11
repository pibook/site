stringify = pandoc.utils.stringify

function Image(img)
      if img.classes:find('figure',1) then
        local fn = img.src
        local f = io.open("../_gallery/" .. fn, 'r')
        local doc = pandoc.read(f:read('*a'))
        f:close()
        --print(fn)
        local src=pandoc.utils.stringify(doc.meta.image_url) or "src has not been set"
        local caption=pandoc.utils.stringify(doc.meta.caption) or "caption has not been set"
        return pandoc.Image(caption,src)
      end
end

