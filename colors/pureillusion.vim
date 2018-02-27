" Vim Color File
" Name:       pureillusion.vim
" Version:    1.0
" Maintainer: github.com/dysnomian
" License:    The MIT License (MIT)
" Based On:   ChallengerDeep by github.com/MaxSt

hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='pureillusion'
set background=dark

if ! exists("g:pureillusion_termcolors")
  let g:pureillusion_termcolors = 256
endif

" not all terminals support italics properly.  If yours does, opt-in.
if ! exists("g:pureillusion_terminal_italics")
  let g:pureillusion_terminal_italics = 1
endif

" Colors
let s:abyssal_black   = { "gui": "#000000", "cterm": "0", "cterm16" : "0" }
let s:soft_gray       = { "gui": "#2e2b2b", "cterm": "0", "cterm16" : "0" }
let s:dark_gray       = { "gui": "#424242", "cterm": "8", "cterm16" : "8" }       " todo
let s:medium_gray     = { "gui": "#888", "cterm": "243", "cterm16" : "" }       " todo
let s:pure_light_gray = { "gui": "#cccccc", "cterm": "15", "cterm16" : "15" }
let s:pure_white      = { "gui": "#FFFFFF", "cterm": "231", "cterm16" : "1" }
let s:lighter_black   = { "gui": "#545454", "cterm": "240", "cterm16" : "240" }       " todo

" lighter shadows and darker grays
let s:subtle_black  = { "gui": "#303030", "cterm": "236", "cterm16" : "236" }       " todo
let s:light_gray    = { "gui": "#B2B2B2", "cterm": "249", "cterm16" : "249" }       " todo
let s:lighter_gray  = { "gui": "#C6C6C6", "cterm": "251", "cterm16" : "251" }       " todo

" flat colors:
let s:asphalt = { "gui": "#1e1c31", "cterm": "233", "cterm16": "NONE"}       " todo
let s:asphalt_subtle= { "gui": "#100E23", "cterm": "232", "cterm16": "8"}       " todo
let s:dark_asphalt = { "gui": "#565575", "cterm": "236", "cterm16": "0"}       " todo

let s:cocona_pink = { "gui": "#fa9cb6", "cterm": "204", "cterm16": "1"}
let s:cocona_pink_deeper = { "gui": "#3981f1", "cterm": "203", "cterm16": "9"}

let s:yayaka_green = { "gui": "#b0fb7c", "cterm": "120", "cterm16": "2"}
let s:yayaka_green_deeper = { "gui": "#74bb4e", "cterm": "119", "cterm16": "10"}

let s:flipflap_yellow = { "gui": "#fcfdaf", "cterm": "228", "cterm16": "3"}       " todo
let s:flipflap_gold = { "gui": "#e69263", "cterm": "215", "cterm16": "11"}       " todo

let s:papika_blue = { "gui": "#98d3f9", "cterm": "159", "cterm16": "4"}
let s:papika_blue_deeper = { "gui": "#3981f1", "cterm": "75", "cterm16": "12"}

let s:yayaka_purple = { "gui": "#cb88ec", "cterm": "141", "cterm16": "5"}       " todo
let s:dark_purple = { "gui": "#cfb0ff", "cterm": "135", "cterm16": "13"}       " todo

let s:flipflap_cyan = { "gui": "#6af2f1", "cterm": "122", "cterm16": "6"}       " todo
let s:pure_seafoam = { "gui": "#7ce8a4", "cterm": "121", "cterm16": "14"}       " todo

let s:clouds = { "gui": "#cbe3e7", "cterm": "253", "cterm16": "7"}       " todo
let s:dark_clouds = { "gui": "#a6b3cc", "cterm": "252", "cterm16": "15"}       " todo

let s:bg              = s:soft_gray
let s:bg_subtle       = s:soft_gray
let s:bg_dark         = s:abyssal_black
let s:norm            = s:pure_white
let s:norm_subtle     = s:pure_light_gray
let s:visual          = s:flipflap_cyan
let s:visual_fg       = s:abyssal_black

