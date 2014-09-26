" Vim color file - jack_normal
" Generated by http://bytefluent.com/vivify 2014-09-26
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "jack_normal"

hi IncSearch guifg=#c5bf89 guibg=#000000 guisp=#000000 gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi WildMenu guifg=#66d9f0 guibg=#000000 guisp=#000000 gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi SignColumn guifg=#a7e32e guibg=#232526 guisp=#232526 gui=NONE ctermfg=112 ctermbg=235 cterm=NONE
hi SpecialComment guifg=#475558 guibg=NONE guisp=NONE gui=bold ctermfg=240 ctermbg=NONE cterm=bold
hi Typedef guifg=#e81e79 guibg=NONE guisp=NONE gui=NONE ctermfg=161 ctermbg=NONE cterm=NONE
hi Title guifg=#f05b39 guibg=NONE guisp=NONE gui=NONE ctermfg=209 ctermbg=NONE cterm=NONE
hi Folded guifg=#475558 guibg=#000000 guisp=#000000 gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE
hi PreCondit guifg=#a7e32e guibg=NONE guisp=NONE gui=bold ctermfg=112 ctermbg=NONE cterm=bold
hi Include guifg=#a7e32e guibg=NONE guisp=NONE gui=NONE ctermfg=112 ctermbg=NONE cterm=NONE
"hi TabLineSel -- no settings --
hi StatusLineNC guifg=#818181 guibg=#080808 guisp=#080808 gui=NONE ctermfg=8 ctermbg=232 cterm=NONE
"hi CTagsMember -- no settings --
hi NonText guifg=#bcbcbc guibg=#3B3A32 guisp=#3B3A32 gui=NONE ctermfg=250 ctermbg=237 cterm=NONE
"hi CTagsGlobalConstant -- no settings --
hi DiffText guifg=NONE guibg=#4C4745 guisp=#4C4745 gui=bold,italic ctermfg=NONE ctermbg=239 cterm=bold
hi ErrorMsg guifg=#e0246c guibg=NONE guisp=NONE gui=NONE ctermfg=161 ctermbg=NONE cterm=NONE
hi Ignore guifg=#818181 guibg=#272822 guisp=#272822 gui=NONE ctermfg=8 ctermbg=235 cterm=NONE
hi Debug guifg=#bca2a2 guibg=NONE guisp=NONE gui=bold ctermfg=138 ctermbg=NONE cterm=bold
hi PMenuSbar guifg=NONE guibg=#080808 guisp=#080808 gui=NONE ctermfg=NONE ctermbg=232 cterm=NONE
hi Identifier guifg=#d17197 guibg=NONE guisp=NONE gui=NONE ctermfg=175 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#fa2674 guibg=NONE guisp=NONE gui=bold ctermfg=197 ctermbg=NONE cterm=bold
hi Conditional guifg=#fa2674 guibg=NONE guisp=NONE gui=bold ctermfg=197 ctermbg=NONE cterm=bold
hi StorageClass guifg=#fe961f guibg=NONE guisp=NONE gui=italic ctermfg=208 ctermbg=NONE cterm=NONE
hi Todo guifg=#ffffff guibg=#272822 guisp=#272822 gui=bold ctermfg=15 ctermbg=235 cterm=bold
hi Special guifg=NONE guibg=NONE guisp=NONE gui=italic ctermfg=NONE ctermbg=NONE cterm=NONE
hi LineNr guifg=#757175 guibg=#302f2a guisp=#302f2a gui=NONE ctermfg=243 ctermbg=236 cterm=NONE
hi StatusLine guifg=#ffffff guibg=#0c4d02 guisp=#0c4d02 gui=NONE ctermfg=15 ctermbg=22 cterm=NONE
hi Normal guifg=#ffffff guibg=#212121 guisp=#212121 gui=NONE ctermfg=15 ctermbg=234 cterm=NONE
hi Label guifg=#e6db74 guibg=NONE guisp=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
"hi CTagsImport -- no settings --
hi PMenuSel guifg=NONE guibg=#808080 guisp=#808080 gui=NONE ctermfg=NONE ctermbg=8 cterm=NONE
hi Search guifg=#ffffff guibg=#455354 guisp=#455354 gui=NONE ctermfg=15 ctermbg=240 cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Statement guifg=#fa2674 guibg=NONE guisp=NONE gui=bold ctermfg=197 ctermbg=NONE cterm=bold
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment guifg=#474747 guibg=NONE guisp=NONE gui=NONE ctermfg=238 ctermbg=NONE cterm=NONE
hi Character guifg=#e6db74 guibg=NONE guisp=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
hi Float guifg=#ad81ff guibg=NONE guisp=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
hi Number guifg=#ad81ff guibg=NONE guisp=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
hi Boolean guifg=#ad81ff guibg=NONE guisp=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
hi Operator guifg=#f06c9f guibg=NONE guisp=NONE gui=NONE ctermfg=211 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#3E3D32 guisp=#3E3D32 gui=bold ctermfg=NONE ctermbg=237 cterm=bold
"hi Union -- no settings --
"hi TabLineFill -- no settings --
hi Question guifg=#f068a9 guibg=NONE guisp=NONE gui=NONE ctermfg=205 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#ffffff guibg=#333333 guisp=#333333 gui=bold ctermfg=15 ctermbg=236 cterm=bold
"hi VisualNOS -- no settings --
hi DiffDelete guifg=#960050 guibg=#1E0010 guisp=#1E0010 gui=NONE ctermfg=89 ctermbg=53 cterm=NONE
hi ModeMsg guifg=#e6db74 guibg=NONE guisp=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#3E3D32 guisp=#3E3D32 gui=NONE ctermfg=NONE ctermbg=237 cterm=NONE
hi Define guifg=#db287e guibg=NONE guisp=NONE gui=NONE ctermfg=161 ctermbg=NONE cterm=NONE
hi Function guifg=#16e096 guibg=NONE guisp=NONE gui=NONE ctermfg=42 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#475558 guibg=#000000 guisp=#000000 gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE
hi PreProc guifg=#d1262e guibg=NONE guisp=NONE gui=bold ctermfg=160 ctermbg=NONE cterm=bold
"hi EnumerationName -- no settings --
hi Visual guifg=#ffffff guibg=#9e5e0f guisp=#9e5e0f gui=NONE ctermfg=15 ctermbg=130 cterm=NONE
hi MoreMsg guifg=#e6db74 guibg=NONE guisp=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
"hi SpellCap -- no settings --
hi VertSplit guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi Exception guifg=#a7e32e guibg=NONE guisp=NONE gui=bold ctermfg=112 ctermbg=NONE cterm=bold
hi Keyword guifg=#fa2674 guibg=NONE guisp=NONE gui=bold ctermfg=197 ctermbg=NONE cterm=bold
hi Type guifg=#66d9f0 guibg=NONE guisp=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi DiffChange guifg=#8a817e guibg=#4C4745 guisp=#4C4745 gui=NONE ctermfg=245 ctermbg=239 cterm=NONE
hi Cursor guifg=#1a1a1a guibg=#F8F8F0 guisp=#F8F8F0 gui=NONE ctermfg=234 ctermbg=230 cterm=NONE
"hi SpellLocal -- no settings --
hi Error guifg=#ffffff guibg=#b5367a guisp=#b5367a gui=NONE ctermfg=15 ctermbg=132 cterm=NONE
hi PMenu guifg=#e0489e guibg=#000000 guisp=#000000 gui=NONE ctermfg=169 ctermbg=NONE cterm=NONE
hi SpecialKey guifg=#66d9f0 guibg=NONE guisp=NONE gui=italic ctermfg=81 ctermbg=NONE cterm=NONE
hi Constant guifg=#ad81ff guibg=NONE guisp=NONE gui=bold ctermfg=141 ctermbg=NONE cterm=bold
"hi DefinedName -- no settings --
hi Tag guifg=#fa2674 guibg=NONE guisp=NONE gui=italic ctermfg=197 ctermbg=NONE cterm=NONE
hi String guifg=#e6db74 guibg=NONE guisp=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=#66d9f0 guibg=NONE guisp=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi MatchParen guifg=#1a1a1a guibg=#FD971F guisp=#FD971F gui=bold ctermfg=234 ctermbg=208 cterm=bold
"hi LocalVariable -- no settings --
hi Repeat guifg=#fa2674 guibg=NONE guisp=NONE gui=bold ctermfg=197 ctermbg=NONE cterm=bold
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
hi Directory guifg=#a7e32e guibg=NONE guisp=NONE gui=bold ctermfg=112 ctermbg=NONE cterm=bold
hi Structure guifg=#c92f62 guibg=NONE guisp=NONE gui=NONE ctermfg=168 ctermbg=NONE cterm=NONE
hi Macro guifg=#c5bf89 guibg=NONE guisp=NONE gui=italic ctermfg=186 ctermbg=NONE cterm=NONE
hi Underlined guifg=#818181 guibg=NONE guisp=NONE gui=underline ctermfg=8 ctermbg=NONE cterm=underline
hi DiffAdd guifg=NONE guibg=#13354A guisp=#13354A gui=NONE ctermfg=NONE ctermbg=23 cterm=NONE
"hi TabLine -- no settings --
hi cursorim guifg=#240d1e guibg=#91275e guisp=#91275e gui=NONE ctermfg=235 ctermbg=89 cterm=NONE
"hi clear -- no settings --
hi htmlitalic guifg=#d192d1 guibg=#201720 guisp=#201720 gui=italic ctermfg=176 ctermbg=234 cterm=NONE
hi htmlboldunderlineitalic guifg=#d192d1 guibg=#201720 guisp=#201720 gui=bold,italic,underline ctermfg=176 ctermbg=234 cterm=bold,underline
hi htmlbolditalic guifg=#d192d1 guibg=#201720 guisp=#201720 gui=bold,italic ctermfg=176 ctermbg=234 cterm=bold
hi lcursor guifg=NONE guibg=#b1ffff guisp=#b1ffff gui=NONE ctermfg=NONE ctermbg=159 cterm=NONE
hi htmlunderlineitalic guifg=#d192d1 guibg=#201720 guisp=#201720 gui=italic,underline ctermfg=176 ctermbg=234 cterm=underline
hi htmlbold guifg=#d192d1 guibg=#201720 guisp=#201720 gui=bold ctermfg=176 ctermbg=234 cterm=bold
hi htmlboldunderline guifg=#d192d1 guibg=#201720 guisp=#201720 gui=bold,underline ctermfg=176 ctermbg=234 cterm=bold,underline
hi htmlunderline guifg=#d192d1 guibg=#201720 guisp=#201720 gui=underline ctermfg=176 ctermbg=234 cterm=underline
"hi default -- no settings --