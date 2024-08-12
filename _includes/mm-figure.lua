--Convert a markdown image to the figure include helper offered by the minimal mistakes theme
--The figure include helper by minimal mistakes facilitates the display of a caption under an image
--The figure include is specified at: https://mmistakes.github.io/minimal-mistakes/docs/helpers/#figure
function Image(img)
        local title=pandoc.utils.stringify(img.title) or "title has not been set"
        local src=pandoc.utils.stringify(img.src) or "src has not been set"
        local caption=pandoc.utils.stringify(img.caption) or "caption has not been set"
        local figure = "{% include figure image_path=\"" .. src .. "\" caption=\"" .. caption .. "\" alt=\"" .. title .. "\" %}"
        return pandoc.RawInline('html',figure)
end