let s:head_a         = s:papika_blue_deeper
let s:head_b         = s:papika_blue
let s:head_c         = s:pure_seafoam

" shamelessly stolen from hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  " Not all terminals support italics properly. If yours does, opt-in.
  if g:pureillusion_terminal_italics == 0 && has_key(a:style, "cterm") && a:style["cterm"] == "italic"
    unlet a:style.cterm
  endif

  if g:pureillusion_termcolors == 16
    let l:ctermfg = (has_key(a:style, "fg") ? a:style.fg.cterm16 : "0")
    let l:ctermbg = (has_key(a:style, "bg") ? a:style.bg.cterm16 : "1")
  else
    let l:ctermfg = (has_key(a:style, "fg") ? a:style.fg.cterm : "NONE")
    let l:ctermbg = (has_key(a:style, "bg") ? a:style.bg.cterm : "NONE")
  end
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" . l:ctermfg
    \ "ctermbg=" . l:ctermbg
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction


" common groups ================================================================
" (see `:h w18`)

call s:h("Normal",        {"bg": s:bg, "fg": s:norm})
call s:h("Cursor",        {"bg": s:bg_dark, "fg": s:norm })
call s:h("Comment",       {"fg": s:dark_gray, "gui": "italic", "cterm": "italic"})

call s:h("Constant",      {"fg": s:flipflap_yellow})
hi! link String           Constant
hi! link Character        Constant

call s:h("Number",       {"fg": s:flipflap_gold})
hi! link Boolean          Constant
hi! link Float            Constant

call s:h("Identifier",    {"fg": s:yayaka_purple})       " todo
hi! link Function         Identifier

call s:h("Label",        {"fg": s:papika_blue_deeper})       " todo
hi! link Conditonal       Statement
hi! link Exception        Statement

call s:h("Operator",     {"fg": s:pure_seafoam})       " todo
hi! link Repeat           Operator

call s:h("PreProc",       {"fg": s:yayaka_green})       " todo
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc


call s:h("Keyword",       {"fg": s:cocona_pink})       " todo
hi! link Statement        Keyword

call s:h("Type",          {"fg": s:papika_blue})       " todo
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type

call s:h("Special",       {"fg": s:flipflap_cyan})       " todo
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special

call s:h("Underlined",    {"fg": s:norm                      , "gui": "underline", "cterm": "underline"})       " todo
call s:h("Ignore",        {"fg": s:bg                                                                  })       " todo
call s:h("Error",         {"fg": s:pure_white, "bg": s:cocona_pink_deeper , "gui": "bold"     , "cterm": "bold"     })       " todo
call s:h("Todo",          {"fg": s:pure_white, "bg": s:papika_blue, "gui": "bold"     , "cterm": "bold"     })       " todo

" ui chrome ====================================================================
" ordered according to `:help hitest.vim`

