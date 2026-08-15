-- Lua filter to bold "Beese, Chelsey M." in bibliography entries
-- This filter processes the HTML output and bolds the author name wherever it appears

function Div(el)
  -- Check if this is a bibliography or references div
  if el.classes:includes("csl-entry") or el.classes:includes("references") or el.identifier == "refs" then
    -- Process the content to bold "Beese" variations
    el.content = el.content:walk({
      Str = function(s)
        -- Check if this string contains variations of the author name
        if s.text:match("Beese") then
          -- Replace with bolded version
          return pandoc.Strong(pandoc.Str(s.text))
        end
        return s
      end,
      -- Also handle inline elements
      Span = function(sp)
        -- Check all text content in the span
        local text = pandoc.utils.stringify(sp)
        if text:match("Beese") then
          sp.classes:insert("bold-author")
        end
        return sp
      end
    })
  end
  return el
end

return {{Div = Div}}
