function Image(img)
        local id=pandoc.utils.stringify(img.identifier)
        local src=pandoc.utils.stringify(img.src) or "src has not been set"
        local caption=pandoc.utils.stringify(img.caption) or "caption has not been set"
        local figure = "{% include figure image_path=\"" .. src .. "\" caption=\"" .. caption .. "\" id=\"" .. id .. "\" %}"
        return pandoc.RawInline('markdown',figure)
end

