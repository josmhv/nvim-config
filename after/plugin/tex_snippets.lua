local ls = require("luasnip")
local utils = require("luasnip-latex-snippets.util.utils")
local is_math = utils.with_opts(utils.is_math, false) -- true to use treesitter
local not_math = utils.with_opts(utils.not_math, false) -- true to use treesitter

-- set a higher priority (defaults to 0 for most snippets)
local snip1 = ls.parser.parse_snippet(
  { trig = "vec", name = "Vector", condition = utils.pipe({ is_math }), priority = 10},
  "\\vec{$1}$0"
)
ls.add_snippets("tex", { snip1 }, {
  type = "autosnippets",
})

local snip2 = ls.parser.parse_snippet(
  { trig = "subsec", name = "Sub-section", priority = 10 },
  "\\subsection*{$1}$0"
)
ls.add_snippets("tex", { snip2 }, {
  type = "autosnippets",
})

local snip3 = ls.parser.parse_snippet(
  { trig = "sec", name = "Section", priority = 10 },
  "\\section*{$1}$0"
)
ls.add_snippets("tex", { snip3 }, {
  type = "autosnippets",
})

local snip4 = ls.parser.parse_snippet({ trig = "dm", name = "Block Math", priority = 10 }, "\\[\n\t${1:${TM_SELECTED_TEXT}}\n\\] $0")
ls.add_snippets("tex", { snip4 }, {
  type = "autosnippets",
})

local snip5 = ls.parser.parse_snippet(
  { trig = "listo", name = "End proof", priority = 10 },
  "\\( \\hfill \\blacksquare \\)"
)
ls.add_snippets("tex", { snip5 }, {
  type = "autosnippets",
})

local snip6 = ls.parser.parse_snippet(
  { trig = "npage", name = "Page jump", priority = 10 },
  "\\clearpage"
)
ls.add_snippets("tex", { snip6 }, {
  type = "autosnippets",
})

local snip7 = ls.parser.parse_snippet(
  { trig = "mcal", name = "Letra Caligrafica", condition = utils.pipe({ is_math }), priority = 10 },
  "\\mathcal{$1}$0"
)
ls.add_snippets("tex", { snip7 }, {
  type = "autosnippets",
})

local snip8 = ls.parser.parse_snippet(
  { trig = "fun", name = "Funcion", condition = utils.pipe({ is_math }), priority = 10 },
  "\\colon $1 \\to $0"
)
ls.add_snippets("tex", { snip8 }, {
  type = "autosnippets",
})

local snip9 = ls.parser.parse_snippet(
  { trig = "cc", name = "Sub set eq", condition = utils.pipe({ is_math }), priority = 10 },
  "\\subseteq"
)
ls.add_snippets("tex", { snip9 }, {
  type = "autosnippets",
})

local snip10 = ls.parser.parse_snippet(
  { trig = "f-1", name = "f^-1 conjunto", condition = utils.pipe({ is_math }), priority = 10 },
  "f^{-1}($1)$0"
)
ls.add_snippets("tex", { snip10 }, {
  type = "autosnippets",
})
local snip12 = ls.parser.parse_snippet(
  { trig = "g-1", name = "g^-1 conjunto", condition = utils.pipe({ is_math }), priority = 10 },
  "g^{-1}($1)$0"
)
ls.add_snippets("tex", { snip12 }, {
  type = "autosnippets",
})
local snip13 = ls.parser.parse_snippet(
  { trig = "h-1", name = "h^-1 conjunto", condition = utils.pipe({ is_math }), priority = 10 },
  "h^{-1}($1)$0"
)
ls.add_snippets("tex", { snip13 }, {
  type = "autosnippets",
})

local snip11 = ls.parser.parse_snippet(
  { trig = "borel", name = "Borelianos de R", condition = utils.pipe({ is_math }), priority = 10 },
  "\\mathcal{B}(\\mathbb{R})"
)
ls.add_snippets("tex", { snip11 }, {
  type = "autosnippets",
})