call s:h("SpecialKey",    {"fg": s:papika_blue})       " todo
call s:h("Boolean",    {"fg": s:flipflap_gold})       " todo
call s:h("Number",    {"fg": s:flipflap_gold})       " todo
call s:h("Float",    {"fg": s:flipflap_gold})       " todo
call s:h("NonText",       {"fg": s:bg_dark})       " todo
call s:h("Directory",     {"fg": s:yayaka_purple})       " todo
call s:h("ErrorMsg",      {"fg": s:cocona_pink_deeper})       " todo
call s:h("IncSearch",     {"bg": s:cocona_pink, "fg": s:clouds})       " todo
call s:h("Search",        {"bg": s:bg_dark})       " todo
call s:h("MoreMsg",       {"fg": s:medium_gray, "gui": "bold", "cterm": "bold"})       " todo
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:pure_white,  "bg": s:medium_gray})       " todo
call s:h("CursorLineNr",  {"fg": s:medium_gray, "bg": s:flipflap_cyan})       " todo
call s:h("Question",      {"fg": s:cocona_pink})       " todo
call s:h("StatusLine",    {"bg": s:bg_dark})       " todo
call s:h("Conceal",       {"fg": s:norm})       " todo
call s:h("StatusLineNC",  {"bg": s:bg_dark, "fg": s:medium_gray})       " todo
call s:h("VertSplit",     {"fg": s:bg_subtle})       " todo
call s:h("Title",         {"fg": s:papika_blue_deeper})       " todo
call s:h("Visual",        {"bg": s:visual})       " todo
call s:h("WarningMsg",    {"fg": s:flipflap_yellow})       " todo
call s:h("WildMenu",      {"fg": s:bg_subtle, "bg": s:flipflap_cyan})       " todo
call s:h("Folded",        {"bg": s:yayaka_purple, "fg": s:bg_subtle})       " todo
call s:h("FoldColumn",    {"fg": s:flipflap_yellow})       " todo
call s:h("DiffAdd",       {"fg": s:soft_gray,  "bg": s:yayaka_green})       " todo
call s:h("DiffDelete",    {"fg": s:soft_gray,  "bg": s:cocona_pink})       " todo
call s:h("DiffChange",    {"fg": s:soft_gray,  "bg": s:flipflap_gold})       " todo
call s:h("DiffText",      {"fg": s:soft_gray,  "bg": s:papika_blue_deeper})       " todo
call s:h("SignColumn",    {"fg": s:light_gray, "bg": s:soft_gray})       " todo

if has("gui_running")
  call s:h("SpellBad",    {"gui": "underline", "sp": s:cocona_pink_deeper})       " todo
  call s:h("SpellCap",    {"gui": "underline", "sp": s:yayaka_green})       " todo
  call s:h("SpellRare",   {"gui": "underline", "sp": s:cocona_pink})       " todo
  call s:h("SpellLocal",  {"gui": "underline", "sp": s:yayaka_green_deeper})       " todo
else
  call s:h("SpellBad",    {"cterm": "underline", "fg": s:cocona_pink_deeper})       " todo
  call s:h("SpellCap",    {"cterm": "underline", "fg": s:yayaka_green})       " todo
  call s:h("SpellRare",   {"cterm": "underline", "fg": s:cocona_pink})       " todo
  call s:h("SpellLocal",  {"cterm": "underline", "fg": s:yayaka_green_deeper})       " todo
endif
call s:h("Pmenu",         {"fg": s:norm, "bg": s:bg_dark})       " todo
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:bg_subtle})       " todo
call s:h("PmenuSbar",     {"fg": s:norm, "bg": s:bg_subtle})       " todo
call s:h("PmenuThumb",    {"fg": s:norm, "bg": s:bg_subtle})       " todo
call s:h("TabLine",       {"fg": s:papika_blue,   "bg": s:pure_white})       " todo
call s:h("TabLineSel",    {"fg": s:pure_white, "bg": s:abyssal_black, "gui": "bold", "cterm": "bold"})       " todo
call s:h("TabLineFill",   {"fg": s:soft_gray, "bg": s:pure_white})       " todo
call s:h("CursorColumn",  {"bg": s:bg_subtle})       " todo
call s:h("CursorLine",    {"bg": s:bg_subtle})       " todo
call s:h("ColorColumn",   {"bg": s:bg_subtle})       " todo

" remainder of syntax highlighting
call s:h("MatchParen",    {"bg": s:bg_subtle, "fg": s:yayaka_purple, "gui": "bold", "cterm": "bold"})       " todo
call s:h("qfLineNr",      {"fg": s:medium_gray})       " todo

" hi helpHyperTextJump guifg=#5FAFD7 ctermfg=74

" HTML syntax
hi! link htmlTag          Special
hi! link htmlEndTag       htmlTag

hi! link htmlTagName      KeyWord
" html5 tags show up as htmlTagN
hi! link htmlTagN         Keyword

