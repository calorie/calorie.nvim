local lush = require("lush")
local theme = lush(function()
  local base = '#191724'
  local surface = '#25232e'
  local overlay = '#26233a'
  local muted = '#6e6a86'
  local subtle = '#908caa'
  local text = '#c9c8db'
  local love = '#d66B7f'
  local gold = '#f3cc95'
  local rose = '#ebbcba'
  local pine = '#31748f'
  local foam = '#9ccfd8'
  local iris = '#c4a7e7'
  local blue_gray = '#8ac6f2'
  local highlight_low = '#21202e'
  local highlight_med = '#403d52'
  local highlight_high = '#524f67'
  local none = 'NONE'

  return {
    ColorColumn     { bg = overlay }, -- Columns set with 'colorcolumn'
    Conceal         { bg = none, }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor          { bg = '#656565', }, -- Character under the cursor
    -- lCursor         { fg = 'bg', bg = 'fg' }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM        { }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn    { bg = highlight_low, }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine      { bg = highlight_low, }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorLineNr    { fg = text }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    Directory       { fg = foam, }, -- Directory names (and other special names in listings)
    DiffAdd         { bg = foam, blend = 50 }, -- Diff mode: Added line |diff.txt|
    DiffChange      { bg = overlay, }, -- Diff mode: Changed line |diff.txt|
    DiffDelete      { bg = love, blend = 50, }, -- Diff mode: Deleted line |diff.txt|
    DiffText        { bg = rose, blend = 50, }, -- Diff mode: Changed text within a changed line |diff.txt|
    Ignore          { fg = 'bg' }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    EndOfBuffer     { Ignore }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor      { gui = 'reverse', }, -- Cursor in a focused terminal
    -- TermCursorNC { }, -- Cursor in an unfocused terminal
    ErrorMsg        { fg = love, bold = true, }, -- Error messages on the command line
    VertSplit       { fg = highlight_med }, -- Column separating vertically split windows
    Folded          { fg = text, bg = surface, }, -- Line used for closed folds
    FoldColumn      { fg = muted }, -- 'foldcolumn'
    SignColumn      { fg = text }, -- Column where |signs| are displayed
    IncSearch       { fg = base, bg = text }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch       { IncSearch },
    Search          { fg = base, bg = text }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    Substitute      { Search }, -- |:substitute| replacement text highlighting
    LineNr          { fg = muted }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    MatchParen      { fg = text, bg = highlight_med }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg         { fg = subtle }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea         { }, -- Area for messages and cmdline
    StatusLine      { fg = subtle, bg = surface, }, -- Status line of current window
    MsgSeparator    { StatusLine }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg         { fg = iris }, -- |more-prompt|
    NonText         { fg = muted }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal          { fg = text, bg = base }, -- Normal text
    NormalNC        { fg = text, bg = base }, -- normal text in non-current windows
    NormalFloat     { fg = text, bg = surface }, -- Normal text in floating windows.
    Pmenu           { fg = subtle, bg = surface, }, -- Popup menu: Normal item.
    PmenuSel        { fg = text, bg = surface }, -- Popup menu: Selected item.
    PmenuSbar       { bg = highlight_low, }, -- Popup menu: Scrollbar.
    PmenuThumb      { bg = highlight_med, }, -- Popup menu: Thumb of the scrollbar.
    Question        { fg = gold }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine    { Search }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    SpecialKey      { fg = foam }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad        { sp = love, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap        { sp = subtle, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal      { sp = subtle, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare       { sp = subtle, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLineNC    { fg = muted, bg = base, }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    StatusLineTerm  { StatusLine },
    StatusLineTermNC { StatusLineNC },
    TabLine         { fg = subtle, bg = surface }, -- Tab pages line, not active tab page label
    TabLineFill     { bg = surface, }, -- Tab pages line, where there are no labels
    TabLineSel      { fg = text, bg = overlay }, -- Tab pages line, active tab page label
    Title           { fg = text }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual          { bg = highlight_med, }, -- Visual mode selection
    -- VisualNOS       { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg      { fg = love, }, -- Warning messages
    Whitespace      { NonText }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WinSeparator    { VertSplit }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu        { IncSearch }, -- Current match in 'wildmenu' completion

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = muted, }, -- Any comment

    Constant       { fg = gold, }, -- (*) Any constant
    String         { fg = text, }, -- A string constant: "this is a string"
    Character      { Constant }, -- A character constant: 'c', '\n'
    Number         { fg = text, }, -- A number constant: 234, 0xff
    Boolean        { Constant }, -- A boolean constant: TRUE, false
    Float          { Number }, -- A floating point constant: 2.3e10

    Identifier     { fg = text, }, -- (*) Any variable name
    Function       { fg = blue_gray, }, -- Function name (also: methods for classes)

    Statement      { fg = pine, }, -- (*) Any statement
    Conditional    { Statement }, -- if, then, else, endif, switch, etc.
    Repeat         { Statement }, -- for, do, while, etc.
    Label          { Statement }, -- case, default, etc.
    Operator       { Statement }, -- "sizeof", "+", "*", etc.
    Keyword        { fg = pine, }, -- any other keyword
    Exception      { Statement }, -- try, catch, throw

    PreProc        { fg = iris, }, -- (*) Generic Preprocessor
    Include        { PreProc }, -- Preprocessor #include
    Define         { PreProc }, -- Preprocessor #define
    Macro          { PreProc }, -- Same as Define
    PreCondit      { PreProc }, -- Preprocessor #if, #else, #endif, etc.

    Type           { fg = foam, }, -- (*) int, long, char, etc.
    StorageClass   { Type }, -- static, register, volatile, etc.
    Structure      { Type }, -- struct, union, enum, etc.
    Typedef        { Type }, -- A typedef

    Special        { fg = rose, }, -- (*) Any special symbol
    SpecialChar    { Special }, -- Special character in a constant
    Tag            { Special }, -- You can use CTRL-] on this
    Delimiter      { Special }, -- Character that needs attention
    SpecialComment { Special }, -- Special things inside a comment (e.g. '\n')
    Debug          { Special }, -- Debugging statements

    Underlined     { fg = iris, underline = true, }, -- Text that stands out, HTML links
    Error          { fg = love }, -- Any erroneous construct
    Todo           { fg = iris }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    LspReferenceText            { bg = highlight_med } , -- Used for highlighting "text" references
    LspReferenceRead            { bg = highlight_med } , -- Used for highlighting "read" references
    LspReferenceWrite           { bg = highlight_med } , -- Used for highlighting "write" references
    LspCodeLens                 { fg = subtle } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    LspCodeLensSeparator        { fg = highlight_high } , -- Used to color the seperator between two or more code lens.
    LspSignatureActiveParameter { bg = overlay } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = love, }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = gold, }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = foam, }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = iris, }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticVirtualTextError { DiagnosticError }, -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextWarn  { DiagnosticWarn }, -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextInfo  { DiagnosticInfo }, -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextHint  { DiagnosticHint }, -- Used for "Hint" diagnostic virtual text.
    DiagnosticUnderlineError   { sp = love, underline = true }, -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn    { sp = gold, underline = true }, -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo    { sp = foam, underline = true }, -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint    { sp = iris, underline = true }, -- Used to underline "Hint" diagnostics.
    DiagnosticFloatingError    { DiagnosticError }, -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    DiagnosticFloatingWarn     { DiagnosticWarn }, -- Used to color "Warn" diagnostic messages in diagnostics float.
    DiagnosticFloatingInfo     { DiagnosticInfo }, -- Used to color "Info" diagnostic messages in diagnostics float.
    DiagnosticFloatingHint     { DiagnosticHint }, -- Used to color "Hint" diagnostic messages in diagnostics float.
    DiagnosticSignError        { DiagnosticError }, -- Used for "Error" signs in sign column.
    DiagnosticSignWarn         { DiagnosticWarn }, -- Used for "Warn" signs in sign column.
    DiagnosticSignInfo         { DiagnosticInfo }, -- Used for "Info" signs in sign column.
    DiagnosticSignHint         { DiagnosticHint }, -- Used for "Hint" signs in sign column.

    -- Tree-Sitter syntax groups. Most link to corresponding
    -- vim syntax groups (e.g. TSKeyword  = > Keyword) by default.
    --
    -- See :h nvim-treesitter-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- TSAttribute             { PreProc }, -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    TSBoolean               { Boolean } , -- Boolean literals: `True` and `False` in Python.
    TSCharacter             { Character } , -- Character literals: `'a'` in C.
    -- TSCharacterSpecial      { } , -- Special characters.
    TSComment               { Comment }, -- Line comments and block comments.
    TSConditional           { Conditional } , -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    TSConstant              { fg = foam }, -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    TSConstBuiltin          { fg = love }, -- Built-in constant values: `nil` in Lua.
    -- TSConstMacro            { } , -- Constants defined by macros: `NULL` in C.
    TSConstructor           { fg = foam }, -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    -- TSDebug                 { } , -- Debugging statements.
    -- TSDefine                { } , -- Preprocessor #define statements.
    -- TSError                 { } , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    -- TSException             { } , -- Exception related keywords: `try`, `except`, `finally` in Python.
    TSField                 { fg = foam }, -- Object and struct fields.
    -- TSFloat                 { } , -- Floating-point number literals.
    TSFunction              { Function }, -- Function calls and definitions.
    TSFuncBuiltin           { fg = love }, -- Built-in functions: `print` in Lua.
    -- TSFuncMacro             { } , -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude               { } , -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    TSKeyword               { fg = pine }, -- Keywords that don't fit into other categories.
    -- TSKeywordFunction       { fg = pine }, -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    TSKeywordOperator       { fg = subtle } , -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    -- TSKeywordReturn         { } , -- Keywords like `return` and `yield`.
    TSLabel                 { fg = foam } , -- GOTO labels: `label:` in C, and `::label::` in Lua.
    -- TSMethod                { Function }, -- Method calls and definitions.
    -- TSNamespace             { } , -- Identifiers referring to modules and namespaces.
    -- TSNone                  { }, -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    TSNumber                { Number }, -- Numeric literals that don't fit into other categories.
    TSOperator              { fg = subtle } , -- Binary or unary operators: `+`, and also `->` and `*` in C.
    TSParameter             { Identifier }, -- Parameters of a function.
    -- TSParameterReference    { } , -- References to parameters of a function.
    -- TSPreProc               { PreProc }, -- Preprocessor #if, #else, #endif, etc.
    TSProperty              { fg = iris }, -- Same as `TSField`.
    TSPunctDelimiter        { fg = muted } , -- Punctuation delimiters: Periods, commas, semicolons, etc.
    TSPunctBracket          { fg = muted } , -- Brackets, braces, parentheses, etc.
    TSPunctSpecial          { fg = muted } , -- Special punctuation that doesn't fit into the previous categories.
    -- TSRepeat                { } , -- Keywords related to loops: `for`, `while`, etc.
    -- TSStorageClass          { } , -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
    TSString                { String }, -- String literals.
    -- TSStringRegex           { String }, -- Regular expression literals.
    TSStringEscape          { fg = pine } , -- Escape characters within a string: `\n`, `\t`, etc.
    TSStringSpecial         { TSString } , -- Strings with special meaning that don't fit into the previous categories.
    -- TSSymbol                { Identifier }, -- Identifiers referring to symbols or atoms.
    TSTag                   { fg = foam } , -- Tags like HTML tag names.
    -- TSTagAttribute          { } , -- HTML tag attributes.
    TSTagDelimiter          { fg = subtle } , -- Tag delimiters like `<` `>` `/`.
    TSText                  { fg = text }, -- Non-structured text. Like text in a markup language.
    TSStrong                { bold = true, }, -- Text to be represented in bold.
    TSEmphasis              { gui = 'italic', }, -- Text to be represented with emphasis.
    TSUnderline             { underline = true, }, -- Text to be represented with an underline.
    -- TSStrike                { gui = 'strikethrough', }, -- Strikethrough text.
    TSTitle                 { fg = iris, bold = true }, -- Text that is part of a title.
    -- TSLiteral               { String }, -- Literal or verbatim text.
    TSURI                   { Underlined }, -- URIs like hyperlinks or email addresses.
    -- TSMath                  { Special }, -- Math environments like LaTeX's `$ ... $`
    -- TSTextReference         { Constant }, -- Footnotes, text references, citations, etc.
    -- TSEnvironment           { } , -- Text environments of markup languages.
    TSEnvironmentName       { Type }, -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    -- TSNote                  { } , -- Text representation of an informational note.
    TSWarning               { Todo }, -- Text representation of a warning note.
    TSDanger                { WarningMsg }, -- Text representation of a danger note.
    TSType                  { Type }, -- Type (and class) definitions and annotations.
    -- TSTypeBuiltin           { Type }, -- Built-in types: `i32` in Rust.
    -- TSVariable              { } , -- Variable names that don't fit into other categories.
    TSVariableBuiltin       { fg = love }, -- Variable names defined by the language: `this` or `self` in Javascript.

    -- luka-reineke/indent-blankline.nvim
    IndentBlanklineChar { fg = muted },

    -- hrsh7th/nvim-cmp
    CmpItemAbbr           { fg = subtle },
    CmpItemAbbrDeprecated { fg = subtle, strikethrough = true },
    CmpItemAbbrMatch      { fg = text, bold = true },
    CmpItemAbbrMatchFuzzy { fg = text, bold = true },
    CmpItemKind           { fg = pine },
    CmpItemKindClass      { fg = foam },
    CmpItemKindFunction   { fg = pine },
    CmpItemKindInterface  { fg = foam },
    CmpItemKindMethod     { fg = pine },
    CmpItemKindSnippet    { fg = pine },
    CmpItemKindVariable   { fg = blue_gray },

    -- glepnir/lspsaga.nvim
    DefinitionCount               { fg = rose },
    DefinitionIcon                { fg = rose },
    DefintionPreviewTitle         { fg = rose, bold = true },
    LspFloatWinBorder             { fg = highlight_med },
    LspFloatWinNormal             { bg = base },
    LspSagaAutoPreview            { fg = subtle },
    LspSagaCodeActionBorder       { fg = highlight_med },
    LspSagaCodeActionContent      { fg = foam },
    LspSagaCodeActionTitle        { fg = gold, bold = true },
    LspSagaCodeActionTruncateLine { LspSagaCodeActionBorder },
    LspSagaDefPreviewBorder       { fg = highlight_med },
    LspSagaDiagnosticBorder       { fg = highlight_med },
    LspSagaDiagnosticHeader       { fg = gold, bold = true },
    LspSagaDiagnosticTruncateLine { LspSagaDiagnosticBorder },
    LspSagaHoverBorder            { fg = highlight_med },
    LspSagaDocTruncateLine        { LspSagaHoverBorder },
    LspSagaFinderSelection        { fg = gold },
    LspSagaLspFinderBorder        { fg = highlight_med },
    LspSagaRenameBorder           { fg = pine },
    LspSagaRenamePromptPrefix     { fg = love },
    LspSagaSignatureHelpBorder    { fg = pine },
    LspSagaShTruncateLine         { LspSagaSignatureHelpBorder },
    ReferencesCount               { fg = rose },
    ReferencesIcon                { fg = rose },
    SagaShadow                    { bg = overlay },
    TargetWord                    { fg = iris },

    -- nvim-telescope/telescope.nvim
    TelescopeBorder         { fg = highlight_med, bg = surface },
    TelescopeMatching       { fg = rose },
    TelescopeNormal         { fg = subtle, bg = surface },
    TelescopePreviewNormal  { fg = text, bg = surface },
    TelescopePromptNormal   { fg = text, bg = surface },
    TelescopePromptPrefix   { fg = subtle },
    TelescopeSelection      { fg = text, bg = overlay },
    TelescopeSelectionCaret { fg = rose, bg = overlay },
    TelescopeTitle          { fg = subtle },
  }
end)
return theme
