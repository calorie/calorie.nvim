local lush = require("lush")
local hsl = lush.hsl
local hsluv = lush.hsluv
local theme = lush(function()
  return {
    SpecialKey                 { fg="#808080", bg="#343434", }, -- SpecialKey     xxx ctermfg=81 guifg=#808080 guibg=#343434
    TermCursor                 { gui="reverse", }, -- TermCursor     xxx cterm=reverse gui=reverse
    NonText                    { fg="#808080", bg="#303030", }, -- NonText        xxx ctermfg=12 guifg=#808080 guibg=#303030
    Whitespace                 { NonText }, -- Whitespace     xxx links to NonText
    Directory                  { fg="cyan", }, -- Directory      xxx ctermfg=159 guifg=Cyan
    ErrorMsg                   { fg="white", bg="red", }, -- ErrorMsg       xxx ctermfg=15 ctermbg=1 guifg=White guibg=Red
    IncSearch                  { gui="reverse", }, -- IncSearch      xxx cterm=reverse gui=reverse
    Search                     { fg="black", bg="yellow", }, -- Search         xxx ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
    QuickFixLine               { Search }, -- QuickFixLine   xxx links to Search
    Substitute                 { Search }, -- Substitute     xxx links to Search
    MoreMsg                    { fg="seagreen", gui="bold", }, -- MoreMsg        xxx ctermfg=121 gui=bold guifg=SeaGreen
    ModeMsg                    { gui="bold", }, -- ModeMsg        xxx cterm=bold gui=bold
    LineNr                     { fg="#857b6f", bg="#000000", }, -- LineNr         xxx ctermfg=242 guifg=#857b6f guibg=#000000
    CursorLineNr               { fg="yellow", gui="bold", }, -- CursorLineNr   xxx cterm=underline ctermfg=11 gui=bold guifg=Yellow
    Question                   { fg="green", gui="bold", }, -- Question       xxx ctermfg=121 gui=bold guifg=Green
    StatusLine                 { fg="#f6f3e8", bg="#444444", }, -- StatusLine     xxx cterm=bold,reverse guifg=#f6f3e8 guibg=#444444
    MsgSeparator               { StatusLine }, -- MsgSeparator   xxx links to StatusLine
    StatusLineNC               { fg="#857b6f", bg="#444444", }, -- StatusLineNC   xxx cterm=reverse guifg=#857b6f guibg=#444444
    VertSplit                  { fg="#444444", bg="#444444", }, -- VertSplit      xxx cterm=reverse guifg=#444444 guibg=#444444
    WinSeparator               { VertSplit }, -- WinSeparator   xxx links to VertSplit
    Title                      { fg="#f6f3e8", gui="bold", }, -- Title          xxx ctermfg=225 gui=bold guifg=#f6f3e8
    TSTitle                    { Title }, -- TSTitle        xxx links to Title
    Visual                     { fg="#f6f3e8", bg="#444444", }, -- Visual         xxx ctermbg=242 guifg=#f6f3e8 guibg=#444444
    WarningMsg                 { fg="red", }, -- WarningMsg     xxx ctermfg=224 guifg=Red
    TSDanger                   { WarningMsg }, -- TSDanger       xxx links to WarningMsg
    WildMenu                   { fg="black", bg="yellow", }, -- WildMenu       xxx ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
    Folded                     { fg="#a0a8b0", bg="#384048", }, -- Folded         xxx ctermfg=14 ctermbg=242 guifg=#a0a8b0 guibg=#384048
    FoldColumn                 { fg="cyan", bg="grey", }, -- FoldColumn     xxx ctermfg=14 ctermbg=242 guifg=Cyan guibg=Grey
    CursorLineFold             { FoldColumn }, -- CursorLineFold xxx links to FoldColumn
    DiffAdd                    { bg="darkblue", }, -- DiffAdd        xxx ctermbg=4 guibg=DarkBlue
    DiffChange                 { bg="darkmagenta", }, -- DiffChange     xxx ctermbg=5 guibg=DarkMagenta
    DiffDelete                 { fg="blue", bg="darkcyan", gui="bold", }, -- DiffDelete     xxx ctermfg=12 ctermbg=6 gui=bold guifg=Blue guibg=DarkCyan
    DiffText                   { bg="red", gui="bold", }, -- DiffText       xxx cterm=bold ctermbg=9 gui=bold guibg=Red
    SignColumn                 { fg="cyan", bg="grey", }, -- SignColumn     xxx ctermfg=14 ctermbg=242 guifg=Cyan guibg=Grey
    CursorLineSign             { SignColumn }, -- CursorLineSign xxx links to SignColumn
    Conceal                    { fg="grey30", }, -- Conceal        xxx ctermfg=239 guifg=Grey30
    SpellBad                   { sp="red", gui="undercurl", }, -- SpellBad       xxx ctermbg=9 gui=undercurl guisp=Red
    SpellCap                   { sp="blue", gui="undercurl", }, -- SpellCap       xxx ctermbg=12 gui=undercurl guisp=Blue
    SpellRare                  { sp="magenta", gui="undercurl", }, -- SpellRare      xxx ctermbg=13 gui=undercurl guisp=Magenta
    SpellLocal                 { sp="cyan", gui="undercurl", }, -- SpellLocal     xxx ctermbg=14 gui=undercurl guisp=Cyan
    Pmenu                      { fg="#000000", bg="#999999", }, -- Pmenu          xxx ctermfg=0 ctermbg=255 guifg=#000000 guibg=#999999
    NormalFloat                { Pmenu }, -- NormalFloat    xxx links to Pmenu
    PmenuSel                   { fg="#3399ff", bg="#f0e68c", gui="reverse", }, -- PmenuSel       xxx cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c
    PmenuSbar                  { fg="#000000", bg="#ffffff", }, -- PmenuSbar      xxx ctermfg=0 ctermbg=255 guifg=#000000 guibg=#FFFFFF
    PmenuThumb                 { bg="white", }, -- PmenuThumb     xxx ctermbg=15 guibg=White
    TabLine                    { bg="darkgrey", gui="underline", }, -- TabLine        xxx cterm=underline ctermfg=15 ctermbg=242 gui=underline guibg=DarkGrey
    TabLineSel                 { gui="bold", }, -- TabLineSel     xxx cterm=bold gui=bold
    TabLineFill                { gui="reverse", }, -- TabLineFill    xxx cterm=reverse gui=reverse
    CursorColumn               { bg="#2d2d2d", }, -- CursorColumn   xxx ctermbg=242 guibg=#2d2d2d
    CursorLine                 { bg="#333435", }, -- CursorLine     xxx ctermbg=237 guibg=#333435
    ColorColumn                { bg="darkred", }, -- ColorColumn    xxx ctermbg=1 guibg=DarkRed
    Cursor                     { bg="#656565", }, -- Cursor         xxx guibg=#656565
    lCursor                    { fg="bg", bg="fg", }, -- lCursor        xxx guifg=bg guibg=fg
    Normal                     { fg="white", bg="#242424", }, -- Normal         xxx ctermfg=15 guifg=#f6f3e8 guibg=#242424
    Error                      { fg="white", bg="red", }, -- Error          xxx ctermfg=15 ctermbg=9 guifg=White guibg=Red
    Todo                       { fg="#8f8f8f", bg="yellow", }, -- Todo           xxx ctermfg=0 ctermbg=11 guifg=#8f8f8f guibg=Yellow
    TSWarning                  { Todo }, -- TSWarning      xxx links to Todo
    TSTodo                     { Todo }, -- TSTodo         xxx links to Todo
    String                     { fg="#95e454", }, -- String         xxx guifg=#95e454
    TSString                   { String }, -- TSString       xxx links to String
    TSStringRegex              { String }, -- TSStringRegex  xxx links to String
    TSLiteral                  { String }, -- TSLiteral      xxx links to String
    Constant                   { fg="#e5786d", }, -- Constant       xxx ctermfg=13 guifg=#e5786d
    Character                  { Constant }, -- Character      xxx links to Constant
    Boolean                    { Constant }, -- Boolean        xxx links to Constant
    TSConstant                 { Constant }, -- TSConstant     xxx links to Constant
    TSTextReference            { Constant }, -- TSTextReference xxx links to Constant
    Number                     { fg="#e5786d", }, -- Number         xxx guifg=#e5786d
    Float                      { Number }, -- Float          xxx links to Number
    TSNumber                   { Number }, -- TSNumber       xxx links to Number
    luaNumber                  { Number }, -- luaNumber      xxx links to Number
    Function                   { fg="#cae682", }, -- Function       xxx guifg=#cae682
    TSFunction                 { Function }, -- TSFunction     xxx links to Function
    TSMethod                   { Function }, -- TSMethod       xxx links to Function
    Identifier                 { fg="#cae682", }, -- Identifier     xxx cterm=bold ctermfg=14 guifg=#cae682
    TSField                    { Identifier }, -- TSField        xxx links to Identifier
    TSParameter                { Identifier }, -- TSParameter    xxx links to Identifier
    TSProperty                 { Identifier }, -- TSProperty     xxx links to Identifier
    TSSymbol                   { Identifier }, -- TSSymbol       xxx links to Identifier
    Statement                  { fg="#8ac6f2", }, -- Statement      xxx ctermfg=11 guifg=#8ac6f2
    Conditional                { Statement }, -- Conditional    xxx links to Statement
    Repeat                     { Statement }, -- Repeat         xxx links to Statement
    Label                      { Statement }, -- Label          xxx links to Statement
    Operator                   { Statement }, -- Operator       xxx links to Statement
    Exception                  { Statement }, -- Exception      xxx links to Statement
    Keyword                    { fg="#8ac6f2", }, -- Keyword        xxx guifg=#8ac6f2
    TSKeyword                  { Keyword }, -- TSKeyword      xxx links to Keyword
    TSKeywordFunction          { Keyword }, -- TSKeywordFunction xxx links to Keyword
    PreProc                    { fg="#e5786d", }, -- PreProc        xxx ctermfg=81 guifg=#e5786d
    Include                    { PreProc }, -- Include        xxx links to PreProc
    Define                     { PreProc }, -- Define         xxx links to PreProc
    Macro                      { PreProc }, -- Macro          xxx links to PreProc
    PreCondit                  { PreProc }, -- PreCondit      xxx links to PreProc
    TSPreProc                  { PreProc }, -- TSPreProc      xxx links to PreProc
    TSAttribute                { PreProc }, -- TSAttribute    xxx links to PreProc
    TSAnnotation               { PreProc }, -- TSAnnotation   xxx links to PreProc
    Type                       { fg="#cae682", }, -- Type           xxx ctermfg=121 guifg=#cae682
    StorageClass               { Type }, -- StorageClass   xxx links to Type
    Structure                  { Type }, -- Structure      xxx links to Type
    Typedef                    { Type }, -- Typedef        xxx links to Type
    TSTypeBuiltin              { Type }, -- TSTypeBuiltin  xxx links to Type
    TSTypeQualifier            { Type }, -- TSTypeQualifier xxx links to Type
    TSEnvironmentName          { Type }, -- TSEnvironmentName xxx links to Type
    TSType                     { Type }, -- TSType         xxx links to Type
    Special                    { fg="#e7f6da", }, -- Special        xxx ctermfg=224 guifg=#e7f6da
    Tag                        { Special }, -- Tag            xxx links to Special
    SpecialChar                { Special }, -- SpecialChar    xxx links to Special
    Delimiter                  { Special }, -- Delimiter      xxx links to Special
    SpecialComment             { Special }, -- SpecialComment xxx links to Special
    Debug                      { Special }, -- Debug          xxx links to Special
    TSVariableBuiltin          { Special }, -- TSVariableBuiltin xxx links to Special
    TSConstBuiltin             { Special }, -- TSConstBuiltin xxx links to Special
    TSConstructor              { Special }, -- TSConstructor  xxx links to Special
    TSFuncBuiltin              { Special }, -- TSFuncBuiltin  xxx links to Special
    TSMath                     { Special }, -- TSMath         xxx links to Special
    DiagnosticError            { fg="red", }, -- DiagnosticError xxx ctermfg=1 guifg=Red
    DiagnosticVirtualTextError { DiagnosticError }, -- DiagnosticVirtualTextError xxx links to DiagnosticError
    DiagnosticFloatingError    { DiagnosticError }, -- DiagnosticFloatingError xxx links to DiagnosticError
    DiagnosticSignError        { DiagnosticError }, -- DiagnosticSignError xxx links to DiagnosticError
    DiagnosticWarn             { fg="orange", }, -- DiagnosticWarn xxx ctermfg=3 guifg=Orange
    DiagnosticVirtualTextWarn  { DiagnosticWarn }, -- DiagnosticVirtualTextWarn xxx links to DiagnosticWarn
    DiagnosticFloatingWarn     { DiagnosticWarn }, -- DiagnosticFloatingWarn xxx links to DiagnosticWarn
    DiagnosticSignWarn         { DiagnosticWarn }, -- DiagnosticSignWarn xxx links to DiagnosticWarn
    DiagnosticInfo             { fg="lightblue", }, -- DiagnosticInfo xxx ctermfg=4 guifg=LightBlue
    DiagnosticVirtualTextInfo  { DiagnosticInfo }, -- DiagnosticVirtualTextInfo xxx links to DiagnosticInfo
    DiagnosticFloatingInfo     { DiagnosticInfo }, -- DiagnosticFloatingInfo xxx links to DiagnosticInfo
    DiagnosticSignInfo         { DiagnosticInfo }, -- DiagnosticSignInfo xxx links to DiagnosticInfo
    DiagnosticHint             { fg="lightgrey", }, -- DiagnosticHint xxx ctermfg=7 guifg=LightGrey
    DiagnosticVirtualTextHint  { DiagnosticHint }, -- DiagnosticVirtualTextHint xxx links to DiagnosticHint
    DiagnosticFloatingHint     { DiagnosticHint }, -- DiagnosticFloatingHint xxx links to DiagnosticHint
    DiagnosticSignHint         { DiagnosticHint }, -- DiagnosticSignHint xxx links to DiagnosticHint
    DiagnosticUnderlineError   { sp="red", gui="underline", }, -- DiagnosticUnderlineError xxx cterm=underline gui=underline guisp=Red
    DiagnosticUnderlineWarn    { sp="orange", gui="underline", }, -- DiagnosticUnderlineWarn xxx cterm=underline gui=underline guisp=Orange
    DiagnosticUnderlineInfo    { sp="lightblue", gui="underline", }, -- DiagnosticUnderlineInfo xxx cterm=underline gui=underline guisp=LightBlue
    DiagnosticUnderlineHint    { sp="lightgrey", gui="underline", }, -- DiagnosticUnderlineHint xxx cterm=underline gui=underline guisp=LightGrey
    MatchParen                 { fg="#f6f3e8", bg="#857b6f", gui="bold", }, -- MatchParen     xxx ctermbg=6 gui=bold guifg=#f6f3e8 guibg=#857b6f
    Comment                    { fg="#99968b", }, -- Comment        xxx ctermfg=14 guifg=#99968b
    TSComment                  { Comment }, -- TSComment      xxx links to Comment
    Underlined                 { fg="#80a0ff", gui="underline", }, -- Underlined     xxx cterm=underline ctermfg=81 gui=underline guifg=#80a0ff
    Ignore                     { fg="bg", }, -- Ignore         xxx ctermfg=0 guifg=bg
    EndOfBuffer                { Ignore }, -- EndOfBuffer    xxx links to Ignore
    TSNone                     { }, -- TSNone         xxx cterm= gui=
    TSText                     { TSNone }, -- TSText         xxx links to TSNone
    TSStrong                   { gui="bold", }, -- TSStrong       xxx cterm=bold gui=bold
    TSEmphasis                 { gui="italic", }, -- TSEmphasis     xxx cterm=italic gui=italic
    TSUnderline                { gui="underline", }, -- TSUnderline    xxx cterm=underline gui=underline
    TSStrike                   { gui="strikethrough", }, -- TSStrike       xxx cterm=strikethrough gui=strikethrough
  }
end)
return theme
