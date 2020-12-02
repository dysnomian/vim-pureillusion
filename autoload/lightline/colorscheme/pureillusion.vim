" =============================================================================
" Filename: autoload/lightline/colorscheme/pureillusion.vim
" Author: dysnomian
" License: MIT License
" Last Change: 2020/04/06 19:22:53.
" =============================================================================

" Colors
let s:abyssal_black   = { "gui": "#000000", "cterm": "0", "cterm16" : "0" }
let s:soft_gray       = { "gui": "#2e2b2b", "cterm": "0", "cterm16" : "0" }
let s:pure_light_gray = { "gui": "#cccccc", "cterm": "15", "cterm16" : "15" }
let s:pure_white      = { "gui": "#FFFFFF", "cterm": "231", "cterm16" : "1" }

let s:medium_gray     = { "gui": "#767676", "cterm": "243", "cterm16" : "243" }
let s:light_black     = { "gui": "#424242", "cterm": "8", "cterm16" : "8" }
let s:lighter_black   = { "gui": "#545454", "cterm": "240", "cterm16" : "240" }

" lighter shadows and darker grays
let s:subtle_black  = { "gui": "#303030", "cterm": "236", "cterm16" : "236" }
let s:light_gray    = { "gui": "#B2B2B2", "cterm": "249", "cterm16" : "249" }
let s:lighter_gray  = { "gui": "#C6C6C6", "cterm": "251", "cterm16" : "251" }

let s:asphalt = { "gui": "#1e1c31", "cterm": "233", "cterm16": "NONE"}
let s:asphalt_subtle= { "gui": "#100E23", "cterm": "232", "cterm16": "8"}
let s:dark_asphalt = { "gui": "#565575", "cterm": "236", "cterm16": "0"}

let s:cocona_pink = { "gui": "#fa9cb6", "cterm": "204", "cterm16": "1"}
let s:cocona_pink_deeper = { "gui": "#3981f1", "cterm": "203", "cterm16": "9"}

let s:yayaka_green = { "gui": "#b0fb7c", "cterm": "120", "cterm16": "2"}
let s:yayaka_green_deeper = { "gui": "#74bb4e", "cterm": "119", "cterm16": "10"}

let s:flipflap_yellow = { "gui": "#fcfdaf", "cterm": "228", "cterm16": "3"}       " todo
let s:flipflap_gold = { "gui": "#e69263", "cterm": "215", "cterm16": "11"}       " todo

let s:papika_blue = { "gui": "#98d3f9", "cterm": "159", "cterm16": "4"}
let s:papika_blue_deeper = { "gui": "#3981f1", "cterm": "75", "cterm16": "12"}

let s:yayaka_purple = { "gui": "#cb88ec", "cterm": "141", "cterm16": "5"}
let s:dark_purple = { "gui": "#cfb0ff", "cterm": "135", "cterm16": "13"}

let s:flipflap_cyan = { "gui": "#6af2f1", "cterm": "122", "cterm16": "6"}
let s:pure_seafoam = { "gui": "#7ce8a4", "cterm": "121", "cterm16": "14"}

let s:clouds = { "gui": "#cbe3e7", "cterm": "253", "cterm16": "7"}
let s:dark_clouds = { "gui": "#a6b3cc", "cterm": "252", "cterm16": "15"}

let s:bg              = s:soft_gray
let s:bg_subtle       = s:medium_gray
let s:bg_dark         = s:abyssal_black
let s:norm            = s:pure_white
let s:norm_subtle     = s:pure_light_gray
let s:visual          = s:flipflap_cyan

