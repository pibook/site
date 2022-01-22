function Image(img)
      if img.classes:find('epigraph',1) then
        local f = io.open("../_quotes/" .. img.src, 'r')
        local doc = pandoc.read(f:read('*a'))
        f:close()
        local caption = pandoc.utils.stringify(doc.meta.caption) or "Epigraph has not been set"
        local person = pandoc.utils.stringify(doc.meta.person) or "Person has not been set"
        local epigraph = "> " .. caption .. " " .. person
        return pandoc.RawInline('markdown',epigraph)
      end
end