" HTML content
call s:h("htmlH1",        {"fg": s:head_a, "gui": "bold,italic", "cterm": "bold"     })
call s:h("htmlH2",        {"fg": s:head_a, "gui": "bold"       , "cterm": "bold"     })
call s:h("htmlH3",        {"fg": s:head_b, "gui": "italic"     , "cterm": "italic"   })
call s:h("htmlH4",        {"fg": s:head_b, "gui": "italic"     , "cterm": "italic"   })
call s:h("htmlH5",        {"fg": s:head_c                                            })
call s:h("htmlH6",        {"fg": s:head_c                                            })
call s:h("htmlLink",      {"fg": s:papika_blue  , "gui": "underline"  , "cterm": "underline"})
call s:h("htmlItalic",    {                "gui": "italic"     , "cterm": "italic"   })
call s:h("htmlBold",      {                "gui": "bold"       , "cterm": "bold"     })
call s:h("htmlBoldItalic",{                "gui": "bold,italic", "cterm": "bold"     })
" hi htmlString     guifg=#87875f guibg=NONE gui=NONE        ctermfg=101 ctermbg=NONE cterm=NONE

" tpope/vim-markdown
call s:h("markdownBlockquote",          {"fg": s:norm})
call s:h("markdownBold",                {"fg": s:norm  , "gui": "bold"       , "cterm": "bold"  })
call s:h("markdownBoldItalic",          {"fg": s:norm  , "gui": "bold,italic", "cterm": "bold"  })
call s:h("markdownEscape",              {"fg": s:norm})
call s:h("markdownH1",                  {"fg": s:head_a, "gui": "bold,italic", "cterm": "bold"  })
call s:h("markdownH2",                  {"fg": s:head_a, "gui": "bold"       , "cterm": "bold"  })
call s:h("markdownH3",                  {"fg": s:head_a, "gui": "italic"     , "cterm": "italic"})
call s:h("markdownH4",                  {"fg": s:head_a, "gui": "italic"     , "cterm": "italic"})
call s:h("mckarkdownH5",                  {"fg": s:head_a})
call s:h("markdownH6",                  {"fg": s:head_a})
call s:h("markdownHeadingDelimiter",    {"fg": s:norm})
call s:h("markdownHeadingRule",         {"fg": s:norm})
call s:h("markdownId",                  {"fg": s:medium_gray})
call s:h("markdownIdDeclaration",       {"fg": s:norm_subtle})
call s:h("markdownItalic",              {"fg": s:norm  , "gui": "italic"     , "cterm": "italic"})
call s:h("markdownLinkDelimiter",       {"fg": s:medium_gray})
call s:h("markdownLinkText",            {"fg": s:norm})
call s:h("markdownLinkTextDelimiter",   {"fg": s:medium_gray})
call s:h("markdownListMarker",          {"fg": s:norm})
call s:h("markdownOrderedListMarker",   {"fg": s:norm})
call s:h("markdownRule",                {"fg": s:norm})
call s:h("markdownUrl",                 {"fg": s:medium_gray, "gui": "underline", "cterm": "underline"})
call s:h("markdownUrlDelimiter",        {"fg": s:medium_gray})
call s:h("markdownUrlTitle",            {"fg": s:norm})
call s:h("markdownUrlTitleDelimiter",   {"fg": s:medium_gray})
call s:h("markdownCode",                {"fg": s:norm})
call s:h("markdownCodeDelimiter",       {"fg": s:norm})