" lightline pureillusion colors:
let s:lfc = {
      \'black': [ s:abyssal_black.gui, s:abyssal_black.cterm16],
      \'medium_gray': [ s:medium_gray.gui, s:medium_gray.cterm16],
      \'white': [ s:pure_white.gui, s:pure_white.cterm16],
      \'soft_gray': [ s:soft_gray.gui, s:soft_gray.cterm16],
      \'light_black': [s:light_black.gui, s:light_black.cterm16],
      \'lighter_black': [ s:lighter_black.gui, s:lighter_black.cterm16],
      \'subtle_black': [ s:subtle_black.gui, s:subtle_black.cterm16],
      \'lighter_gray': [ s:lighter_gray.gui, s:lighter_gray.cterm16],
      \'asphalt': [s:asphalt.gui, s:asphalt.cterm16],
      \'asphalt_subtle': [s:asphalt_subtle.gui, s:asphalt_subtle.cterm16],
      \'dark_asphalt' : [s:dark_asphalt.gui, s:dark_asphalt.cterm16],
      \'red' : [s:cocona_pink.gui, s:cocona_pink.cterm16],
      \'dark_red' : [s:cocona_pink_deeper.gui, s:cocona_pink_deeper.cterm16],
      \'green' : [s:yayaka_green.gui, s:yayaka_green.cterm16],
      \'dark_green' : [s:yayaka_green_deeper.gui, s:yayaka_green_deeper.cterm16],
      \'yellow' : [s:flipflap_yellow.gui, s:flipflap_yellow.cterm16],
      \'dark_yellow' : [s:flipflap_gold.gui, s:flipflap_gold.cterm16],
      \'blue' : [s:papika_blue.gui, s:papika_blue.cterm16],
      \'dark_blue' : [s:papika_blue_deeper.gui, s:papika_blue_deeper.cterm16],
      \'purple' : [s:yayaka_purple.gui, s:yayaka_purple.cterm16],
      \'dark_purple' : [s:dark_purple.gui, s:dark_purple.cterm16],
      \'cyan' : [s:flipflap_cyan.gui, s:flipflap_cyan.cterm16],
      \'dark_cyan' : [s:pure_seafoam.gui, s:pure_seafoam.cterm16],
      \'clouds' : [s:clouds.gui, s:clouds.cterm16],
      \'dark_clouds' : [s:dark_clouds.gui, s:dark_clouds.cterm16],
      \'bg': [s:bg.gui, s:bg.cterm16],
      \'bg_subtle': [s:bg_subtle.gui, s:bg_subtle.cterm16],
      \'bg_dark': [s:bg_dark.gui, s:bg_dark.cterm16],
      \'norm': [s:norm.gui, s:norm.cterm16],
      \'norm_subtle': [s:norm_subtle.gui, s:norm_subtle.cterm16],
      \}

let s:p = { 'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {} }

" Tabline
let s:p.tabline.left    = [ [ s:lfc.yellow, s:lfc.dark_yellow ] ]
let s:p.tabline.tabsel  = [ [ s:lfc.white, s:lfc.dark_blue ] ]
let s:p.tabline.middle  = [ [ s:lfc.black, s:lfc.white ] ]
let s:p.tabline.right   = [ [ s:lfc.white, s:lfc.dark_red ] ]

" Normal mode
let s:p.normal.left     = [ [ s:lfc.white, s:lfc.dark_blue ],  [ s:lfc.red, s:lfc.white ] ]
let s:p.normal.middle   = [ [ s:lfc.black, s:lfc.white ] ]
let s:p.normal.right    = [ [ s:lfc.white, s:lfc.dark_yellow ],  [ s:lfc.asphalt_subtle, s:lfc.yellow ] ]
let s:p.normal.error    = [ [ s:lfc.red, s:lfc.bg_subtle ] ]
let s:p.normal.warning  = [ [ s:lfc.yellow, s:lfc.bg_subtle ] ]

" Visual mode
let s:p.visual.left     = [ [ s:lfc.white, s:lfc.dark_green ],  [ s:lfc.dark_purple, s:lfc.white ] ]
let s:p.visual.right    = [ [ s:lfc.white, s:lfc.dark_yellow ],  [ s:lfc.asphalt_subtle, s:lfc.yellow ] ]

" Replace mode
let s:p.replace.left    = [ [ s:lfc.bg_subtle, s:lfc.green ],  [ s:lfc.bg_subtle, s:lfc.dark_green ] ]
let s:p.replace.right   = [ [ s:lfc.bg_subtle, s:lfc.green ],  [ s:lfc.bg_subtle, s:lfc.dark_green ] ]

" Insert mode
let s:p.insert.left     = [ [ s:lfc.white, s:lfc.red ],  [ s:lfc.blue, s:lfc.white ] ]
let s:p.insert.right    = [ [ s:lfc.white, s:lfc.red ],  [ s:lfc.white, s:lfc.blue ] ]

" Inactive split
let s:p.inactive.left   = [ [ s:lfc.dark_asphalt, s:lfc.bg_subtle ], [ s:lfc.dark_asphalt, s:lfc.bg_subtle ] ]
let s:p.inactive.middle = [ [ s:lfc.dark_asphalt, s:lfc.bg_subtle ] ]
let s:p.inactive.right  = [ [ s:lfc.dark_asphalt, s:lfc.bg_subtle ], [ s:lfc.dark_asphalt, s:lfc.bg_subtle ] ]

let g:lightline#colorscheme#pureillusion#palette = lightline#colorscheme#flatten(s:p)