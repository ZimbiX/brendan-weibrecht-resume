require 'slim'
require 'tilt'
require 'redcarpet'

class Redcarpet::Render::HTMLWithSmartyPants < Redcarpet::Render::HTML
  include Redcarpet::Render::SmartyPants
end

# The below is from: https://sunaku.github.io/slim-tilt-redcarpet.html

render_options = {
  # https://github.com/vmg/redcarpet#darling-i-packed-you-a-couple-renderers-for-lunch
  filter_html:     false,
  no_images:       false,
  no_links:        false,
  no_styles:       false,
  safe_links_only: false,
  with_toc_data:   true,
  hard_wrap:       true,
  xhtml:           true,
  prettify:        true,
  link_attributes: {},
}
renderer = Redcarpet::Render::HTMLWithSmartyPants.new render_options

markdown_extensions = {
  # https://github.com/vmg/redcarpet#and-its-like-really-simple-to-use
  no_intra_emphasis:            true,
  tables:                       true,
  fenced_code_blocks:           true,
  autolink:                     true,
  disable_indented_code_blocks: false,
  strikethrough:                true,
  lax_spacing:                  true,
  space_after_headers:          false,
  superscript:                  true,
  underline:                    false,
  highlight:                    false,
  quote:                        false,
  footnotes:                    false,
  renderer:                     renderer,
}

# https://github.com/slim-template/slim/issues/245#issuecomment-8833818
Slim::Embedded.set_default_options markdown: markdown_extensions
Tilt.register Tilt::RedcarpetTemplate::Redcarpet2, 'markdown', 'mkd', 'md'
Tilt.prefer Tilt::RedcarpetTemplate::Redcarpet2, 'markdown'
