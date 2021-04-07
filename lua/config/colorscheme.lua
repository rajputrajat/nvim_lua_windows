local utils = require('utils')
local cmd = vim.cmd

utils.opt('o', 'termguicolors', true)

require('colorbuddy').colorscheme('gruvbuddy')

local Color, colors, Group, groups, styles = require('colorbuddy').setup()
Color.new('background',  '#212121')
Color.new('orange', '#ffa000' )
Color.new('light_blue', '#26c6da' )
Color.new('light_purple', '#ff94c2' )
Color.new('green', '#66bb6a' )
Color.new('peach', '#ff80ab')

Group.new('normal', groups.normal, colors.background, groups.normal)
Group.new('keyword', colors.orange, groups.keyword, groups.keyword )
Group.new('type', colors.light_blue, groups.type, groups.type )
Group.new('comment', groups.comment, groups.comment, styles.italic )
Group.new('string', colors.light_purple, groups.string, groups.string )
Group.new('identifier', colors.green, groups.identifier, groups.identifier)
Group.new('number', colors.peach, groups.identifier, styles.bold + styles.italic)
