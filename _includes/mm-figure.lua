function Image(img)
        --local attr=pandoc.utils.stringify(img.attributes)
        local src=pandoc.utils.stringify(img.src) or "src has not been set"
        local caption=pandoc.utils.stringify(img.caption) or "caption has not been set"
        local figure = "{% include figure image_path=\"" .. src .. "\" caption=\"" .. caption .. "\" %}" .. "{#" .. attr .. "}"
        return pandoc.RawInline('markdown',figure)
end

