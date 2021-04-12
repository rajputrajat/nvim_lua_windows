local utils = require('utils')
local cmd = vim.cmd

utils.opt('o', 'termguicolors', true)

require('colorbuddy').colorscheme('gruvbuddy')

local Color, c, Group, g, s = require('colorbuddy').setup()
Color.new('background',  '#212121')
Color.new('orange', '#ffa000' )
Color.new('light_blue', '#26c6da' )
Color.new('light_purple', '#ff94c2' )
Color.new('green', '#66bb6a' )
Color.new('peach', '#ff80ab')
Color.new('grey', '#000000')
Color.new('bright_yellow', '#ffff8d')

Group.new('normal', g.normal, c.background, g.normal)
Group.new('keyword', c.orange, g.keyword, g.keyword + s.bold)
Group.new('type', c.light_blue, g.type, g.type )
Group.new('comment', g.comment, g.comment, s.italic )
Group.new('string', c.light_purple, g.string, s.italic )
Group.new('identifier', c.green, g.identifier, g.identifier)
Group.new('number', c.peach, g.identifier, s.bold + s.italic)
Group.new('type', g.type, g.type, g.type - s.italic)
Group.new('TSvariable', c.bright_yellow, g.todo, g.todo)

Group.new('colorcolumn', c.none, c.grey)
