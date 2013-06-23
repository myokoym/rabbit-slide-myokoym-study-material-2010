@font_family = find_font_family("ubuntu") || @font_family
@monospace_font_family = find_font_family("ubuntu mono") || @monospace_font_family

include_theme("lightning-clear-blue")

[Title, Subtitle].each do |slide|
  match(TitleSlide, slide) do |element|
    element.align = :center
  end
end

match(TitleSlide, Author) do |element|
  element.padding_top = @space * 2
  element.prop_set("style", "italic")
  element.prop_set("size", 40 * Pango::SCALE)
end
