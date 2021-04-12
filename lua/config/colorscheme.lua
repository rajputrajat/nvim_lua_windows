local utils = require('utils')
local cmd = vim.cmd

utils.opt('o', 'termguicolors', true)

require('colorbuddy').colorscheme('gruvbuddy')

local Color, c, Group, g, s = require('colorbuddy').setup()
Color.new('background',  '#212121')
Color.new('lighter_background',  '#505050')
Color.new('orange', '#ffa000' )
Color.new('light_blue', '#26c6da' )
Color.new('light_purple', '#f48fb1' )
Color.new('green', '#66bb6a' )
Color.new('peach', '#c94f7c')
Color.new('black', '#000000')
Color.new('bright_yellow', '#ffff8d')
Color.new('light_green', '#aeea00')

Group.new('normal', g.normal, c.background, g.normal)
Group.new('keyword', c.orange, g.keyword, g.keyword + s.bold)
Group.new('TSFunction', c.light_green, g.TSFunction, g.TSFunction - s.bold)
Group.new('Special', c.light_green, g.special, g.Special - s.bold)
Group.new('type', c.light_blue, g.type, g.type )
Group.new('comment', g.comment, g.comment, s.italic )
Group.new('string', c.light_purple, c.background, s.bold + s.italic )
Group.new('identifier', c.green, g.identifier, g.identifier - s.bold)
Group.new('number', c.background, c.bright_yellow, s.bold + s.italic)
Group.new('type', g.type, g.type, g.type - s.italic)
Group.new('TSvariable', c.bright_yellow, g.todo, g.todo)

Group.new('colorcolumn', c.none, c.darkgrey)