" plasticboy/vim-markdown
call s:h("mkdBlockQuote",               {"fg": s:norm})
call s:h("mkdDelimiter",                {"fg": s:medium_gray})
call s:h("mkdID",                       {"fg": s:medium_gray})
call s:h("mkdLineContinue",             {"fg": s:norm})
call s:h("mkdLink",                     {"fg": s:norm})
call s:h("mkdLinkDef",                  {"fg": s:medium_gray})
call s:h("mkdListItem",                 {"fg": s:norm})
call s:h("mkdNonListItemBlock",         {"fg": s:norm})  " bug in syntax?
call s:h("mkdRule",                     {"fg": s:norm})
call s:h("mkdUrl",                      {"fg": s:medium_gray, "gui": "underline", "cterm": "underline"})
call s:h("mkdCode",                     {"fg": s:norm})
call s:h("mkdIndentCode",               {"fg": s:norm})

" gabrielelana/vim-markdown
call s:h("markdownBlockquoteDelimiter", {"fg": s:norm})
call s:h("markdownInlineDelimiter",     {"fg": s:norm})
call s:h("markdownItemDelimiter",       {"fg": s:norm})
call s:h("markdownLinkReference",       {"fg": s:medium_gray})
call s:h("markdownLinkText",            {"fg": s:norm})
call s:h("markdownLinkTextContainer",   {"fg": s:medium_gray})
call s:h("markdownLinkUrl",             {"fg": s:medium_gray, "gui": "underline", "cterm": "underline"})
call s:h("markdownLinkUrlContainer",    {"fg": s:medium_gray})
call s:h("markdownFencedCodeBlock",     {"fg": s:norm})
call s:h("markdownInlineCode",          {"fg": s:norm})

" mattly/vim-markdown-enhancements
call s:h("mmdFootnoteDelimiter",        {"fg": s:medium_gray})
call s:h("mmdFootnoteMarker",           {"fg": s:norm})
call s:h("mmdTableAlign",               {"fg": s:norm})
call s:h("mmdTableDelimiter",           {"fg": s:norm})
call s:h("mmdTableHeadDelimiter",       {"fg": s:norm})
call s:h("mmdTableHeader",              {"fg": s:norm})
call s:h("mmdTableCaptionDelimiter",    {"fg": s:norm})
call s:h("mmdTableCaption",             {"fg": s:norm})

" Textile content
" https://github.com/timcharper/textile.vim/blob/master/syntax/textile.vim
"call s:h("txtBold",                {"fg": s:norm  , "gui": "bold"       , "cterm": "bold"  })
"call s:h("txtEmphasis",            {"fg": s:norm  , "gui": "italic"     , "cterm": "italic"})

" XML content
hi! link xmlTag                     htmlTag
hi! link xmlEndTag                  xmlTag
hi! link xmlTagName                 htmlTagName

" Signify, git-gutter
hi link SignifySignAdd              LineNr
hi link SignifySignDelete           LineNr
hi link SignifySignChange           LineNr
call s:h("GitGutterAdd",{"fg": s:yayaka_green})
call s:h("GitGutterDelete",{"fg": s:cocona_pink})
call s:h("GitGutterChange",{"fg": s:flipflap_yellow})
call s:h("GitGutterChangeDelete",{"fg": s:cocona_pink})

"nvim terminal colors
let g:terminal_color_0 = s:bg_dark.gui
let g:terminal_color_1 = s:cocona_pink.gui
let g:terminal_color_2 = s:yayaka_green.gui
let g:terminal_color_3 = s:flipflap_yellow.gui
let g:terminal_color_4 = s:papika_blue.gui
let g:terminal_color_5 = s:yayaka_purple.gui
let g:terminal_color_6 = s:flipflap_cyan.gui
let g:terminal_color_7 = s:clouds.gui
let g:terminal_color_8 = s:bg_subtle.gui
let g:terminal_color_9 = s:cocona_pink_deeper.gui
let g:terminal_color_10 = s:yayaka_green_deeper.gui
let g:terminal_color_11 = s:flipflap_gold.gui
let g:terminal_color_12 = s:papika_blue_deeper.gui
let g:terminal_color_13 = s:dark_purple.gui
let g:terminal_color_14 = s:pure_seafoam.gui
let g:terminal_color_15 = s:dark_clouds.gui