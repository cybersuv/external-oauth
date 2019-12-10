package = "external-oauth"
version = "19.12-0"
source = {
  url = "..."
}
description = {
  summary = "A Kong plugin, that let you use an external Oauth 2.0 provider to protect your API. Customized from git://github.com/mogui/kong-external-oauth to have latest service support.",
  license = "Apache 2.0"
}
dependencies = {
  "lua >= 5.1"
  -- If you depend on other rocks, add them here
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.external-oauth.access"] = "src/access.lua",
    ["kong.plugins.external-oauth.handler"] = "src/handler.lua",
    ["kong.plugins.external-oauth.schema"] = "src/schema.lua"
  }
}
