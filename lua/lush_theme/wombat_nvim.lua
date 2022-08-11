local lush = require("lush")
local hsl = lush.hsl
local hsluv = lush.hsluv
local theme = lush(function()
  return {
    ColorColumn                { bg="darkred", }, -- Columns set with 'colorcolumn'
    Conceal                    { fg="grey30", }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor                     { bg="#656565", }, -- Character under the cursor
    lCursor                    { fg="bg", bg="fg", }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn               { bg="#2d2d2d", }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine                 { bg="#333435", }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory                  { fg="cyan", }, -- Directory names (and other special names in listings)
    DiffAdd                    { bg="darkblue", }, -- Diff mode: Added line |diff.txt|
    DiffChange                 { bg="darkmagenta", }, -- Diff mode: Changed line |diff.txt|
    DiffDelete                 { fg="blue", bg="darkcyan", gui="bold", }, -- Diff mode: Deleted line |diff.txt|
    DiffText                   { bg="red", gui="bold", }, -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer                { Ignore }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor                 { gui="reverse", }, -- Cursor in a focused terminal
    -- TermCursorNC { }, -- Cursor in an unfocused terminal
    ErrorMsg                   { fg="white", bg="red", }, -- Error messages on the command line
    VertSplit                  { fg="#444444", bg="#444444", }, -- Column separating vertically split windows
    Folded                     { fg="#a0a8b0", bg="#384048", }, -- Line used for closed folds
    FoldColumn                 { fg="cyan", bg="grey", }, -- 'foldcolumn'
    SignColumn                 { fg="cyan", bg="grey", }, -- Column where |signs| are displayed
    IncSearch                  { gui="reverse", }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute                 { Search }, -- |:substitute| replacement text highlighting
    LineNr                     { fg="#857b6f", bg="#000000", }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr               { fg="yellow", gui="bold", }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen                 { fg="#f6f3e8", bg="#857b6f", gui="bold", }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg                    { gui="bold", }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    MsgSeparator               { StatusLine }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg                    { fg="seagreen", gui="bold", }, -- |more-prompt|
    NonText                    { fg="#808080", bg="#303030", }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal                     { fg="white", bg="#242424" }, -- Normal text
    NormalFloat                { Pmenu }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    Pmenu                      { fg="#000000", bg="#999999", }, -- Popup menu: Normal item.
    PmenuSel                   { fg="#3399ff", bg="#f0e68c", gui="reverse", }, -- Popup menu: Selected item.
    PmenuSbar                  { fg="#000000", bg="#ffffff", }, -- Popup menu: Scrollbar.
    PmenuThumb                 { bg="white", }, -- Popup menu: Thumb of the scrollbar.
    Question                   { fg="green", gui="bold", }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine               { Search }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search                     { fg="black", bg="yellow", }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey   { fg="#808080", bg="#343434" }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad                   { sp="red", gui="undercurl", }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap                   { sp="blue", gui="undercurl", }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal                 { sp="cyan", gui="undercurl", }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare                  { sp="magenta", gui="undercurl", }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine                 { fg="#f6f3e8", bg="#444444", }, -- Status line of current window
    StatusLineNC               { fg="#857b6f", bg="#444444", }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine                    { bg="darkgrey", gui="underline", }, -- Tab pages line, not active tab page label
    TabLineFill                { gui="reverse", }, -- Tab pages line, where there are no labels
    TabLineSel                 { gui="bold", }, -- Tab pages line, active tab page label
    Title                      { fg="#f6f3e8", gui="bold", }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual                     { fg="#f6f3e8", bg="#444444", }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg                 { fg="red", }, -- Warning messages
    Whitespace                 { NonText }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WinSeparator               { VertSplit }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu                   { fg="black", bg="yellow", }, -- Current match in 'wildmenu' completion

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment                    { fg="#99968b", }, -- Any comment

    Constant                   { fg="#e5786d", }, -- (*) Any constant
    String                     { fg="#95e454", }, -- A string constant: "this is a string"
    Character                  { Constant }, -- A character constant: 'c', '\n'
    Number                     { fg="#e5786d", }, -- A number constant: 234, 0xff
    Boolean                    { Constant }, -- A boolean constant: TRUE, false
    Float                      { Number }, -- A floating point constant: 2.3e10

    Identifier                 { fg="#cae682", }, -- (*) Any variable name
    Function                   { fg="#cae682", }, -- Function name (also: methods for classes)

    Statement                  { fg="#8ac6f2", }, -- (*) Any statement
    Conditional                { Statement }, -- if, then, else, endif, switch, etc.
    Repeat                     { Statement }, -- for, do, while, etc.
    Label                      { Statement }, -- case, default, etc.
    Operator                   { Statement }, -- "sizeof", "+", "*", etc.
    Keyword                    { fg="#8ac6f2", }, -- any other keyword
    Exception                  { Statement }, -- try, catch, throw

    PreProc                    { fg="#e5786d", }, -- (*) Generic Preprocessor
    Include                    { PreProc }, -- Preprocessor #include
    Define                     { PreProc }, -- Preprocessor #define
    Macro                      { PreProc }, -- Same as Define
    PreCondit                  { PreProc }, -- Preprocessor #if, #else, #endif, etc.

    Type                       { fg="#cae682", }, -- (*) int, long, char, etc.
    StorageClass               { Type }, -- static, register, volatile, etc.
    Structure                  { Type }, -- struct, union, enum, etc.
    Typedef                    { Type }, -- A typedef

    Special                    { fg="#e7f6da", }, -- (*) Any special symbol
    SpecialChar                { Special }, -- Special character in a constant
    Tag                        { Special }, -- You can use CTRL-] on this
    Delimiter                  { Special }, -- Character that needs attention
    SpecialComment             { Special }, -- Special things inside a comment (e.g. '\n')
    Debug                      { Special }, -- Debugging statements

    Underlined                 { fg="#80a0ff", gui="underline", }, -- Text that stands out, HTML links
    Ignore                     { fg="bg", }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error                      { fg="white", bg="red", }, -- Any erroneous construct
    Todo                       { fg="#8f8f8f", bg="yellow", }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg="red", }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg="orange", }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg="lightblue", }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg="lightgrey", }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticVirtualTextError { DiagnosticError }, -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextWarn  { DiagnosticWarn }, -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextInfo  { DiagnosticInfo }, -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextHint  { DiagnosticHint }, -- Used for "Hint" diagnostic virtual text.
    DiagnosticUnderlineError   { sp="red", gui="underline", }, -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn    { sp="orange", gui="underline", }, -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo    { sp="lightblue", gui="underline", }, -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint    { sp="lightgrey", gui="underline", }, -- Used to underline "Hint" diagnostics.
    DiagnosticFloatingError    { DiagnosticError }, -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    DiagnosticFloatingWarn     { DiagnosticWarn }, -- Used to color "Warn" diagnostic messages in diagnostics float.
    DiagnosticFloatingInfo     { DiagnosticInfo }, -- Used to color "Info" diagnostic messages in diagnostics float.
    DiagnosticFloatingHint     { DiagnosticHint }, -- Used to color "Hint" diagnostic messages in diagnostics float.
    DiagnosticSignError        { DiagnosticError }, -- Used for "Error" signs in sign column.
    DiagnosticSignWarn         { DiagnosticWarn }, -- Used for "Warn" signs in sign column.
    DiagnosticSignInfo         { DiagnosticInfo }, -- Used for "Info" signs in sign column.
    DiagnosticSignHint         { DiagnosticHint }, -- Used for "Hint" signs in sign column.

    -- Tree-Sitter syntax groups. Most link to corresponding
    -- vim syntax groups (e.g. TSKeyword => Keyword) by default.
    --
    -- See :h nvim-treesitter-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    TSAttribute                { PreProc }, -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    -- TSBoolean            { } , -- Boolean literals: `True` and `False` in Python.
    -- TSCharacter          { } , -- Character literals: `'a'` in C.
    -- TSCharacterSpecial   { } , -- Special characters.
    TSComment                  { Comment }, -- Line comments and block comments.
    -- TSConditional        { } , -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    TSConstant                 { Constant }, -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    TSConstBuiltin             { Special }, -- Built-in constant values: `nil` in Lua.
    -- TSConstMacro         { } , -- Constants defined by macros: `NULL` in C.
    TSConstructor              { Special }, -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    -- TSDebug              { } , -- Debugging statements.
    -- TSDefine             { } , -- Preprocessor #define statements.
    -- TSError              { } , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    -- TSException          { } , -- Exception related keywords: `try`, `except`, `finally` in Python.
    TSField                    { Identifier }, -- Object and struct fields.
    -- TSFloat              { } , -- Floating-point number literals.
    TSFunction                 { Function }, -- Function calls and definitions.
    TSFuncBuiltin              { Special }, -- Built-in functions: `print` in Lua.
    -- TSFuncMacro          { } , -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { } , -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    TSKeyword                  { Keyword }, -- Keywords that don't fit into other categories.
    TSKeywordFunction          { Keyword }, -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    -- TSKeywordOperator    { } , -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    -- TSKeywordReturn      { } , -- Keywords like `return` and `yield`.
    -- TSLabel              { } , -- GOTO labels: `label:` in C, and `::label::` in Lua.
    TSMethod                   { Function }, -- Method calls and definitions.
    -- TSNamespace          { } , -- Identifiers referring to modules and namespaces.
    TSNone                     { }, -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    TSNumber                   { Number }, -- Numeric literals that don't fit into other categories.
    -- TSOperator           { } , -- Binary or unary operators: `+`, and also `->` and `*` in C.
    TSParameter                { Identifier }, -- Parameters of a function.
    -- TSParameterReference { } , -- References to parameters of a function.
    TSPreProc                  { PreProc }, -- Preprocessor #if, #else, #endif, etc.
    TSProperty                 { Identifier }, -- Same as `TSField`.
    -- TSPunctDelimiter     { } , -- Punctuation delimiters: Periods, commas, semicolons, etc.
    -- TSPunctBracket       { } , -- Brackets, braces, parentheses, etc.
    -- TSPunctSpecial       { } , -- Special punctuation that doesn't fit into the previous categories.
    -- TSRepeat             { } , -- Keywords related to loops: `for`, `while`, etc.
    -- TSStorageClass       { } , -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
    TSString                   { String }, -- String literals.
    TSStringRegex              { String }, -- Regular expression literals.
    -- TSStringEscape       { } , -- Escape characters within a string: `\n`, `\t`, etc.
    -- TSStringSpecial      { } , -- Strings with special meaning that don't fit into the previous categories.
    TSSymbol                   { Identifier }, -- Identifiers referring to symbols or atoms.
    -- TSTag                { } , -- Tags like HTML tag names.
    -- TSTagAttribute       { } , -- HTML tag attributes.
    -- TSTagDelimiter       { } , -- Tag delimiters like `<` `>` `/`.
    TSText                     { TSNone }, -- Non-structured text. Like text in a markup language.
    TSStrong                   { gui="bold", }, -- Text to be represented in bold.
    TSEmphasis                 { gui="italic", }, -- Text to be represented with emphasis.
    TSUnderline                { gui="underline", }, -- Text to be represented with an underline.
    TSStrike                   { gui="strikethrough", }, -- Strikethrough text.
    TSTitle                    { Title }, -- Text that is part of a title.
    TSLiteral                  { String }, -- Literal or verbatim text.
    -- TSURI                { } , -- URIs like hyperlinks or email addresses.
    TSMath                     { Special }, -- Math environments like LaTeX's `$ ... $`
    TSTextReference            { Constant }, -- Footnotes, text references, citations, etc.
    -- TSEnvironment        { } , -- Text environments of markup languages.
    TSEnvironmentName          { Type }, -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    -- TSNote               { } , -- Text representation of an informational note.
    TSWarning                  { Todo }, -- Text representation of a warning note.
    TSDanger                   { WarningMsg }, -- Text representation of a danger note.
    TSType                     { Type }, -- Type (and class) definitions and annotations.
    TSTypeBuiltin              { Type }, -- Built-in types: `i32` in Rust.
    -- TSVariable           { } , -- Variable names that don't fit into other categories.
    TSVariableBuiltin          { Special }, -- Variable names defined by the language: `this` or `self` in Javascript.
  }
end)
return theme
