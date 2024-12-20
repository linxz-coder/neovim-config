local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local date = function() return {os.date('%Y-%m-%d')} end

ls.add_snippets("markdown", {
  s("zfm", {
    t("+++"),
    t({"", "title = \""}), i(1), t("\""),
    t({"", "date = "}), f(date),
    t({"", "+++", ""}),
    i(0),
  }),

    -- 新增的 zfms snippet
  s("zfms", {
    t("+++"),
    t({"", "title = \""}), i(1), t("\""),
    t({"", "date = "}), f(date),
    t({"", "authors = [\"小中\"]"}),
    t({"", "[taxonomies]"}),
    t({"", "tags = [\""}), i(2), t("\"]"),
    t({"", "+++", ""}),
    i(0),
  }),
})
