local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets('typescriptreact', {
  s('hello', {
    t 'console.log("hello ',
    i(1),
    t '")',
  }),
})

ls.add_snippets('javascriptreact', {
  s('hello', {
    t 'console.log("hello ',
    i(1),
    t '")',
  }),
})

ls.add_snippets('javascript', {
  s('hello', {
    t 'console.log("hello ',
    i(1),
    t '")',
  }),
})
