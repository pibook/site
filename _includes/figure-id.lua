function Image(img)
      if img.classes:find('figure',1) then
        local fn = img.src
        --print(fn)
        local f = io.open("../_gallery/" .. fn, 'r')
        local doc = pandoc.read(f:read('*a'))
        f:close()
        local figid = string.sub(fn,1,string.len(fn)-3)
        local title=pandoc.utils.stringify(doc.meta.title) or "Title has not been set"
        local src=pandoc.utils.stringify(doc.meta.image_url) or "src has not been set"
        local caption=pandoc.utils.stringify(doc.meta.caption) or "caption has not been set"
        return pandoc.Image(caption,src,nil,"fig:" .. figid)
      end
end

