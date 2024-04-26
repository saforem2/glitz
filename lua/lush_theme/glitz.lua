--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local nvimdarkred = hsl(347, 100, 56) -- hsl(0, 100, 50)
local nvimlightred = hsl(360, 100, 73) -- hsl(0, 100, 50)
local nvimlightblue = hsl(194, 100, 51) -- hsl(240, 100, 50)
local nvimlightcyan = hsl(179, 69, 60)  -- hsl(180, 100, 50)
local nvimlightyellow = hsl(44, 100, 77) -- #FFDF88
local nvimlightgreen = hsl(139, 87, 80)
local nvimdarkgrey1 = hsl(0, 0, 22)
local nvimlightgrey4 = hsl(0, 0, 32)
local nvimlightgrey2 = hsl(0, 0, 50)
local nvimlightgrey1 = hsl(0, 0, 60)
local nvimdarkgrey15 = hsl(0, 0, 50)
-- -- NotifyBackground                             { bg="#222222", fg="#939393", }, -- NotifyBackground xxx guifg=#939393 guibg=#222222


-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    -- ColorColumn    { }, -- Columns set with 'colorcolumn'
    -- Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor         { }, -- Character under the cursor
    -- CurSearch      { }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- CursorLine     { }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    -- Directory      { }, -- Directory names (and other special names in listings)
    -- DiffAdd        { }, -- Diff mode: Added line |diff.txt|
    -- DiffChange     { }, -- Diff mode: Changed line |diff.txt|
    -- DiffDelete     { }, -- Diff mode: Deleted line |diff.txt|
    -- DiffText       { }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    -- ErrorMsg       { }, -- Error messages on the command line
    -- VertSplit      { }, -- Column separating vertically split windows
    -- Folded         { }, -- Line used for closed folds
    -- FoldColumn     { }, -- 'foldcolumn'
    -- SignColumn     { }, -- Column where |signs| are displayed
    -- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute     { }, -- |:substitute| replacement text highlighting
    -- LineNr         { }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    -- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    -- CursorLineNr   { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    -- MatchParen     { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg        { }, -- |more-prompt|
    -- NonText        { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    -- Normal         { }, -- Normal text
    -- NormalFloat    { }, -- Normal text in floating windows.
    -- FloatBorder    { }, -- Border of floating windows.
    -- FloatTitle     { }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    -- Pmenu          { }, -- Popup menu: Normal item.
    -- PmenuSel       { }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    -- PmenuSbar      { }, -- Popup menu: Scrollbar.
    -- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
    -- Question       { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search         { }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    -- StatusLine     { }, -- Status line of current window
    -- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine        { }, -- Tab pages line, not active tab page label
    -- TabLineFill    { }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    -- Title          { }, -- Titles for output from ":set all", ":autocmd" etc.
    -- Visual         { }, -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg     { }, -- Warning messages
    -- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu       { }, -- Current match in 'wildmenu' completion
    -- WinBar         { }, -- Window bar of current window
    -- WinBarNC       { }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    -- Comment        { }, -- Any comment

    -- Constant       { }, -- (*) Any constant
    -- String         { }, --   A string constant: "this is a string"
    -- Character      { }, --   A character constant: 'c', '\n'
    -- Number         { }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    -- Identifier     { }, -- (*) Any variable name
    -- Function       { }, --   Function name (also: methods for classes)

    -- Statement      { }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    -- Operator       { }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    -- PreProc        { }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    -- Type           { }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    -- Special        { }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    -- Error          { }, -- Any erroneous construct
    -- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

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
    -- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticOk               { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    -- sym"@variable"          { }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
    Normal                                       { fg="#bdbdbd", bg="#1c1c1c" }, -- Normal         xxx guifg=#bdbdbd
    sym"@markup.heading.1"                       { guifg="#00CEFF", guibg="#002933", gui="bold" },
    sym"@markup.heading.2"                       { guifg="#6DD283", guibg="#023008", gui="bold" },
    sym"@markup.heading.3"                       { guifg="#fb967d", guibg="#6c0202", gui="bold" },
    SpecialKey                                   { fg=nvimdarkgrey4, }, -- SpecialKey     xxx guifg=NvimDarkGrey4
    TermCursor                                   { gui="reverse", }, -- TermCursor     xxx cterm=reverse gui=reverse
    GitSignsAddInline                            { TermCursor }, -- GitSignsAddInline xxx links to TermCursor
    GitSignsDeleteInline                         { TermCursor }, -- GitSignsDeleteInline xxx links to TermCursor
    GitSignsChangeInline                         { TermCursor }, -- GitSignsChangeInline xxx links to TermCursor
    NonText                                      { fg=nvimdarkgrey4, }, -- NonText        xxx guifg=NvimDarkGrey4
    EndOfBuffer                                  { NonText }, -- EndOfBuffer    xxx links to NonText
    LspInlayHint                                 { NonText }, -- LspInlayHint   xxx links to NonText
    TelescopePreviewHyphen                       { NonText }, -- TelescopePreviewHyphen xxx links to NonText
    TelescopePromptCounter                       { NonText }, -- TelescopePromptCounter xxx links to NonText
    TelescopeResultsDiffUntracked                { NonText }, -- TelescopeResultsDiffUntracked xxx links to NonText
    GitSignsCurrentLineBlame                     { NonText }, -- GitSignsCurrentLineBlame xxx links to NonText
    Directory                                    { fg="#3ddbd9", }, -- Directory      xxx guifg=#3ddbd9
    TelescopePreviewDate                         { Directory }, -- TelescopePreviewDate xxx links to Directory
    TelescopePreviewDirectory                    { Directory }, -- TelescopePreviewDirectory xxx links to Directory
    ErrorMsg                                     { fg="#ee5396", }, -- ErrorMsg       xxx guifg=#ee5396
    NvimInvalidSpacing                           { ErrorMsg }, -- NvimInvalidSpacing xxx links to ErrorMsg
    Search                                       { bg="#00ccff", fg="#1c1c1c", gui="bold", }, -- Search         xxx cterm=bold gui=bold guifg=#1c1c1c guibg=#00ccff
    TelescopePreviewMatch                        { Search }, -- TelescopePreviewMatch xxx links to Search
    CurSearch                                    { bg="#ff5252", fg="#1c1c1c", gui="bold", }, -- CurSearch      xxx cterm=bold gui=bold guifg=#1c1c1c guibg=#ff5252
    IncSearch                                    { CurSearch }, -- IncSearch      xxx links to CurSearch
    MoreMsg                                      { fg="#3ddbd9", }, -- MoreMsg        xxx guifg=#3ddbd9
    ModeMsg                                      { fg="#d0d0d0", }, -- ModeMsg        xxx guifg=#d0d0d0
    LineNr                                       { fg="#383838", }, -- LineNr         xxx guifg=#383838
    LineNrAbove                                  { LineNr }, -- LineNrAbove    xxx links to LineNr
    LineNrBelow                                  { LineNr }, -- LineNrBelow    xxx links to LineNr
    TreesitterContextLineNumber                  { LineNr }, -- TreesitterContextLineNumber xxx links to LineNr
    TelescopeResultsLineNr                       { LineNr }, -- TelescopeResultsLineNr xxx links to LineNr
    Quote                                        { LineNr }, -- Quote          xxx links to LineNr
    DoubleDash                                   { LineNr }, -- DoubleDash     xxx links to LineNr
    CursorLineNr                                 { fg="#d0d0d0", }, -- CursorLineNr   xxx guifg=#d0d0d0
    MarkSignNumHL                                { CursorLineNr }, -- MarkSignNumHL  xxx links to CursorLineNr
    Question                                     { fg="#d0d0d0", }, -- Question       xxx guifg=#d0d0d0
    StatusLine                                   { bg="#222222", fg="#d0d0d0", }, -- StatusLine     xxx guifg=#d0d0d0 guibg=#222222
    MsgSeparator                                 { StatusLine }, -- MsgSeparator   xxx links to StatusLine
    StatusLineNC                                 { bg="#262626", fg="#d0d0d0", }, -- StatusLineNC   xxx guifg=#d0d0d0 guibg=#262626
    TabLine                                      { StatusLineNC }, -- TabLine        xxx links to StatusLineNC
    VertSplit                                    { fg="#262626", }, -- VertSplit      xxx guifg=#262626
    Title                                        { fg="#d0d0d0", gui="bold", }, -- Title          xxx cterm=bold gui=bold guifg=#d0d0d0
    FloatTitle                                   { Title }, -- FloatTitle     xxx links to Title
    LspInfoTitle                                 { Title }, -- LspInfoTitle   xxx links to Title
    NullLsInfoSources                            { Title }, -- NullLsInfoSources xxx links to Title
    Visual                                       { bg="#393939", }, -- Visual         xxx guibg=#393939
    VisualNOS                                    { Visual }, -- VisualNOS      xxx links to Visual
    SnippetTabstop                               { Visual }, -- SnippetTabstop xxx links to Visual
    TelescopePreviewLine                         { Visual }, -- TelescopePreviewLine xxx links to Visual
    TelescopeSelection                           { Visual }, -- TelescopeSelection xxx links to Visual
    UfoPreviewCursorLine                         { Visual }, -- UfoPreviewCursorLine xxx links to Visual
    WarningMsg                                   { fg="#be95ff", }, -- WarningMsg     xxx guifg=#be95ff
    WildMenu                                     { bg="#222222", fg="#3ddbd9", }, -- WildMenu       xxx guifg=#3ddbd9 guibg=#222222
    Folded                                       { bg="#262626", fg="#393939", }, -- Folded         xxx guifg=#393939 guibg=#262626
    FoldColumn                                   { fg="#262626", }, -- FoldColumn     xxx guifg=#262626
    CursorLineFold                               { FoldColumn }, -- CursorLineFold xxx links to FoldColumn
    DiffAdd                                      { bg="#122f2f", }, -- DiffAdd        xxx guibg=#122f2f
    TelescopeResultsDiffAdd                      { DiffAdd }, -- TelescopeResultsDiffAdd xxx links to DiffAdd
    GitSignsAddLn                                { DiffAdd }, -- GitSignsAddLn  xxx links to DiffAdd
    GitSignsAddPreview                           { DiffAdd }, -- GitSignsAddPreview xxx links to DiffAdd
    DiffChange                                   { bg="#222a39", }, -- DiffChange     xxx guibg=#222a39
    TelescopeResultsDiffChange                   { DiffChange }, -- TelescopeResultsDiffChange xxx links to DiffChange
    GitSignsChangeLn                             { DiffChange }, -- GitSignsChangeLn xxx links to DiffChange
    DiffDelete                                   { bg="#361c28", }, -- DiffDelete     xxx guibg=#361c28
    TelescopeResultsDiffDelete                   { DiffDelete }, -- TelescopeResultsDiffDelete xxx links to DiffDelete
    GitSignsDeletePreview                        { DiffDelete }, -- GitSignsDeletePreview xxx links to DiffDelete
    GitSignsDeleteVirtLn                         { DiffDelete }, -- GitSignsDeleteVirtLn xxx links to DiffDelete
    DiffText                                     { bg="#2f3f5c", }, -- DiffText       xxx guibg=#2f3f5c
    SignColumn                                   { fg="#262626", }, -- SignColumn     xxx guifg=#262626
    CursorLineSign                               { SignColumn }, -- CursorLineSign xxx links to SignColumn
    Conceal                                      { fg=nvimdarkgrey4, }, -- Conceal        xxx guifg=NvimDarkGrey4
    SpellBad                                     { sp=nvimlightred, gui="undercurl", }, -- SpellBad       xxx cterm=undercurl gui=undercurl guisp=NvimLightRed
    SpellCap                                     { sp=nvimlightyellow, gui="undercurl", }, -- SpellCap       xxx cterm=undercurl gui=undercurl guisp=NvimLightYellow
    SpellRare                                    { sp=nvimlightcyan, gui="undercurl", }, -- SpellRare      xxx cterm=undercurl gui=undercurl guisp=NvimLightCyan
    SpellLocal                                   { sp=nvimlightgreen, gui="undercurl", }, -- SpellLocal     xxx cterm=undercurl gui=undercurl guisp=NvimLightGreen
    Pmenu                                        { bg="#222222", fg="#d0d0d0", }, -- Pmenu          xxx guifg=#d0d0d0 guibg=#222222
    PmenuKind                                    { Pmenu }, -- PmenuKind      xxx links to Pmenu
    PmenuExtra                                   { Pmenu }, -- PmenuExtra     xxx links to Pmenu
    PmenuSel                                     { bg="#222222", fg="#3ddbd9", }, -- PmenuSel       xxx guifg=#3ddbd9 guibg=#222222
    PmenuKindSel                                 { PmenuSel }, -- PmenuKindSel   xxx links to PmenuSel
    PmenuExtraSel                                { PmenuSel }, -- PmenuExtraSel  xxx links to PmenuSel
    TablineActive                                { PmenuSel }, -- TablineActive  xxx links to PmenuSel
    PmenuSbar                                    { bg="#222222", fg="#d0d0d0", }, -- PmenuSbar      xxx guifg=#d0d0d0 guibg=#222222
    UfoPreviewSbar                               { PmenuSbar }, -- UfoPreviewSbar xxx links to PmenuSbar
    PmenuThumb                                   { bg="#222222", fg="#3ddbd9", }, -- PmenuThumb     xxx guifg=#3ddbd9 guibg=#222222
    UfoPreviewThumb                              { PmenuThumb }, -- UfoPreviewThumb xxx links to PmenuThumb
    TabLineSel                                   { gui="bold", }, -- TabLineSel     xxx cterm=bold gui=bold
    TablineCurrent                               { TabLineSel }, -- TablineCurrent xxx links to TabLineSel
    CursorColumn                                 { bg="#262626", }, -- CursorColumn   xxx guibg=#262626
    CursorLine                                   { bg="#262626", }, -- CursorLine     xxx guibg=#262626
    LspReferenceText                             { CursorLine }, -- LspReferenceText xxx links to CursorLine
    UfoCursorFoldedLine                          { CursorLine }, -- UfoCursorFoldedLine xxx links to CursorLine
    ColorColumn                                  { bg="#262626", }, -- ColorColumn    xxx guibg=#262626
    Headline                                     { ColorColumn }, -- Headline       xxx links to ColorColumn
    CodeBlock                                    { ColorColumn }, -- CodeBlock      xxx links to ColorColumn
    MatchBackground                              { ColorColumn }, -- MatchBackground xxx links to ColorColumn
    QuickFixLine                                 { fg=nvimlightcyan, }, -- QuickFixLine   xxx ctermfg=14 guifg=NvimLightCyan
    AerialLine                                   { QuickFixLine }, -- AerialLine     xxx links to QuickFixLine
    Whitespace                                   { bg="#1f1f1f", }, -- Whitespace     xxx guibg=#1f1f1f
    NormalNC                                     { bg="#161616", fg="#f2f2f2", }, -- NormalNC       xxx guifg=#f2f2f2 guibg=#161616
    NormalFloat                                  { bg="#222222", }, -- NormalFloat    xxx guibg=#222222
    NullLsInfoBorder                             { NormalFloat }, -- NullLsInfoBorder xxx links to NormalFloat
    DapUIFloatNormal                             { NormalFloat }, -- DapUIFloatNormal xxx links to NormalFloat
    TreesitterContext                            { NormalFloat }, -- TreesitterContext xxx links to NormalFloat
    InclineNormalNC                              { NormalFloat }, -- InclineNormalNC xxx links to NormalFloat
    InclineNormal                                { NormalFloat }, -- InclineNormal  xxx links to NormalFloat
    CccFloatNormal                               { NormalFloat }, -- CccFloatNormal xxx links to NormalFloat
    FloatBorder                                  { bg="#161616", fg="#131313", }, -- FloatBorder    xxx guifg=#131313 guibg=#161616
    TreesitterContextSeparator                   { FloatBorder }, -- TreesitterContextSeparator xxx links to FloatBorder
    CccFloatBorder                               { FloatBorder }, -- CccFloatBorder xxx links to FloatBorder
    WinBar                                       { gui="bold", }, -- WinBar         xxx cterm=bold gui=bold
    WinBarNC                                     { bg=nvimdarkgrey1, fg=nvimlightgrey4, }, -- WinBarNC       xxx cterm=bold guifg=NvimLightGrey4 guibg=NvimDarkGrey1
    RedrawDebugNormal                            { gui="reverse", }, -- RedrawDebugNormal xxx cterm=reverse gui=reverse
    Underlined                                   { gui="underline", }, -- Underlined     xxx cterm=underline gui=underline
    sym"@string.special.url"                     { Underlined }, -- @string.special.url xxx links to Underlined
    lCursor                                      { bg="fg", fg="bg", }, -- lCursor        xxx guifg=bg guibg=fg
    Substitute                                   { bg="#3ddbd9", fg="#262626", }, -- Substitute     xxx guifg=#262626 guibg=#3ddbd9
    WinSeparator                                 { Normal }, -- WinSeparator   xxx links to Normal
    Ignore                                       { Normal }, -- Ignore         xxx links to Normal
    NvimSpacing                                  { Normal }, -- NvimSpacing    xxx links to Normal
    DapUINormal                                  { Normal }, -- DapUINormal    xxx links to Normal
    DapUIVariable                                { Normal }, -- DapUIVariable  xxx links to Normal
    DapUIValue                                   { Normal }, -- DapUIValue     xxx links to Normal
    DapUIFrameName                               { Normal }, -- DapUIFrameName xxx links to Normal
    TelescopeNormal                              { Normal }, -- TelescopeNormal xxx links to Normal
    CodeiumAnnotation                            { Normal }, -- CodeiumAnnotation xxx links to Normal
    Constant                                     { fg=nvimlightgrey2, }, -- Constant       xxx guifg=NvimLightGrey2
    Character                                    { Constant }, -- Character      xxx links to Constant
    Number                                       { Constant }, -- Number         xxx links to Constant
    Boolean                                      { Constant }, -- Boolean        xxx links to Constant
    TelescopeResultsConstant                     { Constant }, -- TelescopeResultsConstant xxx links to Constant
    TelescopePreviewGroup                        { Constant }, -- TelescopePreviewGroup xxx links to Constant
    TelescopePreviewUser                         { Constant }, -- TelescopePreviewUser xxx links to Constant
    TelescopePreviewRead                         { Constant }, -- TelescopePreviewRead xxx links to Constant
    TelescopePreviewBlock                        { Constant }, -- TelescopePreviewBlock xxx links to Constant
    TelescopePreviewCharDev                      { Constant }, -- TelescopePreviewCharDev xxx links to Constant
    TelescopePreviewPipe                         { Constant }, -- TelescopePreviewPipe xxx links to Constant
    AerialConstantIcon                           { Constant }, -- AerialConstantIcon xxx links to Constant
    Statement                                    { fg=nvimlightgrey2, gui="bold", }, -- Statement      xxx cterm=bold gui=bold guifg=NvimLightGrey2
    Conditional                                  { Statement }, -- Conditional    xxx links to Statement
    Repeat                                       { Statement }, -- Repeat         xxx links to Statement
    Label                                        { Statement }, -- Label          xxx links to Statement
    Exception                                    { Statement }, -- Exception      xxx links to Statement
    TelescopePreviewWrite                        { Statement }, -- TelescopePreviewWrite xxx links to Statement
    TelescopePreviewSocket                       { Statement }, -- TelescopePreviewSocket xxx links to Statement
    Keyword                                      { fg="#ff79ff", }, -- Keyword        xxx guifg=#ff79ff
    TelescopePreviewSticky                       { Keyword }, -- TelescopePreviewSticky xxx links to Keyword
    PreProc                                      { fg=nvimlightgrey2, }, -- PreProc        xxx guifg=NvimLightGrey2
    Include                                      { PreProc }, -- Include        xxx links to PreProc
    Define                                       { PreProc }, -- Define         xxx links to PreProc
    Macro                                        { PreProc }, -- Macro          xxx links to PreProc
    PreCondit                                    { PreProc }, -- PreCondit      xxx links to PreProc
    Type                                         { fg=nvimlightgrey2, }, -- Type           xxx guifg=NvimLightGrey2
    StorageClass                                 { Type }, -- StorageClass   xxx links to Type
    Structure                                    { Type }, -- Structure      xxx links to Type
    Typedef                                      { Type }, -- Typedef        xxx links to Type
    sym"@type"                                   { Type }, -- @type          xxx links to Type
    NvimNumberPrefix                             { Type }, -- NvimNumberPrefix xxx links to Type
    NvimOptionSigil                              { Type }, -- NvimOptionSigil xxx links to Type
    LspInfoFiletype                              { Type }, -- LspInfoFiletype xxx links to Type
    NullLsInfoTitle                              { Type }, -- NullLsInfoTitle xxx links to Type
    TelescopeMultiSelection                      { Type }, -- TelescopeMultiSelection xxx links to Type
    AerialClassIcon                              { Type }, -- AerialClassIcon xxx links to Type
    AerialEnumIcon                               { Type }, -- AerialEnumIcon xxx links to Type
    AerialInterfaceIcon                          { Type }, -- AerialInterfaceIcon xxx links to Type
    AerialStructIcon                             { Type }, -- AerialStructIcon xxx links to Type
    Special                                      { fg=nvimlightcyan, }, -- Special        xxx ctermfg=14 guifg=NvimLightCyan
    Tag                                          { Special }, -- Tag            xxx links to Special
    SpecialChar                                  { Special }, -- SpecialChar    xxx links to Special
    SpecialComment                               { Special }, -- SpecialComment xxx links to Special
    Debug                                        { Special }, -- Debug          xxx links to Special
    sym"@constructor"                            { Special }, -- @constructor   xxx links to Special
    sym"@markup"                                 { Special }, -- @markup        xxx links to Special
    TelescopeMatching                            { Special }, -- TelescopeMatching xxx links to Special
    TelescopePreviewLink                         { Special }, -- TelescopePreviewLink xxx links to Special
    AerialConstructorIcon                        { Special }, -- AerialConstructorIcon xxx links to Special
    DiagnosticError                              { fg=nvimlightred, }, -- DiagnosticError xxx ctermfg=9 guifg=NvimLightRed
    DiagnosticFloatingError                      { DiagnosticError }, -- DiagnosticFloatingError xxx links to DiagnosticError
    DiagnosticVirtualTextError                   { DiagnosticError }, -- DiagnosticVirtualTextError xxx links to DiagnosticError
    DiagnosticSignError                          { DiagnosticError }, -- DiagnosticSignError xxx links to DiagnosticError
    DiagnosticWarn                               { fg="#ffb53d", }, -- DiagnosticWarn xxx guifg=#ffb53d
    DiagnosticFloatingWarn                       { DiagnosticWarn }, -- DiagnosticFloatingWarn xxx links to DiagnosticWarn
    DiagnosticVirtualTextWarn                    { DiagnosticWarn }, -- DiagnosticVirtualTextWarn xxx links to DiagnosticWarn
    DiagnosticSignWarn                           { DiagnosticWarn }, -- DiagnosticSignWarn xxx links to DiagnosticWarn
    DiagnosticInfo                               { fg=nvimlightcyan, }, -- DiagnosticInfo xxx ctermfg=14 guifg=NvimLightCyan
    DiagnosticFloatingInfo                       { DiagnosticInfo }, -- DiagnosticFloatingInfo xxx links to DiagnosticInfo
    DiagnosticVirtualTextInfo                    { DiagnosticInfo }, -- DiagnosticVirtualTextInfo xxx links to DiagnosticInfo
    DiagnosticSignInfo                           { DiagnosticInfo }, -- DiagnosticSignInfo xxx links to DiagnosticInfo
    sym"@comment.note"                           { DiagnosticInfo }, -- @comment.note  xxx links to DiagnosticInfo
    DiagnosticHint                               { fg=nvimlightblue, }, -- DiagnosticHint xxx ctermfg=12 guifg=NvimLightBlue
    DiagnosticFloatingHint                       { DiagnosticHint }, -- DiagnosticFloatingHint xxx links to DiagnosticHint
    DiagnosticVirtualTextHint                    { DiagnosticHint }, -- DiagnosticVirtualTextHint xxx links to DiagnosticHint
    DiagnosticSignHint                           { DiagnosticHint }, -- DiagnosticSignHint xxx links to DiagnosticHint
    DiagnosticOk                                 { fg=nvimlightgreen, }, -- DiagnosticOk   xxx ctermfg=10 guifg=NvimLightGreen
    DiagnosticFloatingOk                         { DiagnosticOk }, -- DiagnosticFloatingOk xxx links to DiagnosticOk
    DiagnosticVirtualTextOk                      { DiagnosticOk }, -- DiagnosticVirtualTextOk xxx links to DiagnosticOk
    DiagnosticSignOk                             { DiagnosticOk }, -- DiagnosticSignOk xxx links to DiagnosticOk
    Comment                                      { fg="#494949", }, -- Comment        xxx guifg=#494949
    DiagnosticUnnecessary                        { Comment }, -- DiagnosticUnnecessary xxx links to Comment
    sym"@comment"                                { Comment }, -- @comment       xxx links to Comment
    LspInfoTip                                   { Comment }, -- LspInfoTip     xxx links to Comment
    TelescopeResultsComment                      { Comment }, -- TelescopeResultsComment xxx links to Comment
    WhichKeySeparator                            { Comment }, -- WhichKeySeparator xxx links to Comment
    MarkVirtTextHL                               { Comment }, -- MarkVirtTextHL xxx links to Comment
    WhichKeyValue                                { Comment }, -- WhichKeyValue  xxx links to Comment
    AerialPrivate                                { Comment }, -- AerialPrivate  xxx links to Comment
    AerialProtected                              { Comment }, -- AerialProtected xxx links to Comment
    UfoFoldedEllipsis                            { Comment }, -- UfoFoldedEllipsis xxx links to Comment
    sym"@variable"                               { fg="#d0d0d0", }, -- @variable      xxx guifg=#d0d0d0
    sym"@lsp.type.variable"                      { sym"@variable" }, -- @lsp.type.variable xxx links to @variable
    sym"@constant"                               { fg="#be95ff", }, -- @constant      xxx guifg=#be95ff
    sym"@constant.builtin"                       { fg="#08bdba", }, -- @constant.builtin xxx guifg=#08bdba
    sym"@label"                                  { fg="#82cfff", }, -- @label         xxx guifg=#82cfff
    String                                       { fg=nvimlightgreen, }, -- String         xxx ctermfg=10 guifg=NvimLightGreen
    sym"@string"                                 { String }, -- @string        xxx links to String
    NvimString                                   { String }, -- NvimString     xxx links to String
    TelescopePreviewSize                         { String }, -- TelescopePreviewSize xxx links to String
    TelescopePreviewExecute                      { String }, -- TelescopePreviewExecute xxx links to String
    sym"@string.escape"                          { fg="#82cfff", }, -- @string.escape xxx guifg=#82cfff
    sym"@type.builtin"                           { fg="#26c99e", }, -- @type.builtin  xxx guifg=#26c99e
    sym"@property"                               { fg="#ee5396", }, -- @property      xxx guifg=#ee5396
    Identifier                                   { fg=nvimlightblue, }, -- Identifier     xxx ctermfg=12 guifg=NvimLightBlue
    NvimIdentifier                               { Identifier }, -- NvimIdentifier xxx links to Identifier
    TelescopeResultsIdentifier                   { Identifier }, -- TelescopeResultsIdentifier xxx links to Identifier
    TelescopeMultiIcon                           { Identifier }, -- TelescopeMultiIcon xxx links to Identifier
    TelescopePromptPrefix                        { Identifier }, -- TelescopePromptPrefix xxx links to Identifier
    MarkSignHL                                   { Identifier }, -- MarkSignHL     xxx links to Identifier
    AerialArrayIcon                              { Identifier }, -- AerialArrayIcon xxx links to Identifier
    AerialBooleanIcon                            { Identifier }, -- AerialBooleanIcon xxx links to Identifier
    AerialEnumMemberIcon                         { Identifier }, -- AerialEnumMemberIcon xxx links to Identifier
    AerialEventIcon                              { Identifier }, -- AerialEventIcon xxx links to Identifier
    AerialFieldIcon                              { Identifier }, -- AerialFieldIcon xxx links to Identifier
    AerialFileIcon                               { Identifier }, -- AerialFileIcon xxx links to Identifier
    AerialKeyIcon                                { Identifier }, -- AerialKeyIcon  xxx links to Identifier
    AerialNullIcon                               { Identifier }, -- AerialNullIcon xxx links to Identifier
    AerialNumberIcon                             { Identifier }, -- AerialNumberIcon xxx links to Identifier
    AerialObjectIcon                             { Identifier }, -- AerialObjectIcon xxx links to Identifier
    AerialOperatorIcon                           { Identifier }, -- AerialOperatorIcon xxx links to Identifier
    AerialPropertyIcon                           { Identifier }, -- AerialPropertyIcon xxx links to Identifier
    AerialStringIcon                             { Identifier }, -- AerialStringIcon xxx links to Identifier
    AerialTypeParameterIcon                      { Identifier }, -- AerialTypeParameterIcon xxx links to Identifier
    AerialVariableIcon                           { Identifier }, -- AerialVariableIcon xxx links to Identifier
    sym"@function"                               { fg="#36ce5e", gui="bold", }, -- @function      xxx cterm=bold gui=bold guifg=#36ce5e
    Function                                     { fg=nvimlightcyan, }, -- Function       xxx ctermfg=14 guifg=NvimLightCyan
    LspInfoList                                  { Function }, -- LspInfoList    xxx links to Function
    TelescopeResultsFunction                     { Function }, -- TelescopeResultsFunction xxx links to Function
    TelescopeResultsField                        { Function }, -- TelescopeResultsField xxx links to Function
    TelescopeResultsClass                        { Function }, -- TelescopeResultsClass xxx links to Function
    WhichKey                                     { Function }, -- WhichKey       xxx links to Function
    AerialFunctionIcon                           { Function }, -- AerialFunctionIcon xxx links to Function
    AerialMethodIcon                             { Function }, -- AerialMethodIcon xxx links to Function
    sym"@function.builtin"                       { fg="#ff7eb6", }, -- @function.builtin xxx guifg=#ff7eb6
    semshiBuiltin                                { sym"@function.builtin" }, -- semshiBuiltin  xxx links to @function.builtin
    Operator                                     { fg=nvimlightgrey2, }, -- Operator       xxx guifg=NvimLightGrey2
    sym"@operator"                               { Operator }, -- @operator      xxx links to Operator
    NvimAssignment                               { Operator }, -- NvimAssignment xxx links to Operator
    NvimOperator                                 { Operator }, -- NvimOperator   xxx links to Operator
    TelescopeResultsOperator                     { Operator }, -- TelescopeResultsOperator xxx links to Operator
    sym"@keyword"                                { fg="#78a9ff", }, -- @keyword       xxx guifg=#78a9ff
    Delimiter                                    { fg=nvimlightgrey2, }, -- Delimiter      xxx guifg=NvimLightGrey2
    sym"@punctuation"                            { Delimiter }, -- @punctuation   xxx links to Delimiter
    NvimParenthesis                              { Delimiter }, -- NvimParenthesis xxx links to Delimiter
    NvimColon                                    { Delimiter }, -- NvimColon      xxx links to Delimiter
    NvimComma                                    { Delimiter }, -- NvimComma      xxx links to Delimiter
    NvimArrow                                    { Delimiter }, -- NvimArrow      xxx links to Delimiter
    sym"@punctuation.special"                    { fg="#3ddbd9", }, -- @punctuation.special xxx guifg=#3ddbd9
    Todo                                         { fg=nvimlightgrey2, gui="bold", }, -- Todo           xxx cterm=bold gui=bold guifg=NvimLightGrey2
    sym"@markup.strong"                          { gui="bold", }, -- @markup.strong xxx cterm=bold gui=bold
    sym"@markup.italic"                          { gui="italic", }, -- @markup.italic xxx cterm=italic gui=italic
    sym"@markup.strikethrough"                   { gui="strikethrough", }, -- @markup.strikethrough xxx cterm=strikethrough gui=strikethrough
    sym"@markup.underline"                       { gui="underline", }, -- @markup.underline xxx cterm=underline gui=underline
    Added                                        { fg=nvimlightgreen, }, -- Added          xxx ctermfg=10 guifg=NvimLightGreen
    sym"@diff.plus"                              { Added }, -- @diff.plus     xxx links to Added
    GitSignsAdd                                  { Added }, -- GitSignsAdd    xxx links to Added
    Removed                                      { fg=nvimlightred, }, -- Removed        xxx ctermfg=9 guifg=NvimLightRed
    sym"@diff.minus"                             { Removed }, -- @diff.minus    xxx links to Removed
    GitSignsDelete                               { Removed }, -- GitSignsDelete xxx links to Removed
    Changed                                      { fg=nvimlightcyan, }, -- Changed        xxx ctermfg=14 guifg=NvimLightCyan
    sym"@diff.delta"                             { Changed }, -- @diff.delta    xxx links to Changed
    GitSignsChange                               { Changed }, -- GitSignsChange xxx links to Changed
    sym"@tag"                                    { fg="#78a9ff", }, -- @tag           xxx guifg=#78a9ff
    sym"@constant.macro"                         { fg="#08bdba", }, -- @constant.macro xxx guifg=#08bdba
    FloatShadow                                  { blend=80, bg=nvimdarkgrey4, }, -- FloatShadow    xxx ctermbg=0 guibg=NvimDarkGrey4 blend=80
    FloatShadowThrough                           { blend=100, bg=nvimdarkgrey4, }, -- FloatShadowThrough xxx ctermbg=0 guibg=NvimDarkGrey4 blend=100
    MatchParen                                   { bg=nvimdarkgrey4, gui="bold", }, -- MatchParen     xxx cterm=bold,underline gui=bold guibg=NvimDarkGrey4
    MatchParenCur                                { MatchParen }, -- MatchParenCur  xxx links to MatchParen
    MatchWord                                    { MatchParen }, -- MatchWord      xxx links to MatchParen
    RedrawDebugClear                             { bg="#ffff00", }, -- RedrawDebugClear xxx guibg=#ffff00
    RedrawDebugComposed                          { bg="#63ff5b", }, -- RedrawDebugComposed xxx guibg=#63ff5b
    RedrawDebugRecompose                         { bg="#ff5252", }, -- RedrawDebugRecompose xxx guibg=#ff5252
    Error                                        { bg=nvimdarkred, fg=nvimlightgrey1, }, -- Error          xxx ctermfg=0 ctermbg=9 guifg=NvimLightGrey1 guibg=NvimDarkRed
    NvimInvalid                                  { Error }, -- NvimInvalid    xxx links to Error
    DiagnosticUnderlineError                     { sp=nvimlightred, gui="underline", }, -- DiagnosticUnderlineError xxx cterm=underline gui=underline guisp=NvimLightRed
    DiagnosticUnderlineWarn                      { sp=nvimlightyellow, gui="underline", }, -- DiagnosticUnderlineWarn xxx cterm=underline gui=underline guisp=NvimLightYellow
    DiagnosticUnderlineInfo                      { sp=nvimlightcyan, gui="underline", }, -- DiagnosticUnderlineInfo xxx cterm=underline gui=underline guisp=NvimLightCyan
    DiagnosticUnderlineHint                      { sp=nvimlightblue, gui="underline", }, -- DiagnosticUnderlineHint xxx cterm=underline gui=underline guisp=NvimLightBlue
    DiagnosticUnderlineOk                        { sp=nvimlightgreen, gui="underline", }, -- DiagnosticUnderlineOk xxx cterm=underline gui=underline guisp=NvimLightGreen
    DiagnosticDeprecated                         { sp=nvimlightred, gui="strikethrough", }, -- DiagnosticDeprecated xxx cterm=strikethrough gui=strikethrough guisp=NvimLightRed
    NvimInternalError                            { bg="#FA99CD", fg="#FB6896", }, -- NvimInternalError xxx ctermfg=9 ctermbg=9 guifg=Red guibg=Red
    NvimFigureBrace                              { NvimInternalError }, -- NvimFigureBrace xxx links to NvimInternalError
    NvimSingleQuotedUnknownEscape                { NvimInternalError }, -- NvimSingleQuotedUnknownEscape xxx links to NvimInternalError
    NvimInvalidSingleQuotedUnknownEscape         { NvimInternalError }, -- NvimInvalidSingleQuotedUnknownEscape xxx links to NvimInternalError
    DapUIScope                                   { fg="#00f1f5", }, -- DapUIScope     xxx guifg=#00f1f5
    DapUIType                                    { fg="#d484ff", }, -- DapUIType      xxx guifg=#d484ff
    DapUIModifiedValue                           { fg="#00f1f5", gui="bold", }, -- DapUIModifiedValue xxx gui=bold guifg=#00f1f5
    DapUIDecoration                              { fg="#00f1f5", }, -- DapUIDecoration xxx guifg=#00f1f5
    DapUIThread                                  { fg="#a9ff68", }, -- DapUIThread    xxx guifg=#a9ff68
    DapUIStoppedThread                           { fg="#00f1f5", }, -- DapUIStoppedThread xxx guifg=#00f1f5
    DapUISource                                  { fg="#d484ff", }, -- DapUISource    xxx guifg=#d484ff
    DapUILineNumber                              { fg="#00f1f5", }, -- DapUILineNumber xxx guifg=#00f1f5
    DapUIBreakpointsLine                         { DapUILineNumber }, -- DapUIBreakpointsLine xxx links to DapUILineNumber
    DapUIFloatBorder                             { fg="#00f1f5", }, -- DapUIFloatBorder xxx guifg=#00f1f5
    DapUIWatchesEmpty                            { fg="#f70067", }, -- DapUIWatchesEmpty xxx guifg=#f70067
    DapUIWatchesValue                            { fg="#a9ff68", }, -- DapUIWatchesValue xxx guifg=#a9ff68
    DapUIWatchesError                            { fg="#f70067", }, -- DapUIWatchesError xxx guifg=#f70067
    DapUIBreakpointsPath                         { fg="#00f1f5", }, -- DapUIBreakpointsPath xxx guifg=#00f1f5
    DapUIBreakpointsInfo                         { fg="#a9ff68", }, -- DapUIBreakpointsInfo xxx guifg=#a9ff68
    DapUIBreakpointsCurrentLine                  { fg="#a9ff68", gui="bold", }, -- DapUIBreakpointsCurrentLine xxx gui=bold guifg=#a9ff68
    DapUICurrentFrameName                        { DapUIBreakpointsCurrentLine }, -- DapUICurrentFrameName xxx links to DapUIBreakpointsCurrentLine
    DapUIBreakpointsDisabledLine                 { fg="#424242", }, -- DapUIBreakpointsDisabledLine xxx guifg=#424242
    DapUIStepOver                                { fg="#00f1f5", }, -- DapUIStepOver  xxx guifg=#00f1f5
    DapUIStepInto                                { fg="#00f1f5", }, -- DapUIStepInto  xxx guifg=#00f1f5
    DapUIStepBack                                { fg="#00f1f5", }, -- DapUIStepBack  xxx guifg=#00f1f5
    DapUIStepOut                                 { fg="#00f1f5", }, -- DapUIStepOut   xxx guifg=#00f1f5
    DapUIStop                                    { fg="#f70067", }, -- DapUIStop      xxx guifg=#f70067
    DapUIPlayPause                               { fg="#a9ff68", }, -- DapUIPlayPause xxx guifg=#a9ff68
    DapUIRestart                                 { fg="#a9ff68", }, -- DapUIRestart   xxx guifg=#a9ff68
    DapUIUnavailable                             { fg="#424242", }, -- DapUIUnavailable xxx guifg=#424242
    DapUIWinSelect                               { fg="#00f1f5", gui="bold", }, -- DapUIWinSelect xxx ctermfg=14 gui=bold guifg=#00f1f5
    DapUINormalNC                                { bg="#07080d", }, -- DapUINormalNC  xxx guibg=#07080d
    DapUIPlayPauseNC                             { bg="#07080d", fg="#a9ff68", }, -- DapUIPlayPauseNC xxx guifg=#a9ff68 guibg=#07080d
    DapUIRestartNC                               { bg="#07080d", fg="#a9ff68", }, -- DapUIRestartNC xxx guifg=#a9ff68 guibg=#07080d
    DapUIStopNC                                  { bg="#07080d", fg="#f70067", }, -- DapUIStopNC    xxx guifg=#f70067 guibg=#07080d
    DapUIUnavailableNC                           { bg="#07080d", fg="#424242", }, -- DapUIUnavailableNC xxx guifg=#424242 guibg=#07080d
    DapUIStepOverNC                              { bg="#07080d", fg="#00f1f5", }, -- DapUIStepOverNC xxx guifg=#00f1f5 guibg=#07080d
    DapUIStepIntoNC                              { bg="#07080d", fg="#00f1f5", }, -- DapUIStepIntoNC xxx guifg=#00f1f5 guibg=#07080d
    DapUIStepBackNC                              { bg="#07080d", fg="#00f1f5", }, -- DapUIStepBackNC xxx guifg=#00f1f5 guibg=#07080d
    DapUIStepOutNC                               { bg="#07080d", fg="#00f1f5", }, -- DapUIStepOutNC xxx guifg=#00f1f5 guibg=#07080d
    CmpItemAbbrDeprecatedDefault                 { fg=nvimlightgrey4, }, -- CmpItemAbbrDeprecatedDefault xxx guifg=NvimLightGrey4
    CmpItemAbbrDeprecated                        { CmpItemAbbrDeprecatedDefault }, -- CmpItemAbbrDeprecated xxx links to CmpItemAbbrDeprecatedDefault
    CmpItemKindDefault                           { fg=nvimlightcyan, }, -- CmpItemKindDefault xxx guifg=NvimLightCyan
    CmpItemKind                                  { CmpItemKindDefault }, -- CmpItemKind    xxx links to CmpItemKindDefault
    semshiLocal                                  { fg="#ff875f", }, -- semshiLocal    xxx ctermfg=209 guifg=#ff875f
    semshiGlobal                                 { gui="italic", }, -- semshiGlobal   xxx gui=italic
    semshiImported                               { gui="bold", }, -- semshiImported xxx gui=bold
    semshiFree                                   { fg="#ffafd7", }, -- semshiFree     xxx ctermfg=218 guifg=#ffafd7
    semshiSelected                               { bg="#d7005f", fg="#ffffff", }, -- semshiSelected xxx ctermfg=231 ctermbg=161 guifg=#ffffff guibg=#d7005f
    semshiErrorSign                              { bg="#d70000", fg="#ffffff", }, -- semshiErrorSign xxx ctermfg=231 ctermbg=160 guifg=#ffffff guibg=#d70000
    semshiErrorChar                              { bg="#d70000", fg="#ffffff", }, -- semshiErrorChar xxx ctermfg=231 ctermbg=160 guifg=#ffffff guibg=#d70000
    IlluminatedWordText                          { bg="#282828", fg="#ff5252", }, -- IlluminatedWordText xxx guifg=#ff5252 guibg=#282828
    IlluminatedWordRead                          { bg="#282828", fg="#ffffff", }, -- IlluminatedWordRead xxx guifg=#ffffff guibg=#282828
    IlluminatedWordWrite                         { bg="#252525", fg="#bdbdbd", }, -- IlluminatedWordWrite xxx guifg=#bdbdbd guibg=#252525
    QuickScopePrimary                            { bg="#fb6896", gui="bold,underline", }, -- QuickScopePrimary xxx cterm=bold,underline gui=bold,underline guibg=#fb6896
    QuickScopeSecondary                          { bg="#002933", gui="underline,italic", }, -- QuickScopeSecondary xxx cterm=underline,italic gui=underline,italic guibg=#002933
    NotifyBackground                             { bg="#222222", fg="#939393", }, -- NotifyBackground xxx guifg=#939393 guibg=#222222
    NotifyERRORBorder                            { fg="#ff5252", }, -- NotifyERRORBorder xxx guifg=#ff5252
    NotifyWARNBorder                             { fg="#ffb53d", }, -- NotifyWARNBorder xxx guifg=#ffb53d
    NotifyINFOBorder                             { fg="#a9ff68", }, -- NotifyINFOBorder xxx guifg=#a9ff68
    NotifyDEBUGBorder                            { fg="#d4bbff", }, -- NotifyDEBUGBorder xxx guifg=#d4bbff
    NotifyTRACEBorder                            { fg="#d484ff", }, -- NotifyTRACEBorder xxx guifg=#d484ff
    NotifyERRORIcon                              { fg="#ff5252", }, -- NotifyERRORIcon xxx guifg=#ff5252
    NotifyWARNIcon                               { fg="#ffb53d", }, -- NotifyWARNIcon xxx guifg=#ffb53d
    NotifyINFOIcon                               { fg="#a9ff68", }, -- NotifyINFOIcon xxx guifg=#a9ff68
    NotifyDEBUGIcon                              { fg="#d4bbff", }, -- NotifyDEBUGIcon xxx guifg=#d4bbff
    NotifyTRACEIcon                              { fg="#d484ff", }, -- NotifyTRACEIcon xxx guifg=#d484ff
    NotifyERRORTitle                             { fg="#ff5252", }, -- NotifyERRORTitle xxx guifg=#ff5252
    NotifyWARNTitle                              { fg="#ffb53d", }, -- NotifyWARNTitle xxx guifg=#ffb53d
    NotifyINFOTitle                              { fg="#a9ff68", }, -- NotifyINFOTitle xxx guifg=#a9ff68
    NotifyDEBUGTitle                             { fg="#d4bbff", }, -- NotifyDEBUGTitle xxx guifg=#d4bbff
    NotifyTRACETitle                             { fg="#d484ff", }, -- NotifyTRACETitle xxx guifg=#d484ff
    NotifyERRORBody                              { bg="#1c1c1c", fg="#f8f8f8", }, -- NotifyERRORBody xxx guifg=#f8f8f8 guibg=#1c1c1c
    NotifyWARNBody                               { bg="#1c1c1c", fg="#f8f8f8", }, -- NotifyWARNBody xxx guifg=#f8f8f8 guibg=#1c1c1c
    NotifyINFOBody                               { bg="#1c1c1c", fg="#f8f8f8", }, -- NotifyINFOBody xxx guifg=#f8f8f8 guibg=#1c1c1c
    NotifyDEBUGBody                              { bg="#1c1c1c", fg="#f8f8f8", }, -- NotifyDEBUGBody xxx guifg=#f8f8f8 guibg=#1c1c1c
    NotifyTRACEBody                              { bg="#1c1c1c", fg="#f8f8f8", }, -- NotifyTRACEBody xxx guifg=#f8f8f8 guibg=#1c1c1c
    NotifyLogTime                                { bg="#1c1c1c", fg="#777777", }, -- NotifyLogTime  xxx guifg=#777777 guibg=#1c1c1c
    NotifyLogTitle                               { bg="#1c1c1c", fg="#00ccff", }, -- NotifyLogTitle xxx guifg=#00ccff guibg=#1c1c1c
    RainbowDelimiterRed                          { fg="#cc241d", }, -- RainbowDelimiterRed xxx ctermfg=9 guifg=#cc241d
    RainbowDelimiterOrange                       { fg="#d65d0e", }, -- RainbowDelimiterOrange xxx ctermfg=15 guifg=#d65d0e
    RainbowDelimiterYellow                       { fg="#d79921", }, -- RainbowDelimiterYellow xxx ctermfg=11 guifg=#d79921
    RainbowDelimiterGreen                        { fg="#689d6a", }, -- RainbowDelimiterGreen xxx ctermfg=10 guifg=#689d6a
    RainbowDelimiterCyan                         { fg="#a89984", }, -- RainbowDelimiterCyan xxx ctermfg=14 guifg=#a89984
    RainbowDelimiterBlue                         { fg="#458588", }, -- RainbowDelimiterBlue xxx ctermfg=12 guifg=#458588
    RainbowDelimiterViolet                       { fg="#b16286", }, -- RainbowDelimiterViolet xxx ctermfg=13 guifg=#b16286
    GitSignsStagedAdd                            { fg="#597b60", }, -- GitSignsStagedAdd xxx guifg=#597b60
    GitSignsStagedChange                         { fg="#467c7b", }, -- GitSignsStagedChange xxx guifg=#467c7b
    GitSignsStagedDelete                         { fg="#7f605c", }, -- GitSignsStagedDelete xxx guifg=#7f605c
    GitSignsStagedChangedelete                   { fg="#467c7b", }, -- GitSignsStagedChangedelete xxx guifg=#467c7b
    GitSignsStagedTopdelete                      { fg="#7f605c", }, -- GitSignsStagedTopdelete xxx guifg=#7f605c
    GitSignsStagedAddNr                          { fg="#597b60", }, -- GitSignsStagedAddNr xxx guifg=#597b60
    GitSignsStagedChangeNr                       { fg="#467c7b", }, -- GitSignsStagedChangeNr xxx guifg=#467c7b
    GitSignsStagedDeleteNr                       { fg="#7f605c", }, -- GitSignsStagedDeleteNr xxx guifg=#7f605c
    GitSignsStagedChangedeleteNr                 { fg="#467c7b", }, -- GitSignsStagedChangedeleteNr xxx guifg=#467c7b
    GitSignsStagedTopdeleteNr                    { fg="#7f605c", }, -- GitSignsStagedTopdeleteNr xxx guifg=#7f605c
    GitSignsStagedAddLn                          { bg="#005523", fg="#77787c", }, -- GitSignsStagedAddLn xxx guifg=#77787c guibg=#005523
    GitSignsStagedChangeLn                       { bg="#4f5258", fg="#77787c", }, -- GitSignsStagedChangeLn xxx guifg=#77787c guibg=#4f5258
    GitSignsStagedChangedeleteLn                 { bg="#4f5258", fg="#77787c", }, -- GitSignsStagedChangedeleteLn xxx guifg=#77787c guibg=#4f5258
    DevIconXresources                            { fg="#e54d18", }, -- DevIconXresources xxx ctermfg=196 guifg=#e54d18
    DevIconScss                                  { fg="#f55385", }, -- DevIconScss    xxx ctermfg=204 guifg=#f55385
    DevIconTex                                   { fg="#3d6117", }, -- DevIconTex     xxx ctermfg=22 guifg=#3d6117
    DevIconsbt                                   { fg="#cc3e44", }, -- DevIconsbt     xxx ctermfg=167 guifg=#cc3e44
    DevIconImage                                 { fg="#d0bec8", }, -- DevIconImage   xxx ctermfg=181 guifg=#d0bec8
    DevIconTerraform                             { fg="#5f43e9", }, -- DevIconTerraform xxx ctermfg=93 guifg=#5f43e9
    DevIconTempl                                 { fg="#dbbd30", }, -- DevIconTempl   xxx ctermfg=178 guifg=#dbbd30
    DevIconDockerfile                            { fg="#458ee6", }, -- DevIconDockerfile xxx ctermfg=68 guifg=#458ee6
    DevIconBzl                                   { fg="#89e051", }, -- DevIconBzl     xxx ctermfg=113 guifg=#89e051
    DevIconCue                                   { fg="#ed95ae", }, -- DevIconCue     xxx ctermfg=211 guifg=#ed95ae
    DevIconScheme                                { fg="#eeeeee", }, -- DevIconScheme  xxx ctermfg=255 guifg=#eeeeee
    DevIconEndeavour                             { fg="#7b3db9", }, -- DevIconEndeavour xxx ctermfg=91 guifg=#7b3db9
    DevIconRs                                    { fg="#dea584", }, -- DevIconRs      xxx ctermfg=216 guifg=#dea584
    DevIconRake                                  { fg="#701516", }, -- DevIconRake    xxx ctermfg=52 guifg=#701516
    DevIconPy                                    { fg="#ffbc03", }, -- DevIconPy      xxx ctermfg=214 guifg=#ffbc03
    DevIconGemspec                               { fg="#701516", }, -- DevIconGemspec xxx ctermfg=52 guifg=#701516
    DevIconDevuan                                { fg="#404a52", }, -- DevIconDevuan  xxx ctermfg=238 guifg=#404a52
    DevIconDeepin                                { fg="#2ca7f8", }, -- DevIconDeepin  xxx ctermfg=39 guifg=#2ca7f8
    DevIconOpenSCAD                              { fg="#f9d72c", }, -- DevIconOpenSCAD xxx ctermfg=220 guifg=#f9d72c
    DevIconEnlightenment                         { fg="#ffffff", }, -- DevIconEnlightenment xxx ctermfg=231 guifg=#ffffff
    DevIcondwm                                   { fg="#1177aa", }, -- DevIcondwm     xxx ctermfg=31 guifg=#1177aa
    DevIconCrystalLinux                          { fg="#a900ff", }, -- DevIconCrystalLinux xxx ctermfg=129 guifg=#a900ff
    DevIconSha256                                { fg="#8c86af", }, -- DevIconSha256  xxx ctermfg=103 guifg=#8c86af
    DevIconBSPWM                                 { fg="#2f2f2f", }, -- DevIconBSPWM   xxx ctermfg=236 guifg=#2f2f2f
    DevIconLuaurc                                { fg="#00a2ff", }, -- DevIconLuaurc  xxx ctermfg=75 guifg=#00a2ff
    DevIconBigLinux                              { fg="#189fc8", }, -- DevIconBigLinux xxx ctermfg=38 guifg=#189fc8
    DevIconSvelteConfig                          { fg="#ff3e00", }, -- DevIconSvelteConfig xxx ctermfg=196 guifg=#ff3e00
    DevIconXfce                                  { fg="#00aadf", }, -- DevIconXfce    xxx ctermfg=74 guifg=#00aadf
    DevIconRakefile                              { fg="#701516", }, -- DevIconRakefile xxx ctermfg=52 guifg=#701516
    DevIconQt                                    { fg="#40cd52", }, -- DevIconQt      xxx ctermfg=77 guifg=#40cd52
    sym"DevIconPy.typed"                         { fg="#ffbc03", }, -- DevIconPy.typed xxx ctermfg=214 guifg=#ffbc03
    DevIconArcoLinux                             { fg="#6690eb", }, -- DevIconArcoLinux xxx ctermfg=68 guifg=#6690eb
    DevIconPrusaSlicer                           { fg="#ec6b23", }, -- DevIconPrusaSlicer xxx ctermfg=202 guifg=#ec6b23
    DevIconR                                     { fg="#2266ba", }, -- DevIconR       xxx ctermfg=25 guifg=#2266ba
    DevIconArchlabs                              { fg="#503f42", }, -- DevIconArchlabs xxx ctermfg=238 guifg=#503f42
    DevIconLocalization                          { fg="#2596be", }, -- DevIconLocalization xxx ctermfg=31 guifg=#2596be
    DevIconDiff                                  { fg="#41535b", }, -- DevIconDiff    xxx ctermfg=239 guifg=#41535b
    DevIconLXQt                                  { fg="#0191d2", }, -- DevIconLXQt    xxx ctermfg=32 guifg=#0191d2
    DevIconPlatformio                            { fg="#f6822b", }, -- DevIconPlatformio xxx ctermfg=208 guifg=#f6822b
    DevIconJson                                  { fg="#cbcb41", }, -- DevIconJson    xxx ctermfg=185 guifg=#cbcb41
    DevIconLXDE                                  { fg="#a4a4a4", }, -- DevIconLXDE    xxx ctermfg=248 guifg=#a4a4a4
    DevIconAOSC                                  { fg="#c00000", }, -- DevIconAOSC    xxx ctermfg=124 guifg=#c00000
    DevIconPackageLockJson                       { fg="#7a0d21", }, -- DevIconPackageLockJson xxx ctermfg=52 guifg=#7a0d21
    DevIconGNOME                                 { fg="#ffffff", }, -- DevIconGNOME   xxx ctermfg=231 guifg=#ffffff
    DevIconAi                                    { fg="#cbcb41", }, -- DevIconAi      xxx ctermfg=185 guifg=#cbcb41
    DevIconAlpine                                { fg="#0d597f", }, -- DevIconAlpine  xxx ctermfg=24 guifg=#0d597f
    DevIconCinnamon                              { fg="#dc682e", }, -- DevIconCinnamon xxx ctermfg=166 guifg=#dc682e
    DevIconAlmalinux                             { fg="#ff4649", }, -- DevIconAlmalinux xxx ctermfg=203 guifg=#ff4649
    DevIconBudgie                                { fg="#4e5361", }, -- DevIconBudgie  xxx ctermfg=240 guifg=#4e5361
    DevIconLXQtConfigFile                        { fg="#0192d3", }, -- DevIconLXQtConfigFile xxx ctermfg=32 guifg=#0192d3
    DevIconZorin                                 { fg="#14a1e8", }, -- DevIconZorin   xxx ctermfg=39 guifg=#14a1e8
    DevIconPsManifestfile                        { fg="#6975c4", }, -- DevIconPsManifestfile xxx ctermfg=68 guifg=#6975c4
    DevIconPsScriptModulefile                    { fg="#6975c4", }, -- DevIconPsScriptModulefile xxx ctermfg=68 guifg=#6975c4
    DevIconApple                                 { fg="#a2aaad", }, -- DevIconApple   xxx ctermfg=248 guifg=#a2aaad
    DevIconNodeModules                           { fg="#e8274b", }, -- DevIconNodeModules xxx ctermfg=197 guifg=#e8274b
    DevIconKritarc                               { fg="#f245fb", }, -- DevIconKritarc xxx ctermfg=201 guifg=#f245fb
    DevIconZst                                   { fg="#eca517", }, -- DevIconZst     xxx ctermfg=214 guifg=#eca517
    DevIconKritadisplayrc                        { fg="#f245fb", }, -- DevIconKritadisplayrc xxx ctermfg=201 guifg=#f245fb
    DevIconMl                                    { fg="#e37933", }, -- DevIconMl      xxx ctermfg=166 guifg=#e37933
    DevIconKdenliverc                            { fg="#83b8f2", }, -- DevIconKdenliverc xxx ctermfg=110 guifg=#83b8f2
    DevIconKdenliveLayoutsrc                     { fg="#83b8f2", }, -- DevIconKdenliveLayoutsrc xxx ctermfg=110 guifg=#83b8f2
    DevIconKDEglobals                            { fg="#1c99f3", }, -- DevIconKDEglobals xxx ctermfg=32 guifg=#1c99f3
    DevIconRb                                    { fg="#701516", }, -- DevIconRb      xxx ctermfg=52 guifg=#701516
    DevIconKalgebrarc                            { fg="#1c99f3", }, -- DevIconKalgebrarc xxx ctermfg=32 guifg=#1c99f3
    DevIconXpi                                   { fg="#ff1b01", }, -- DevIconXpi     xxx ctermfg=196 guifg=#ff1b01
    DevIconi3                                    { fg="#e8ebee", }, -- DevIconi3      xxx ctermfg=255 guifg=#e8ebee
    DevIconTrisquelGNULinux                      { fg="#0f58b6", }, -- DevIconTrisquelGNULinux xxx ctermfg=25 guifg=#0f58b6
    DevIconHyprland                              { fg="#00aaae", }, -- DevIconHyprland xxx ctermfg=37 guifg=#00aaae
    DevIconTails                                 { fg="#56347c", }, -- DevIconTails   xxx ctermfg=54 guifg=#56347c
    DevIconGradleWrapperProperties               { fg="#005f87", }, -- DevIconGradleWrapperProperties xxx ctermfg=24 guifg=#005f87
    DevIconSolus                                 { fg="#4b5163", }, -- DevIconSolus   xxx ctermfg=239 guifg=#4b5163
    DevIconVHDL                                  { fg="#019833", }, -- DevIconVHDL    xxx ctermfg=28 guifg=#019833
    DevIconSlackware                             { fg="#475fa9", }, -- DevIconSlackware xxx ctermfg=61 guifg=#475fa9
    DevIconGIMP                                  { fg="#635b46", }, -- DevIconGIMP    xxx ctermfg=240 guifg=#635b46
    DevIconGz                                    { fg="#eca517", }, -- DevIconGz      xxx ctermfg=214 guifg=#eca517
    DevIconKiCadFootprintTable                   { fg="#ffffff", }, -- DevIconKiCadFootprintTable xxx ctermfg=231 guifg=#ffffff
    DevIconSabayon                               { fg="#c6c6c6", }, -- DevIconSabayon xxx ctermfg=251 guifg=#c6c6c6
    DevIconXaml                                  { fg="#512bd4", }, -- DevIconXaml    xxx ctermfg=56 guifg=#512bd4
    DevIconTor                                   { fg="#519aba", }, -- DevIconTor     xxx ctermfg=74 guifg=#519aba
    DevIconFavicon                               { fg="#cbcb41", }, -- DevIconFavicon xxx ctermfg=185 guifg=#cbcb41
    DevIconRockyLinux                            { fg="#0fb37d", }, -- DevIconRockyLinux xxx ctermfg=36 guifg=#0fb37d
    DevIconLogos                                 { fg="#599eff", }, -- DevIconLogos   xxx ctermfg=111 guifg=#599eff
    DevIconC                                     { fg="#599eff", }, -- DevIconC       xxx ctermfg=111 guifg=#599eff
    DevIconReScriptInterface                     { fg="#f55385", }, -- DevIconReScriptInterface xxx ctermfg=204 guifg=#f55385
    DevIconVRML                                  { fg="#888888", }, -- DevIconVRML    xxx ctermfg=102 guifg=#888888
    DevIconReScript                              { fg="#cc3e44", }, -- DevIconReScript xxx ctermfg=167 guifg=#cc3e44
    DevIconCMakeLists                            { fg="#6d8086", }, -- DevIconCMakeLists xxx ctermfg=66 guifg=#6d8086
    DevIconMarkdown                              { fg="#dddddd", }, -- DevIconMarkdown xxx ctermfg=253 guifg=#dddddd
    DevIconGCode                                 { fg="#1471ad", }, -- DevIconGCode   xxx ctermfg=32 guifg=#1471ad
    DevIconQubesOS                               { fg="#3774d8", }, -- DevIconQubesOS xxx ctermfg=33 guifg=#3774d8
    DevIconEx                                    { fg="#a074c4", }, -- DevIconEx      xxx ctermfg=140 guifg=#a074c4
    DevIconPuppyLinux                            { fg="#a2aeb9", }, -- DevIconPuppyLinux xxx ctermfg=145 guifg=#a2aeb9
    DevIconPl                                    { fg="#519aba", }, -- DevIconPl      xxx ctermfg=74 guifg=#519aba
    DevIconGvimrc                                { fg="#019833", }, -- DevIconGvimrc  xxx ctermfg=28 guifg=#019833
    DevIconTs                                    { fg="#519aba", }, -- DevIconTs      xxx ctermfg=74 guifg=#519aba
    DevIconpostmarketOS                          { fg="#009900", }, -- DevIconpostmarketOS xxx ctermfg=28 guifg=#009900
    DevIconCache                                 { fg="#ffffff", }, -- DevIconCache   xxx ctermfg=231 guifg=#ffffff
    DevIconXInitrc                               { fg="#e54d18", }, -- DevIconXInitrc xxx ctermfg=196 guifg=#e54d18
    DevIconCMake                                 { fg="#6d8086", }, -- DevIconCMake   xxx ctermfg=66 guifg=#6d8086
    DevIconTypoScript                            { fg="#ff8700", }, -- DevIconTypoScript xxx ctermfg=208 guifg=#ff8700
    DevIconSRCINFO                               { fg="#0f94d2", }, -- DevIconSRCINFO xxx ctermfg=67 guifg=#0f94d2
    DevIconPyi                                   { fg="#ffbc03", }, -- DevIconPyi     xxx ctermfg=214 guifg=#ffbc03
    DevIconSettingsJson                          { fg="#854cc7", }, -- DevIconSettingsJson xxx ctermfg=98 guifg=#854cc7
    DevIconPyx                                   { fg="#5aa7e4", }, -- DevIconPyx     xxx ctermfg=39 guifg=#5aa7e4
    DevIconParabolaGNULinuxLibre                 { fg="#797dac", }, -- DevIconParabolaGNULinuxLibre xxx ctermfg=103 guifg=#797dac
    DevIconPxd                                   { fg="#5aa7e4", }, -- DevIconPxd     xxx ctermfg=39 guifg=#5aa7e4
    DevIconH                                     { fg="#a074c4", }, -- DevIconH       xxx ctermfg=140 guifg=#a074c4
    DevIconopenSUSE                              { fg="#6fb424", }, -- DevIconopenSUSE xxx ctermfg=70 guifg=#6fb424
    DevIconVerilog                               { fg="#019833", }, -- DevIconVerilog xxx ctermfg=28 guifg=#019833
    DevIconGTK                                   { fg="#ffffff", }, -- DevIconGTK     xxx ctermfg=231 guifg=#ffffff
    DevIconGitlabCI                              { fg="#e24329", }, -- DevIconGitlabCI xxx ctermfg=196 guifg=#e24329
    DevIconNixOS                                 { fg="#7ab1db", }, -- DevIconNixOS   xxx ctermfg=110 guifg=#7ab1db
    DevIconEslintIgnore                          { fg="#4b32c3", }, -- DevIconEslintIgnore xxx ctermfg=56 guifg=#4b32c3
    DevIconMXLinux                               { fg="#ffffff", }, -- DevIconMXLinux xxx ctermfg=231 guifg=#ffffff
    DevIconManjaro                               { fg="#33b959", }, -- DevIconManjaro xxx ctermfg=35 guifg=#33b959
    DevIconMageia                                { fg="#2397d4", }, -- DevIconMageia  xxx ctermfg=67 guifg=#2397d4
    DevIconBazelBuild                            { fg="#89e051", }, -- DevIconBazelBuild xxx ctermfg=113 guifg=#89e051
    DevIconDownload                              { fg="#44cda8", }, -- DevIconDownload xxx ctermfg=43 guifg=#44cda8
    DevIconLocOS                                 { fg="#fab402", }, -- DevIconLocOS   xxx ctermfg=214 guifg=#fab402
    DevIconKubuntu                               { fg="#007ac2", }, -- DevIconKubuntu xxx ctermfg=32 guifg=#007ac2
    DevIconWindows                               { fg="#00a4ef", }, -- DevIconWindows xxx ctermfg=39 guifg=#00a4ef
    DevIconKali                                  { fg="#2777ff", }, -- DevIconKali    xxx ctermfg=69 guifg=#2777ff
    DevIconIllumos                               { fg="#ff430f", }, -- DevIconIllumos xxx ctermfg=196 guifg=#ff430f
    DevIconConfiguration                         { fg="#6d8086", }, -- DevIconConfiguration xxx ctermfg=66 guifg=#6d8086
    DevIconHyperbolaGNULinuxLibre                { fg="#c0c0c0", }, -- DevIconHyperbolaGNULinuxLibre xxx ctermfg=250 guifg=#c0c0c0
    DevIconGuix                                  { fg="#ffcc00", }, -- DevIconGuix    xxx ctermfg=220 guifg=#ffcc00
    DevIconGentoo                                { fg="#b1abce", }, -- DevIconGentoo  xxx ctermfg=146 guifg=#b1abce
    DevIconGarudaLinux                           { fg="#2974e1", }, -- DevIconGarudaLinux xxx ctermfg=33 guifg=#2974e1
    DevIconBash                                  { fg="#89e051", }, -- DevIconBash    xxx ctermfg=113 guifg=#89e051
    DevIconFedora                                { fg="#072a5e", }, -- DevIconFedora  xxx ctermfg=17 guifg=#072a5e
    DevIconXml                                   { fg="#e37933", }, -- DevIconXml     xxx ctermfg=166 guifg=#e37933
    DevIconSystemVerilog                         { fg="#019833", }, -- DevIconSystemVerilog xxx ctermfg=28 guifg=#019833
    DevIconVlang                                 { fg="#5d87bf", }, -- DevIconVlang   xxx ctermfg=67 guifg=#5d87bf
    DevIconZig                                   { fg="#f69a1b", }, -- DevIconZig     xxx ctermfg=172 guifg=#f69a1b
    DevIconYml                                   { fg="#6d8086", }, -- DevIconYml     xxx ctermfg=66 guifg=#6d8086
    DevIconQuery                                 { fg="#90a850", }, -- DevIconQuery   xxx ctermfg=107 guifg=#90a850
    DevIconXorgConf                              { fg="#e54d18", }, -- DevIconXorgConf xxx ctermfg=196 guifg=#e54d18
    DevIconPKGBUILD                              { fg="#0f94d2", }, -- DevIconPKGBUILD xxx ctermfg=67 guifg=#0f94d2
    DevIconCSharpProject                         { fg="#512bd4", }, -- DevIconCSharpProject xxx ctermfg=56 guifg=#512bd4
    DevIconEnv                                   { fg="#faf743", }, -- DevIconEnv     xxx ctermfg=227 guifg=#faf743
    DevIconBashrc                                { fg="#89e051", }, -- DevIconBashrc  xxx ctermfg=113 guifg=#89e051
    DevIconRss                                   { fg="#fb9d3b", }, -- DevIconRss     xxx ctermfg=215 guifg=#fb9d3b
    DevIconXul                                   { fg="#e37933", }, -- DevIconXul     xxx ctermfg=166 guifg=#e37933
    DevIconThunderbird                           { fg="#137be1", }, -- DevIconThunderbird xxx ctermfg=33 guifg=#137be1
    DevIconVue                                   { fg="#8dc149", }, -- DevIconVue     xxx ctermfg=113 guifg=#8dc149
    DevIconGulpfile                              { fg="#cc3e44", }, -- DevIconGulpfile xxx ctermfg=167 guifg=#cc3e44
    DevIconVala                                  { fg="#7239b3", }, -- DevIconVala    xxx ctermfg=91 guifg=#7239b3
    DevIconOrgMode                               { fg="#77aa99", }, -- DevIconOrgMode xxx ctermfg=73 guifg=#77aa99
    DevIconGodotProject                          { fg="#6d8086", }, -- DevIconGodotProject xxx ctermfg=66 guifg=#6d8086
    DevIconBinaryGLTF                            { fg="#ffb13b", }, -- DevIconBinaryGLTF xxx ctermfg=214 guifg=#ffb13b
    DevIconHaxe                                  { fg="#ea8220", }, -- DevIconHaxe    xxx ctermfg=208 guifg=#ea8220
    DevIconGitCommit                             { fg="#f54d27", }, -- DevIconGitCommit xxx ctermfg=196 guifg=#f54d27
    DevIconLinux                                 { fg="#fdfdfb", }, -- DevIconLinux   xxx ctermfg=231 guifg=#fdfdfb
    DevIconFsscript                              { fg="#519aba", }, -- DevIconFsscript xxx ctermfg=74 guifg=#519aba
    DevIconFsharp                                { fg="#519aba", }, -- DevIconFsharp  xxx ctermfg=74 guifg=#519aba
    DevIconFlac                                  { fg="#66d8ef", }, -- DevIconFlac    xxx ctermfg=45 guifg=#66d8ef
    DevIconMakefile                              { fg="#6d8086", }, -- DevIconMakefile xxx ctermfg=66 guifg=#6d8086
    DevIconDropbox                               { fg="#0061fe", }, -- DevIconDropbox xxx ctermfg=27 guifg=#0061fe
    DevIconDrools                                { fg="#ffafaf", }, -- DevIconDrools  xxx ctermfg=217 guifg=#ffafaf
    DevIconDocx                                  { fg="#185abd", }, -- DevIconDocx    xxx ctermfg=26 guifg=#185abd
    DevIconDoc                                   { fg="#185abd", }, -- DevIconDoc     xxx ctermfg=26 guifg=#185abd
    DevIconCp                                    { fg="#519aba", }, -- DevIconCp      xxx ctermfg=74 guifg=#519aba
    DevIconCson                                  { fg="#cbcb41", }, -- DevIconCson    xxx ctermfg=185 guifg=#cbcb41
    DevIconCoffee                                { fg="#cbcb41", }, -- DevIconCoffee  xxx ctermfg=185 guifg=#cbcb41
    DevIconBmp                                   { fg="#a074c4", }, -- DevIconBmp     xxx ctermfg=140 guifg=#a074c4
    DevIconAac                                   { fg="#66d8ef", }, -- DevIconAac     xxx ctermfg=45 guifg=#66d8ef
    DevIconGradleWrapperScript                   { fg="#005f87", }, -- DevIconGradleWrapperScript xxx ctermfg=24 guifg=#005f87
    DevIconVagrantfile                           { fg="#1563ff", }, -- DevIconVagrantfile xxx ctermfg=27 guifg=#1563ff
    DevIconLicense                               { fg="#d0bf41", }, -- DevIconLicense xxx ctermfg=185 guifg=#d0bf41
    DevIconOgg                                   { fg="#66d8ef", }, -- DevIconOgg     xxx ctermfg=45 guifg=#66d8ef
    DevIconFreeCAD                               { fg="#cb0d0d", }, -- DevIconFreeCAD xxx ctermfg=160 guifg=#cb0d0d
    DevIconGemfile                               { fg="#701516", }, -- DevIconGemfile xxx ctermfg=52 guifg=#701516
    DevIconOPUS                                  { fg="#f88a02", }, -- DevIconOPUS    xxx ctermfg=208 guifg=#f88a02
    DevIconBrewfile                              { fg="#701516", }, -- DevIconBrewfile xxx ctermfg=52 guifg=#701516
    DevIconAvif                                  { fg="#a074c4", }, -- DevIconAvif    xxx ctermfg=140 guifg=#a074c4
    DevIcon3DObjectFile                          { fg="#888888", }, -- DevIcon3DObjectFile xxx ctermfg=102 guifg=#888888
    DevIconPng                                   { fg="#a074c4", }, -- DevIconPng     xxx ctermfg=140 guifg=#a074c4
    DevIconPyd                                   { fg="#ffe291", }, -- DevIconPyd     xxx ctermfg=222 guifg=#ffe291
    DevIconWasm                                  { fg="#5c4cdb", }, -- DevIconWasm    xxx ctermfg=62 guifg=#5c4cdb
    DevIconFusion360                             { fg="#839463", }, -- DevIconFusion360 xxx ctermfg=101 guifg=#839463
    DevIconWebp                                  { fg="#a074c4", }, -- DevIconWebp    xxx ctermfg=140 guifg=#a074c4
    DevIconWebpack                               { fg="#519aba", }, -- DevIconWebpack xxx ctermfg=74 guifg=#519aba
    DevIconXcPlayground                          { fg="#e37933", }, -- DevIconXcPlayground xxx ctermfg=166 guifg=#e37933
    DevIconExe                                   { fg="#9f0500", }, -- DevIconExe     xxx ctermfg=124 guifg=#9f0500
    DevIconSublime                               { fg="#e37933", }, -- DevIconSublime xxx ctermfg=166 guifg=#e37933
    DevIconStyl                                  { fg="#8dc149", }, -- DevIconStyl    xxx ctermfg=113 guifg=#8dc149
    DevIconSql                                   { fg="#dad8d8", }, -- DevIconSql     xxx ctermfg=188 guifg=#dad8d8
    DevIconHtml                                  { fg="#e44d26", }, -- DevIconHtml    xxx ctermfg=196 guifg=#e44d26
    DevIconEpub                                  { fg="#eab16d", }, -- DevIconEpub    xxx ctermfg=215 guifg=#eab16d
    DevIconXlsx                                  { fg="#207245", }, -- DevIconXlsx    xxx ctermfg=29 guifg=#207245
    DevIconXls                                   { fg="#207245", }, -- DevIconXls     xxx ctermfg=29 guifg=#207245
    DevIconEmbeddedOpenTypeFont                  { fg="#ececec", }, -- DevIconEmbeddedOpenTypeFont xxx ctermfg=255 guifg=#ececec
    DevIconRlib                                  { fg="#dea584", }, -- DevIconRlib    xxx ctermfg=216 guifg=#dea584
    DevIconWav                                   { fg="#66d8ef", }, -- DevIconWav     xxx ctermfg=45 guifg=#66d8ef
    DevIconMkv                                   { fg="#fd971f", }, -- DevIconMkv     xxx ctermfg=208 guifg=#fd971f
    DevIconMdx                                   { fg="#519aba", }, -- DevIconMdx     xxx ctermfg=74 guifg=#519aba
    DevIconM4V                                   { fg="#fd971f", }, -- DevIconM4V     xxx ctermfg=208 guifg=#fd971f
    DevIconElisp                                 { fg="#8172be", }, -- DevIconElisp   xxx ctermfg=97 guifg=#8172be
    DevIconPsb                                   { fg="#519aba", }, -- DevIconPsb     xxx ctermfg=74 guifg=#519aba
    DevIconCss                                   { fg="#42a5f5", }, -- DevIconCss     xxx ctermfg=75 guifg=#42a5f5
    DevIconEbook                                 { fg="#eab16d", }, -- DevIconEbook   xxx ctermfg=215 guifg=#eab16d
    DevIconAutoCADDxf                            { fg="#839463", }, -- DevIconAutoCADDxf xxx ctermfg=101 guifg=#839463
    DevIconAutoCADDwg                            { fg="#839463", }, -- DevIconAutoCADDwg xxx ctermfg=101 guifg=#839463
    DevIconOpenBSD                               { fg="#f2ca30", }, -- DevIconOpenBSD xxx ctermfg=220 guifg=#f2ca30
    DevIconArduino                               { fg="#56b6c2", }, -- DevIconArduino xxx ctermfg=73 guifg=#56b6c2
    DevIconRar                                   { fg="#eca517", }, -- DevIconRar     xxx ctermfg=214 guifg=#eca517
    DevIconxmonad                                { fg="#fd4d5d", }, -- DevIconxmonad  xxx ctermfg=203 guifg=#fd4d5d
    DevIconSway                                  { fg="#68751c", }, -- DevIconSway    xxx ctermfg=64 guifg=#68751c
    DevIconDll                                   { fg="#4d2c0b", }, -- DevIconDll     xxx ctermfg=52 guifg=#4d2c0b
    DevIconGitLogo                               { fg="#f14c28", }, -- DevIconGitLogo xxx ctermfg=196 guifg=#f14c28
    DevIconImportConfiguration                   { fg="#ececec", }, -- DevIconImportConfiguration xxx ctermfg=255 guifg=#ececec
    DevIconDconf                                 { fg="#ffffff", }, -- DevIconDconf   xxx ctermfg=231 guifg=#ffffff
    DevIconM3u                                   { fg="#ed95ae", }, -- DevIconM3u     xxx ctermfg=211 guifg=#ed95ae
    DevIconHeex                                  { fg="#a074c4", }, -- DevIconHeex    xxx ctermfg=140 guifg=#a074c4
    DevIconPxi                                   { fg="#5aa7e4", }, -- DevIconPxi     xxx ctermfg=39 guifg=#5aa7e4
    DevIconPub                                   { fg="#e3c58e", }, -- DevIconPub     xxx ctermfg=222 guifg=#e3c58e
    DevIconHs                                    { fg="#a074c4", }, -- DevIconHs      xxx ctermfg=140 guifg=#a074c4
    DevIconCrdownload                            { fg="#44cda8", }, -- DevIconCrdownload xxx ctermfg=43 guifg=#44cda8
    DevIconHbs                                   { fg="#f0772b", }, -- DevIconHbs     xxx ctermfg=202 guifg=#f0772b
    DevIconAsciinema                             { fg="#fd971f", }, -- DevIconAsciinema xxx ctermfg=208 guifg=#fd971f
    DevIconHaml                                  { fg="#eaeae1", }, -- DevIconHaml    xxx ctermfg=255 guifg=#eaeae1
    DevIconTerminal                              { fg="#31b53e", }, -- DevIconTerminal xxx ctermfg=34 guifg=#31b53e
    DevIconConfigRu                              { fg="#701516", }, -- DevIconConfigRu xxx ctermfg=52 guifg=#701516
    DevIconClojureDart                           { fg="#519aba", }, -- DevIconClojureDart xxx ctermfg=74 guifg=#519aba
    DevIconGraphQL                               { fg="#e535ab", }, -- DevIconGraphQL xxx ctermfg=199 guifg=#e535ab
    DevIconPdf                                   { fg="#b30b00", }, -- DevIconPdf     xxx ctermfg=124 guifg=#b30b00
    DevIconErl                                   { fg="#b83998", }, -- DevIconErl     xxx ctermfg=163 guifg=#b83998
    DevIconBz3                                   { fg="#eca517", }, -- DevIconBz3     xxx ctermfg=214 guifg=#eca517
    DevIconLuau                                  { fg="#00a2ff", }, -- DevIconLuau    xxx ctermfg=75 guifg=#00a2ff
    DevIconBz2                                   { fg="#eca517", }, -- DevIconBz2     xxx ctermfg=214 guifg=#eca517
    DevIconGodotTextResource                     { fg="#6d8086", }, -- DevIconGodotTextResource xxx ctermfg=66 guifg=#6d8086
    DevIconBz                                    { fg="#eca517", }, -- DevIconBz      xxx ctermfg=214 guifg=#eca517
    DevIconBlueprint                             { fg="#5796e2", }, -- DevIconBlueprint xxx ctermfg=68 guifg=#5796e2
    DevIconBoundaryRepresentation                { fg="#839463", }, -- DevIconBoundaryRepresentation xxx ctermfg=101 guifg=#839463
    DevIconConfig                                { fg="#6d8086", }, -- DevIconConfig  xxx ctermfg=66 guifg=#6d8086
    DevIconFsi                                   { fg="#519aba", }, -- DevIconFsi     xxx ctermfg=74 guifg=#519aba
    DevIconBlade                                 { fg="#f05340", }, -- DevIconBlade   xxx ctermfg=203 guifg=#f05340
    DevIconBibTeX                                { fg="#cbcb41", }, -- DevIconBibTeX  xxx ctermfg=185 guifg=#cbcb41
    DevIconTSConfig                              { fg="#519aba", }, -- DevIconTSConfig xxx ctermfg=74 guifg=#519aba
    DevIconLiquid                                { fg="#95bf47", }, -- DevIconLiquid  xxx ctermfg=106 guifg=#95bf47
    DevIconAzureCli                              { fg="#0078d4", }, -- DevIconAzureCli xxx ctermfg=32 guifg=#0078d4
    DevIconPatch                                 { fg="#41535b", }, -- DevIconPatch   xxx ctermfg=239 guifg=#41535b
    DevIconIni                                   { fg="#6d8086", }, -- DevIconIni     xxx ctermfg=66 guifg=#6d8086
    DevIconFortran                               { fg="#734f96", }, -- DevIconFortran xxx ctermfg=97 guifg=#734f96
    DevIconAsc                                   { fg="#576d7f", }, -- DevIconAsc     xxx ctermfg=242 guifg=#576d7f
    DevIconLess                                  { fg="#563d7c", }, -- DevIconLess    xxx ctermfg=54 guifg=#563d7c
    DevIconMint                                  { fg="#87c095", }, -- DevIconMint    xxx ctermfg=108 guifg=#87c095
    DevIconAstro                                 { fg="#e23f67", }, -- DevIconAstro   xxx ctermfg=197 guifg=#e23f67
    DevIconCts                                   { fg="#519aba", }, -- DevIconCts     xxx ctermfg=74 guifg=#519aba
    DevIconApp                                   { fg="#9f0500", }, -- DevIconApp     xxx ctermfg=124 guifg=#9f0500
    DevIconapk                                   { fg="#34a853", }, -- DevIconapk     xxx ctermfg=35 guifg=#34a853
    DevIconNim                                   { fg="#f3d400", }, -- DevIconNim     xxx ctermfg=220 guifg=#f3d400
    DevIconAndroid                               { fg="#34a853", }, -- DevIconAndroid xxx ctermfg=35 guifg=#34a853
    DevIconAppleScript                           { fg="#6d8085", }, -- DevIconAppleScript xxx ctermfg=66 guifg=#6d8085
    DevIconMustache                              { fg="#e37933", }, -- DevIconMustache xxx ctermfg=166 guifg=#e37933
    DevIconZigObjectNotation                     { fg="#f69a1b", }, -- DevIconZigObjectNotation xxx ctermfg=172 guifg=#f69a1b
    DevIconDot                                   { fg="#30638e", }, -- DevIconDot     xxx ctermfg=24 guifg=#30638e
    DevIconUI                                    { fg="#0c306e", }, -- DevIconUI      xxx ctermfg=17 guifg=#0c306e
    DevIconDump                                  { fg="#dad8d8", }, -- DevIconDump    xxx ctermfg=188 guifg=#dad8d8
    DevIconBat                                   { fg="#c1f12e", }, -- DevIconBat     xxx ctermfg=191 guifg=#c1f12e
    DevIconWeston                                { fg="#ffbb01", }, -- DevIconWeston  xxx ctermfg=214 guifg=#ffbb01
    DevIconStep                                  { fg="#839463", }, -- DevIconStep    xxx ctermfg=101 guifg=#839463
    DevIconWebmanifest                           { fg="#f1e05a", }, -- DevIconWebmanifest xxx ctermfg=185 guifg=#f1e05a
    DevIconVLC                                   { fg="#ee7a00", }, -- DevIconVLC     xxx ctermfg=208 guifg=#ee7a00
    DevIconTxz                                   { fg="#eca517", }, -- DevIconTxz     xxx ctermfg=214 guifg=#eca517
    DevIconTmux                                  { fg="#14ba19", }, -- DevIconTmux    xxx ctermfg=34 guifg=#14ba19
    DevIconYaml                                  { fg="#6d8086", }, -- DevIconYaml    xxx ctermfg=66 guifg=#6d8086
    DevIconCjs                                   { fg="#cbcb41", }, -- DevIconCjs     xxx ctermfg=185 guifg=#cbcb41
    DevIconLog                                   { fg="#dddddd", }, -- DevIconLog     xxx ctermfg=253 guifg=#dddddd
    DevIconTypoScriptConfig                      { fg="#ff8700", }, -- DevIconTypoScriptConfig xxx ctermfg=208 guifg=#ff8700
    DevIconTailwindConfig                        { fg="#20c2e3", }, -- DevIconTailwindConfig xxx ctermfg=45 guifg=#20c2e3
    DevIconKiCadSymbolTable                      { fg="#ffffff", }, -- DevIconKiCadSymbolTable xxx ctermfg=231 guifg=#ffffff
    DevIconFdmdownload                           { fg="#44cda8", }, -- DevIconFdmdownload xxx ctermfg=43 guifg=#44cda8
    DevIconRazorPage                             { fg="#512bd4", }, -- DevIconRazorPage xxx ctermfg=56 guifg=#512bd4
    DevIconImg                                   { fg="#d0bec8", }, -- DevIconImg     xxx ctermfg=181 guifg=#d0bec8
    DevIconCs                                    { fg="#596706", }, -- DevIconCs      xxx ctermfg=58 guifg=#596706
    DevIconPyc                                   { fg="#ffe291", }, -- DevIconPyc     xxx ctermfg=222 guifg=#ffe291
    DevIconGo                                    { fg="#519aba", }, -- DevIconGo      xxx ctermfg=74 guifg=#519aba
    DevIconObjectFile                            { fg="#9f0500", }, -- DevIconObjectFile xxx ctermfg=124 guifg=#9f0500
    DevIconStp                                   { fg="#839463", }, -- DevIconStp     xxx ctermfg=101 guifg=#839463
    DevIconTgz                                   { fg="#eca517", }, -- DevIconTgz     xxx ctermfg=214 guifg=#eca517
    DevIconAwk                                   { fg="#4d5a5e", }, -- DevIconAwk     xxx ctermfg=240 guifg=#4d5a5e
    DevIconLhs                                   { fg="#a074c4", }, -- DevIconLhs     xxx ctermfg=140 guifg=#a074c4
    DevIconCxxm                                  { fg="#519aba", }, -- DevIconCxxm    xxx ctermfg=74 guifg=#519aba
    DevIconCppm                                  { fg="#519aba", }, -- DevIconCppm    xxx ctermfg=74 guifg=#519aba
    DevIconCPlusPlusModule                       { fg="#f34b7d", }, -- DevIconCPlusPlusModule xxx ctermfg=204 guifg=#f34b7d
    DevIconHpp                                   { fg="#a074c4", }, -- DevIconHpp     xxx ctermfg=140 guifg=#a074c4
    DevIconHxx                                   { fg="#a074c4", }, -- DevIconHxx     xxx ctermfg=140 guifg=#a074c4
    DevIconPsd                                   { fg="#519aba", }, -- DevIconPsd     xxx ctermfg=74 guifg=#519aba
    DevIconCxx                                   { fg="#519aba", }, -- DevIconCxx     xxx ctermfg=74 guifg=#519aba
    DevIconCPlusPlus                             { fg="#f34b7d", }, -- DevIconCPlusPlus xxx ctermfg=204 guifg=#f34b7d
    DevIconTypeScriptReactTest                   { fg="#1354bf", }, -- DevIconTypeScriptReactTest xxx ctermfg=26 guifg=#1354bf
    DevIconSolidity                              { fg="#519aba", }, -- DevIconSolidity xxx ctermfg=74 guifg=#519aba
    DevIconTestTs                                { fg="#519aba", }, -- DevIconTestTs  xxx ctermfg=74 guifg=#519aba
    DevIconDsStore                               { fg="#41535b", }, -- DevIconDsStore xxx ctermfg=239 guifg=#41535b
    DevIconJavaScriptReactTest                   { fg="#20c2e3", }, -- DevIconJavaScriptReactTest xxx ctermfg=45 guifg=#20c2e3
    DevIconMts                                   { fg="#519aba", }, -- DevIconMts     xxx ctermfg=74 guifg=#519aba
    DevIconTwig                                  { fg="#8dc149", }, -- DevIconTwig    xxx ctermfg=113 guifg=#8dc149
    DevIconTestJs                                { fg="#cbcb41", }, -- DevIconTestJs  xxx ctermfg=185 guifg=#cbcb41
    DevIconSml                                   { fg="#e37933", }, -- DevIconSml     xxx ctermfg=166 guifg=#e37933
    DevIconBabelrc                               { fg="#cbcb41", }, -- DevIconBabelrc xxx ctermfg=185 guifg=#cbcb41
    DevIconGradleSettings                        { fg="#005f87", }, -- DevIconGradleSettings xxx ctermfg=24 guifg=#005f87
    DevIconFennel                                { fg="#fff3d7", }, -- DevIconFennel  xxx ctermfg=230 guifg=#fff3d7
    DevIconSln                                   { fg="#854cc7", }, -- DevIconSln     xxx ctermfg=98 guifg=#854cc7
    DevIcon3gp                                   { fg="#fd971f", }, -- DevIcon3gp     xxx ctermfg=208 guifg=#fd971f
    DevIconSub                                   { fg="#ffb713", }, -- DevIconSub     xxx ctermfg=214 guifg=#ffb713
    DevIconHuff                                  { fg="#4242c7", }, -- DevIconHuff    xxx ctermfg=56 guifg=#4242c7
    DevIconTFVars                                { fg="#5f43e9", }, -- DevIconTFVars  xxx ctermfg=93 guifg=#5f43e9
    DevIconArch                                  { fg="#0f94d2", }, -- DevIconArch    xxx ctermfg=67 guifg=#0f94d2
    DevIconCobol                                 { fg="#005ca5", }, -- DevIconCobol   xxx ctermfg=25 guifg=#005ca5
    DevIconLib                                   { fg="#4d2c0b", }, -- DevIconLib     xxx ctermfg=52 guifg=#4d2c0b
    DevIconCantorrc                              { fg="#1c99f3", }, -- DevIconCantorrc xxx ctermfg=32 guifg=#1c99f3
    DevIconNswag                                 { fg="#85ea2d", }, -- DevIconNswag   xxx ctermfg=112 guifg=#85ea2d
    DevIconClojureJS                             { fg="#519aba", }, -- DevIconClojureJS xxx ctermfg=74 guifg=#519aba
    DevIconClojureC                              { fg="#8dc149", }, -- DevIconClojureC xxx ctermfg=113 guifg=#8dc149
    DevIconFs                                    { fg="#519aba", }, -- DevIconFs      xxx ctermfg=74 guifg=#519aba
    DevIconJsonc                                 { fg="#cbcb41", }, -- DevIconJsonc   xxx ctermfg=185 guifg=#cbcb41
    DevIconLeex                                  { fg="#a074c4", }, -- DevIconLeex    xxx ctermfg=140 guifg=#a074c4
    DevIconNfo                                   { fg="#ffffcd", }, -- DevIconNfo     xxx ctermfg=230 guifg=#ffffcd
    DevIconPackageJson                           { fg="#e8274b", }, -- DevIconPackageJson xxx ctermfg=197 guifg=#e8274b
    DevIconXcLocalization                        { fg="#2596be", }, -- DevIconXcLocalization xxx ctermfg=31 guifg=#2596be
    DevIconGradleProperties                      { fg="#005f87", }, -- DevIconGradleProperties xxx ctermfg=24 guifg=#005f87
    DevIconDesktopEntry                          { fg="#563d7c", }, -- DevIconDesktopEntry xxx ctermfg=54 guifg=#563d7c
    DevIconSrt                                   { fg="#ffb713", }, -- DevIconSrt     xxx ctermfg=214 guifg=#ffb713
    DevIconSsa                                   { fg="#ffb713", }, -- DevIconSsa     xxx ctermfg=214 guifg=#ffb713
    DevIconConf                                  { fg="#6d8086", }, -- DevIconConf    xxx ctermfg=66 guifg=#6d8086
    DevIconMd5                                   { fg="#8c86af", }, -- DevIconMd5     xxx ctermfg=103 guifg=#8c86af
    DevIconSwift                                 { fg="#e37933", }, -- DevIconSwift   xxx ctermfg=166 guifg=#e37933
    DevIconMpp                                   { fg="#519aba", }, -- DevIconMpp     xxx ctermfg=74 guifg=#519aba
    DevIconClojure                               { fg="#8dc149", }, -- DevIconClojure xxx ctermfg=113 guifg=#8dc149
    DevIconSte                                   { fg="#839463", }, -- DevIconSte     xxx ctermfg=101 guifg=#839463
    DevIconSvg                                   { fg="#ffb13b", }, -- DevIconSvg     xxx ctermfg=214 guifg=#ffb13b
    DevIconHurl                                  { fg="#ff0288", }, -- DevIconHurl    xxx ctermfg=198 guifg=#ff0288
    DevIconTypoScriptSetup                       { fg="#ff8700", }, -- DevIconTypoScriptSetup xxx ctermfg=208 guifg=#ff8700
    DevIconSvelte                                { fg="#ff3e00", }, -- DevIconSvelte  xxx ctermfg=196 guifg=#ff3e00
    DevIconSketchUp                              { fg="#839463", }, -- DevIconSketchUp xxx ctermfg=101 guifg=#839463
    DevIcon7z                                    { fg="#eca517", }, -- DevIcon7z      xxx ctermfg=214 guifg=#eca517
    DevIconMli                                   { fg="#e37933", }, -- DevIconMli     xxx ctermfg=166 guifg=#e37933
    DevIconXsession                              { fg="#e54d18", }, -- DevIconXsession xxx ctermfg=196 guifg=#e54d18
    DevIconTypeScriptReactSpec                   { fg="#1354bf", }, -- DevIconTypeScriptReactSpec xxx ctermfg=26 guifg=#1354bf
    DevIconSpecTs                                { fg="#519aba", }, -- DevIconSpecTs  xxx ctermfg=74 guifg=#519aba
    DevIconLua                                   { fg="#51a0cf", }, -- DevIconLua     xxx ctermfg=74 guifg=#51a0cf
    DevIconJavaScriptReactSpec                   { fg="#20c2e3", }, -- DevIconJavaScriptReactSpec xxx ctermfg=45 guifg=#20c2e3
    DevIconXauthority                            { fg="#e54d18", }, -- DevIconXauthority xxx ctermfg=196 guifg=#e54d18
    DevIconSpecJs                                { fg="#cbcb41", }, -- DevIconSpecJs  xxx ctermfg=185 guifg=#cbcb41
    DevIconBashProfile                           { fg="#89e051", }, -- DevIconBashProfile xxx ctermfg=113 guifg=#89e051
    DevIconJava                                  { fg="#cc3e44", }, -- DevIconJava    xxx ctermfg=167 guifg=#cc3e44
    DevIconRmd                                   { fg="#519aba", }, -- DevIconRmd     xxx ctermfg=74 guifg=#519aba
    DevIconPrettierConfig                        { fg="#4285f4", }, -- DevIconPrettierConfig xxx ctermfg=33 guifg=#4285f4
    DevIconBackup                                { fg="#6d8086", }, -- DevIconBackup  xxx ctermfg=66 guifg=#6d8086
    DevIconMailmap                               { fg="#41535b", }, -- DevIconMailmap xxx ctermfg=239 guifg=#41535b
    DevIconGv                                    { fg="#30638e", }, -- DevIconGv      xxx ctermfg=24 guifg=#30638e
    DevIconTcl                                   { fg="#1e5cb3", }, -- DevIconTcl     xxx ctermfg=25 guifg=#1e5cb3
    DevIconEslintrc                              { fg="#4b32c3", }, -- DevIconEslintrc xxx ctermfg=56 guifg=#4b32c3
    DevIconSolveSpace                            { fg="#839463", }, -- DevIconSolveSpace xxx ctermfg=101 guifg=#839463
    DevIconJs                                    { fg="#cbcb41", }, -- DevIconJs      xxx ctermfg=185 guifg=#cbcb41
    DevIconLibrecadFontFile                      { fg="#ececec", }, -- DevIconLibrecadFontFile xxx ctermfg=255 guifg=#ececec
    DevIconXSettingsdConf                        { fg="#e54d18", }, -- DevIconXSettingsdConf xxx ctermfg=196 guifg=#e54d18
    DevIconKrita                                 { fg="#f245fb", }, -- DevIconKrita   xxx ctermfg=201 guifg=#f245fb
    DevIconSolidWorksPrt                         { fg="#839463", }, -- DevIconSolidWorksPrt xxx ctermfg=101 guifg=#839463
    DevIconStaticLibraryArchive                  { fg="#dcddd6", }, -- DevIconStaticLibraryArchive xxx ctermfg=253 guifg=#dcddd6
    DevIconSolidWorksAsm                         { fg="#839463", }, -- DevIconSolidWorksAsm xxx ctermfg=101 guifg=#839463
    DevIconMaven                                 { fg="#7a0d21", }, -- DevIconMaven   xxx ctermfg=52 guifg=#7a0d21
    DevIconSignature                             { fg="#e37933", }, -- DevIconSignature xxx ctermfg=166 guifg=#e37933
    DevIconEditorConfig                          { fg="#fff2f2", }, -- DevIconEditorConfig xxx ctermfg=255 guifg=#fff2f2
    DevIconKiCad                                 { fg="#ffffff", }, -- DevIconKiCad   xxx ctermfg=231 guifg=#ffffff
    DevIconSha512                                { fg="#8c86af", }, -- DevIconSha512  xxx ctermfg=103 guifg=#8c86af
    DevIconTxt                                   { fg="#89e051", }, -- DevIconTxt     xxx ctermfg=113 guifg=#89e051
    DevIconFreeCADConfig                         { fg="#cb0d0d", }, -- DevIconFreeCADConfig xxx ctermfg=160 guifg=#cb0d0d
    DevIconSha384                                { fg="#8c86af", }, -- DevIconSha384  xxx ctermfg=103 guifg=#8c86af
    DevIconScalaScript                           { fg="#cc3e44", }, -- DevIconScalaScript xxx ctermfg=167 guifg=#cc3e44
    DevIconSha224                                { fg="#8c86af", }, -- DevIconSha224  xxx ctermfg=103 guifg=#8c86af
    DevIconGDScript                              { fg="#6d8086", }, -- DevIconGDScript xxx ctermfg=66 guifg=#6d8086
    DevIconSha1                                  { fg="#8c86af", }, -- DevIconSha1    xxx ctermfg=103 guifg=#8c86af
    DevIconGroovy                                { fg="#4a687c", }, -- DevIconGroovy  xxx ctermfg=24 guifg=#4a687c
    DevIconKdenlive                              { fg="#83b8f2", }, -- DevIconKdenlive xxx ctermfg=110 guifg=#83b8f2
    DevIconPart                                  { fg="#44cda8", }, -- DevIconPart    xxx ctermfg=43 guifg=#44cda8
    DevIconJpg                                   { fg="#a074c4", }, -- DevIconJpg     xxx ctermfg=140 guifg=#a074c4
    DevIconSig                                   { fg="#e37933", }, -- DevIconSig     xxx ctermfg=166 guifg=#e37933
    DevIconKsh                                   { fg="#4d5a5e", }, -- DevIconKsh     xxx ctermfg=240 guifg=#4d5a5e
    DevIconIco                                   { fg="#cbcb41", }, -- DevIconIco     xxx ctermfg=185 guifg=#cbcb41
    DevIconPpt                                   { fg="#cb4a32", }, -- DevIconPpt     xxx ctermfg=160 guifg=#cb4a32
    DevIconXeroLinux                             { fg="#888fe2", }, -- DevIconXeroLinux xxx ctermfg=104 guifg=#888fe2
    DevIconVanillaOS                             { fg="#fabd4d", }, -- DevIconVanillaOS xxx ctermfg=214 guifg=#fabd4d
    DevIconUbuntu                                { fg="#dd4814", }, -- DevIconUbuntu  xxx ctermfg=196 guifg=#dd4814
    DevIconKdb                                   { fg="#529b34", }, -- DevIconKdb     xxx ctermfg=71 guifg=#529b34
    DevIconRaspberryPiOS                         { fg="#be1848", }, -- DevIconRaspberryPiOS xxx ctermfg=161 guifg=#be1848
    DevIconKbx                                   { fg="#737672", }, -- DevIconKbx     xxx ctermfg=243 guifg=#737672
    DevIconAss                                   { fg="#ffb713", }, -- DevIconAss     xxx ctermfg=214 guifg=#ffb713
    DevIconObjectiveCPlusPlus                    { fg="#519aba", }, -- DevIconObjectiveCPlusPlus xxx ctermfg=74 guifg=#519aba
    DevIconCentos                                { fg="#a2518d", }, -- DevIconCentos  xxx ctermfg=132 guifg=#a2518d
    DevIconObjectiveC                            { fg="#599eff", }, -- DevIconObjectiveC xxx ctermfg=111 guifg=#599eff
    DevIconJpegXl                                { fg="#a074c4", }, -- DevIconJpegXl  xxx ctermfg=140 guifg=#a074c4
    DevIconArtix                                 { fg="#41b4d7", }, -- DevIconArtix   xxx ctermfg=38 guifg=#41b4d7
    DevIconProlog                                { fg="#e4b854", }, -- DevIconProlog  xxx ctermfg=179 guifg=#e4b854
    DevIconFreeBSD                               { fg="#c90f02", }, -- DevIconFreeBSD xxx ctermfg=160 guifg=#c90f02
    DevIconParrot                                { fg="#54deff", }, -- DevIconParrot  xxx ctermfg=45 guifg=#54deff
    DevIconArchcraft                             { fg="#86bba3", }, -- DevIconArchcraft xxx ctermfg=108 guifg=#86bba3
    DevIconPrisma                                { fg="#5a67d8", }, -- DevIconPrisma  xxx ctermfg=62 guifg=#5a67d8
    DevIconVoid                                  { fg="#295340", }, -- DevIconVoid    xxx ctermfg=23 guifg=#295340
    DevIconLXLE                                  { fg="#474747", }, -- DevIconLXLE    xxx ctermfg=238 guifg=#474747
    DevIconGradleBuildScript                     { fg="#005f87", }, -- DevIconGradleBuildScript xxx ctermfg=24 guifg=#005f87
    DevIconCrystal                               { fg="#c8c8c8", }, -- DevIconCrystal xxx ctermfg=251 guifg=#c8c8c8
    DevIconHtm                                   { fg="#e34c26", }, -- DevIconHtm     xxx ctermfg=196 guifg=#e34c26
    DevIconHh                                    { fg="#a074c4", }, -- DevIconHh      xxx ctermfg=140 guifg=#a074c4
    DevIconIcal                                  { fg="#2b2e83", }, -- DevIconIcal    xxx ctermfg=18 guifg=#2b2e83
    DevIconKDEPlasma                             { fg="#1b89f4", }, -- DevIconKDEPlasma xxx ctermfg=33 guifg=#1b89f4
    DevIconInfo                                  { fg="#ffffcd", }, -- DevIconInfo    xxx ctermfg=230 guifg=#ffffcd
    DevIconIso                                   { fg="#d0bec8", }, -- DevIconIso     xxx ctermfg=181 guifg=#d0bec8
    DevIconGitModules                            { fg="#f54d27", }, -- DevIconGitModules xxx ctermfg=196 guifg=#f54d27
    DevIconRedhat                                { fg="#ee0000", }, -- DevIconRedhat  xxx ctermfg=196 guifg=#ee0000
    DevIconSh                                    { fg="#4d5a5e", }, -- DevIconSh      xxx ctermfg=240 guifg=#4d5a5e
    DevIconZsh                                   { fg="#89e051", }, -- DevIconZsh     xxx ctermfg=113 guifg=#89e051
    DevIconJWM                                   { fg="#0078cd", }, -- DevIconJWM     xxx ctermfg=32 guifg=#0078cd
    DevIconEdn                                   { fg="#519aba", }, -- DevIconEdn     xxx ctermfg=74 guifg=#519aba
    DevIconKiCadCache                            { fg="#ffffff", }, -- DevIconKiCadCache xxx ctermfg=231 guifg=#ffffff
    DevIconMATE                                  { fg="#9bda5c", }, -- DevIconMATE    xxx ctermfg=113 guifg=#9bda5c
    DevIconIgs                                   { fg="#839463", }, -- DevIconIgs     xxx ctermfg=101 guifg=#839463
    DevIconcudah                                 { fg="#a074c4", }, -- DevIconcudah   xxx ctermfg=140 guifg=#a074c4
    DevIconIges                                  { fg="#839463", }, -- DevIconIges    xxx ctermfg=101 guifg=#839463
    DevIconFluxbox                               { fg="#555555", }, -- DevIconFluxbox xxx ctermfg=240 guifg=#555555
    DevIconIge                                   { fg="#839463", }, -- DevIconIge     xxx ctermfg=101 guifg=#839463
    DevIconcuda                                  { fg="#89e051", }, -- DevIconcuda    xxx ctermfg=113 guifg=#89e051
    DevIconIfc                                   { fg="#839463", }, -- DevIconIfc     xxx ctermfg=101 guifg=#839463
    DevIconRproj                                 { fg="#358a5b", }, -- DevIconRproj   xxx ctermfg=29 guifg=#358a5b
    DevIconIfb                                   { fg="#2b2e83", }, -- DevIconIfb     xxx ctermfg=18 guifg=#2b2e83
    DevIconPp                                    { fg="#ffa61a", }, -- DevIconPp      xxx ctermfg=214 guifg=#ffa61a
    DevIconBlender                               { fg="#ea7600", }, -- DevIconBlender xxx ctermfg=208 guifg=#ea7600
    DevIconProcfile                              { fg="#a074c4", }, -- DevIconProcfile xxx ctermfg=140 guifg=#a074c4
    DevIconIcs                                   { fg="#2b2e83", }, -- DevIconIcs     xxx ctermfg=18 guifg=#2b2e83
    DevIconDebian                                { fg="#a80030", }, -- DevIconDebian  xxx ctermfg=88 guifg=#a80030
    DevIconIcalendar                             { fg="#2b2e83", }, -- DevIconIcalendar xxx ctermfg=18 guifg=#2b2e83
    DevIconBin                                   { fg="#9f0500", }, -- DevIconBin     xxx ctermfg=124 guifg=#9f0500
    DevIconGif                                   { fg="#a074c4", }, -- DevIconGif     xxx ctermfg=140 guifg=#a074c4
    DevIconIxx                                   { fg="#519aba", }, -- DevIconIxx     xxx ctermfg=74 guifg=#519aba
    DevIconWebm                                  { fg="#fd971f", }, -- DevIconWebm    xxx ctermfg=208 guifg=#fd971f
    DevIconQtile                                 { fg="#ffffff", }, -- DevIconQtile   xxx ctermfg=231 guifg=#ffffff
    DevIconScala                                 { fg="#cc3e44", }, -- DevIconScala   xxx ctermfg=167 guifg=#cc3e44
    DevIconKotlin                                { fg="#7f52ff", }, -- DevIconKotlin  xxx ctermfg=99 guifg=#7f52ff
    DevIconKotlinScript                          { fg="#7f52ff", }, -- DevIconKotlinScript xxx ctermfg=99 guifg=#7f52ff
    DevIconGruntfile                             { fg="#e37933", }, -- DevIconGruntfile xxx ctermfg=166 guifg=#e37933
    DevIconMOV                                   { fg="#fd971f", }, -- DevIconMOV     xxx ctermfg=208 guifg=#fd971f
    DevIconJl                                    { fg="#a270ba", }, -- DevIconJl      xxx ctermfg=133 guifg=#a270ba
    DevIconVim                                   { fg="#019833", }, -- DevIconVim     xxx ctermfg=28 guifg=#019833
    DevIconJsx                                   { fg="#20c2e3", }, -- DevIconJsx     xxx ctermfg=45 guifg=#20c2e3
    DevIconCheckhealth                           { fg="#75b4fb", }, -- DevIconCheckhealth xxx ctermfg=75 guifg=#75b4fb
    DevIconTorrent                               { fg="#44cda8", }, -- DevIconTorrent xxx ctermfg=43 guifg=#44cda8
    DevIconPsScriptfile                          { fg="#4273ca", }, -- DevIconPsScriptfile xxx ctermfg=68 guifg=#4273ca
    DevIconGitIgnore                             { fg="#f54d27", }, -- DevIconGitIgnore xxx ctermfg=196 guifg=#f54d27
    DevIconBazelWorkspace                        { fg="#89e051", }, -- DevIconBazelWorkspace xxx ctermfg=113 guifg=#89e051
    DevIconGitAttributes                         { fg="#f54d27", }, -- DevIconGitAttributes xxx ctermfg=196 guifg=#f54d27
    DevIconPhp                                   { fg="#a074c4", }, -- DevIconPhp     xxx ctermfg=140 guifg=#a074c4
    DevIconVimrc                                 { fg="#019833", }, -- DevIconVimrc   xxx ctermfg=28 guifg=#019833
    DevIconGitConfig                             { fg="#f54d27", }, -- DevIconGitConfig xxx ctermfg=196 guifg=#f54d27
    DevIconD                                     { fg="#427819", }, -- DevIconD       xxx ctermfg=28 guifg=#427819
    DevIconMobi                                  { fg="#eab16d", }, -- DevIconMobi    xxx ctermfg=215 guifg=#eab16d
    DevIconTsx                                   { fg="#1354bf", }, -- DevIconTsx     xxx ctermfg=26 guifg=#1354bf
    DevIconLock                                  { fg="#bbbbbb", }, -- DevIconLock    xxx ctermfg=250 guifg=#bbbbbb
    DevIconGodotTextScene                        { fg="#6d8086", }, -- DevIconGodotTextScene xxx ctermfg=66 guifg=#6d8086
    DevIconPm                                    { fg="#519aba", }, -- DevIconPm      xxx ctermfg=74 guifg=#519aba
    DevIconMotoko                                { fg="#9772fb", }, -- DevIconMotoko  xxx ctermfg=135 guifg=#9772fb
    DevIconPyo                                   { fg="#ffe291", }, -- DevIconPyo     xxx ctermfg=222 guifg=#ffe291
    DevIconLinuxKernelObject                     { fg="#dcddd6", }, -- DevIconLinuxKernelObject xxx ctermfg=253 guifg=#dcddd6
    DevIconFsx                                   { fg="#519aba", }, -- DevIconFsx     xxx ctermfg=74 guifg=#519aba
    DevIconJpeg                                  { fg="#a074c4", }, -- DevIconJpeg    xxx ctermfg=140 guifg=#a074c4
    DevIconOpenTypeFont                          { fg="#ececec", }, -- DevIconOpenTypeFont xxx ctermfg=255 guifg=#ececec
    DevIconKdbx                                  { fg="#529b34", }, -- DevIconKdbx    xxx ctermfg=71 guifg=#529b34
    DevIconLXDEConfigFile                        { fg="#909090", }, -- DevIconLXDEConfigFile xxx ctermfg=246 guifg=#909090
    DevIconBazel                                 { fg="#89e051", }, -- DevIconBazel   xxx ctermfg=113 guifg=#89e051
    DevIconDart                                  { fg="#03589c", }, -- DevIconDart    xxx ctermfg=25 guifg=#03589c
    DevIconElm                                   { fg="#519aba", }, -- DevIconElm     xxx ctermfg=74 guifg=#519aba
    DevIconToml                                  { fg="#9c4221", }, -- DevIconToml    xxx ctermfg=124 guifg=#9c4221
    DevIconMixLock                               { fg="#a074c4", }, -- DevIconMixLock xxx ctermfg=140 guifg=#a074c4
    DevIconCsh                                   { fg="#4d5a5e", }, -- DevIconCsh     xxx ctermfg=240 guifg=#4d5a5e
    DevIconMagnet                                { fg="#a51b16", }, -- DevIconMagnet  xxx ctermfg=124 guifg=#a51b16
    DevIconCpp                                   { fg="#519aba", }, -- DevIconCpp     xxx ctermfg=74 guifg=#519aba
    DevIconExs                                   { fg="#a074c4", }, -- DevIconExs     xxx ctermfg=140 guifg=#a074c4
    DevIconFish                                  { fg="#4d5a5e", }, -- DevIconFish    xxx ctermfg=240 guifg=#4d5a5e
    DevIconCsv                                   { fg="#89e051", }, -- DevIconCsv     xxx ctermfg=113 guifg=#89e051
    DevIconMpv                                   { fg="#3b1342", }, -- DevIconMpv     xxx ctermfg=53 guifg=#3b1342
    DevIconJson5                                 { fg="#cbcb41", }, -- DevIconJson5   xxx ctermfg=185 guifg=#cbcb41
    DevIconNPMrc                                 { fg="#e8274b", }, -- DevIconNPMrc   xxx ctermfg=197 guifg=#e8274b
    DevIconEex                                   { fg="#a074c4", }, -- DevIconEex     xxx ctermfg=140 guifg=#a074c4
    DevIconDb                                    { fg="#dad8d8", }, -- DevIconDb      xxx ctermfg=188 guifg=#dad8d8
    DevIconPls                                   { fg="#ed95ae", }, -- DevIconPls     xxx ctermfg=211 guifg=#ed95ae
    DevIconElf                                   { fg="#9f0500", }, -- DevIconElf     xxx ctermfg=124 guifg=#9f0500
    DevIconMaterial                              { fg="#b83998", }, -- DevIconMaterial xxx ctermfg=163 guifg=#b83998
    DevIconM4A                                   { fg="#66d8ef", }, -- DevIconM4A     xxx ctermfg=45 guifg=#66d8ef
    DevIconM3u8                                  { fg="#ed95ae", }, -- DevIconM3u8    xxx ctermfg=211 guifg=#ed95ae
    DevIconEpp                                   { fg="#ffa61a", }, -- DevIconEpp     xxx ctermfg=214 guifg=#ffa61a
    DevIconKDEneon                               { fg="#20a6a4", }, -- DevIconKDEneon xxx ctermfg=37 guifg=#20a6a4
    DevIconHrl                                   { fg="#b83998", }, -- DevIconHrl     xxx ctermfg=163 guifg=#b83998
    DevIconNotebook                              { fg="#51a0cf", }, -- DevIconNotebook xxx ctermfg=74 guifg=#51a0cf
    DevIconErb                                   { fg="#701516", }, -- DevIconErb     xxx ctermfg=52 guifg=#701516
    DevIconMjs                                   { fg="#f1e05a", }, -- DevIconMjs     xxx ctermfg=185 guifg=#f1e05a
    DevIconSharedObject                          { fg="#dcddd6", }, -- DevIconSharedObject xxx ctermfg=253 guifg=#dcddd6
    DevIconFIGletFontControl                     { fg="#ececec", }, -- DevIconFIGletFontControl xxx ctermfg=255 guifg=#ececec
    DevIconFIGletFontFormat                      { fg="#ececec", }, -- DevIconFIGletFontFormat xxx ctermfg=255 guifg=#ececec
    DevIconEjs                                   { fg="#cbcb41", }, -- DevIconEjs     xxx ctermfg=185 guifg=#cbcb41
    DevIconNPMIgnore                             { fg="#e8274b", }, -- DevIconNPMIgnore xxx ctermfg=197 guifg=#e8274b
    DevIconNushell                               { fg="#3aa675", }, -- DevIconNushell xxx ctermfg=36 guifg=#3aa675
    DevIconVsix                                  { fg="#854cc7", }, -- DevIconVsix    xxx ctermfg=98 guifg=#854cc7
    DevIconPop_OS                                { fg="#48b9c7", }, -- DevIconPop_OS  xxx ctermfg=73 guifg=#48b9c7
    DevIconNix                                   { fg="#7ebae4", }, -- DevIconNix     xxx ctermfg=110 guifg=#7ebae4
    DevIconZshenv                                { fg="#89e051", }, -- DevIconZshenv  xxx ctermfg=113 guifg=#89e051
    DevIconZshprofile                            { fg="#89e051", }, -- DevIconZshprofile xxx ctermfg=113 guifg=#89e051
    DevIconZshrc                                 { fg="#89e051", }, -- DevIconZshrc   xxx ctermfg=113 guifg=#89e051
    DevIconawesome                               { fg="#535d6c", }, -- DevIconawesome xxx ctermfg=59 guifg=#535d6c
    DevIconElementary                            { fg="#5890c2", }, -- DevIconElementary xxx ctermfg=67 guifg=#5890c2
    DevIconLrc                                   { fg="#ffb713", }, -- DevIconLrc     xxx ctermfg=214 guifg=#ffb713
    DevIconMd                                    { fg="#dddddd", }, -- DevIconMd      xxx ctermfg=253 guifg=#dddddd
    DevIconHexadecimal                           { fg="#2e63ff", }, -- DevIconHexadecimal xxx ctermfg=27 guifg=#2e63ff
    DevIconSass                                  { fg="#f55385", }, -- DevIconSass    xxx ctermfg=204 guifg=#f55385
    DevIconSlim                                  { fg="#e34c26", }, -- DevIconSlim    xxx ctermfg=196 guifg=#e34c26
    DevIconSuo                                   { fg="#854cc7", }, -- DevIconSuo     xxx ctermfg=98 guifg=#854cc7
    DevIconPackedResource                        { fg="#6d8086", }, -- DevIconPackedResource xxx ctermfg=66 guifg=#6d8086
    BufferCurrent                                { bg="#222222", fg="#cccccc", }, -- BufferCurrent  xxx guifg=#cccccc guibg=#222222
    BufferDefaultCurrentBtn                      { BufferCurrent }, -- BufferDefaultCurrentBtn xxx links to BufferCurrent
    BufferDefaultCurrentIcon                     { BufferCurrent }, -- BufferDefaultCurrentIcon xxx links to BufferCurrent
    BufferDefaultCurrentPin                      { BufferCurrent }, -- BufferDefaultCurrentPin xxx links to BufferCurrent
    BufferDefaultCurrent                         { fg="#efefef", gui="bold", }, -- BufferDefaultCurrent xxx cterm=bold ctermfg=255 gui=bold guifg=#efefef
    BufferDefaultCurrentADDED                    { fg="#b3f6c0", gui="bold", }, -- BufferDefaultCurrentADDED xxx cterm=bold ctermfg=10 gui=bold guifg=#b3f6c0
    BufferCurrentADDED                           { BufferDefaultCurrentADDED }, -- BufferCurrentADDED xxx links to BufferDefaultCurrentADDED
    BufferDefaultCurrentCHANGED                  { fg="#8cf8f7", gui="bold", }, -- BufferDefaultCurrentCHANGED xxx cterm=bold ctermfg=14 gui=bold guifg=#8cf8f7
    BufferCurrentCHANGED                         { BufferDefaultCurrentCHANGED }, -- BufferCurrentCHANGED xxx links to BufferDefaultCurrentCHANGED
    BufferDefaultCurrentDELETED                  { fg="#ffc0b9", gui="bold", }, -- BufferDefaultCurrentDELETED xxx cterm=bold ctermfg=9 gui=bold guifg=#ffc0b9
    BufferCurrentDELETED                         { BufferDefaultCurrentDELETED }, -- BufferCurrentDELETED xxx links to BufferDefaultCurrentDELETED
    BufferDefaultCurrentERROR                    { fg="#ffc0b9", gui="bold", }, -- BufferDefaultCurrentERROR xxx cterm=bold ctermfg=9 gui=bold guifg=#ffc0b9
    BufferCurrentERROR                           { BufferDefaultCurrentERROR }, -- BufferCurrentERROR xxx links to BufferDefaultCurrentERROR
    BufferDefaultCurrentHINT                     { fg="#a6dbff", gui="bold", }, -- BufferDefaultCurrentHINT xxx cterm=bold ctermfg=12 gui=bold guifg=#a6dbff
    BufferCurrentHINT                            { BufferDefaultCurrentHINT }, -- BufferCurrentHINT xxx links to BufferDefaultCurrentHINT
    BufferDefaultCurrentIndex                    { fg="#8cf8f7", gui="bold", }, -- BufferDefaultCurrentIndex xxx cterm=bold ctermfg=14 gui=bold guifg=#8cf8f7
    BufferCurrentIndex                           { BufferDefaultCurrentIndex }, -- BufferCurrentIndex xxx links to BufferDefaultCurrentIndex
    BufferDefaultCurrentINFO                     { fg="#8cf8f7", gui="bold", }, -- BufferDefaultCurrentINFO xxx cterm=bold ctermfg=14 gui=bold guifg=#8cf8f7
    BufferCurrentINFO                            { BufferDefaultCurrentINFO }, -- BufferCurrentINFO xxx links to BufferDefaultCurrentINFO
    BufferCurrentMod                             { bg="#444444", fg="#00ccff", }, -- BufferCurrentMod xxx guifg=#00ccff guibg=#444444
    BufferDefaultCurrentModBtn                   { BufferCurrentMod }, -- BufferDefaultCurrentModBtn xxx links to BufferCurrentMod
    BufferDefaultCurrentMod                      { fg="#fce094", gui="bold", }, -- BufferDefaultCurrentMod xxx cterm=bold ctermfg=11 gui=bold guifg=#fce094
    BufferDefaultCurrentSign                     { fg="#8cf8f7", gui="bold", }, -- BufferDefaultCurrentSign xxx cterm=bold ctermfg=14 gui=bold guifg=#8cf8f7
    BufferCurrentSign                            { BufferDefaultCurrentSign }, -- BufferCurrentSign xxx links to BufferDefaultCurrentSign
    BufferDefaultCurrentTarget                   { fg="red", gui="bold", }, -- BufferDefaultCurrentTarget xxx cterm=bold ctermfg=9 gui=bold guifg=Red
    BufferCurrentTarget                          { BufferDefaultCurrentTarget }, -- BufferCurrentTarget xxx links to BufferDefaultCurrentTarget
    BufferDefaultCurrentWARN                     { fg="#fce094", gui="bold", }, -- BufferDefaultCurrentWARN xxx cterm=bold ctermfg=11 gui=bold guifg=#fce094
    BufferCurrentWARN                            { BufferDefaultCurrentWARN }, -- BufferCurrentWARN xxx links to BufferDefaultCurrentWARN
    BufferDefaultInactive                        { bg="#2c2e33", fg="#c4c6cd", }, -- BufferDefaultInactive xxx cterm=bold ctermfg=255 guifg=#c4c6cd guibg=#2c2e33
    BufferInactive                               { BufferDefaultInactive }, -- BufferInactive xxx links to BufferDefaultInactive
    BufferDefaultInactiveADDED                   { bg="#2c2e33", fg="#b3f6c0", }, -- BufferDefaultInactiveADDED xxx cterm=bold ctermfg=10 guifg=#b3f6c0 guibg=#2c2e33
    BufferInactiveADDED                          { BufferDefaultInactiveADDED }, -- BufferInactiveADDED xxx links to BufferDefaultInactiveADDED
    BufferDefaultInactiveCHANGED                 { bg="#2c2e33", fg="#8cf8f7", }, -- BufferDefaultInactiveCHANGED xxx cterm=bold ctermfg=14 guifg=#8cf8f7 guibg=#2c2e33
    BufferInactiveCHANGED                        { BufferDefaultInactiveCHANGED }, -- BufferInactiveCHANGED xxx links to BufferDefaultInactiveCHANGED
    BufferDefaultInactiveDELETED                 { bg="#2c2e33", fg="#ffc0b9", }, -- BufferDefaultInactiveDELETED xxx cterm=bold ctermfg=9 guifg=#ffc0b9 guibg=#2c2e33
    BufferInactiveDELETED                        { BufferDefaultInactiveDELETED }, -- BufferInactiveDELETED xxx links to BufferDefaultInactiveDELETED
    BufferDefaultInactiveERROR                   { bg="#2c2e33", fg="#ffc0b9", }, -- BufferDefaultInactiveERROR xxx cterm=bold ctermfg=9 guifg=#ffc0b9 guibg=#2c2e33
    BufferInactiveERROR                          { BufferDefaultInactiveERROR }, -- BufferInactiveERROR xxx links to BufferDefaultInactiveERROR
    BufferDefaultInactiveHINT                    { bg="#2c2e33", fg="#a6dbff", }, -- BufferDefaultInactiveHINT xxx cterm=bold ctermfg=12 guifg=#a6dbff guibg=#2c2e33
    BufferInactiveHINT                           { BufferDefaultInactiveHINT }, -- BufferInactiveHINT xxx links to BufferDefaultInactiveHINT
    BufferDefaultInactiveIndex                   { bg="#2c2e33", fg="#4f5258", }, -- BufferDefaultInactiveIndex xxx cterm=bold ctermfg=240 guifg=#4f5258 guibg=#2c2e33
    BufferInactiveIndex                          { BufferDefaultInactiveIndex }, -- BufferInactiveIndex xxx links to BufferDefaultInactiveIndex
    BufferDefaultInactiveINFO                    { bg="#2c2e33", fg="#8cf8f7", }, -- BufferDefaultInactiveINFO xxx cterm=bold ctermfg=14 guifg=#8cf8f7 guibg=#2c2e33
    BufferInactiveINFO                           { BufferDefaultInactiveINFO }, -- BufferInactiveINFO xxx links to BufferDefaultInactiveINFO
    BufferDefaultInactiveMod                     { bg="#2c2e33", fg="#fce094", }, -- BufferDefaultInactiveMod xxx cterm=bold ctermfg=11 guifg=#fce094 guibg=#2c2e33
    BufferInactiveMod                            { BufferDefaultInactiveMod }, -- BufferInactiveMod xxx links to BufferDefaultInactiveMod
    BufferDefaultInactiveSign                    { bg="#2c2e33", fg="#4f5258", }, -- BufferDefaultInactiveSign xxx cterm=bold ctermfg=240 guifg=#4f5258 guibg=#2c2e33
    BufferInactiveSign                           { BufferDefaultInactiveSign }, -- BufferInactiveSign xxx links to BufferDefaultInactiveSign
    BufferDefaultInactiveTarget                  { bg="#2c2e33", fg="red", gui="bold", }, -- BufferDefaultInactiveTarget xxx cterm=bold ctermfg=9 gui=bold guifg=Red guibg=#2c2e33
    BufferInactiveTarget                         { BufferDefaultInactiveTarget }, -- BufferInactiveTarget xxx links to BufferDefaultInactiveTarget
    BufferDefaultInactiveWARN                    { bg="#2c2e33", fg="#fce094", }, -- BufferDefaultInactiveWARN xxx cterm=bold ctermfg=11 guifg=#fce094 guibg=#2c2e33
    BufferInactiveWARN                           { BufferDefaultInactiveWARN }, -- BufferInactiveWARN xxx links to BufferDefaultInactiveWARN
    BufferDefaultTabpagesSep                     { bg="#2c2e33", fg="#e0e2ea", gui="bold", }, -- BufferDefaultTabpagesSep xxx cterm=bold ctermfg=255 gui=bold guifg=#e0e2ea guibg=#2c2e33
    BufferScrollArrow                            { BufferDefaultTabpagesSep }, -- BufferScrollArrow xxx links to BufferDefaultTabpagesSep
    BufferTabpagesSep                            { BufferDefaultTabpagesSep }, -- BufferTabpagesSep xxx links to BufferDefaultTabpagesSep
    BufferDefaultTabpageFill                     { bg="#2c2e33", fg="#c4c6cd", }, -- BufferDefaultTabpageFill xxx ctermfg=102 guifg=#c4c6cd guibg=#2c2e33
    BufferTabpageFill                            { BufferDefaultTabpageFill }, -- BufferTabpageFill xxx links to BufferDefaultTabpageFill
    BufferDefaultTabpages                        { bg="#2c2e33", fg="#e0e2ea", gui="bold", }, -- BufferDefaultTabpages xxx cterm=bold ctermfg=75 gui=bold guifg=#e0e2ea guibg=#2c2e33
    BufferTabpages                               { BufferDefaultTabpages }, -- BufferTabpages xxx links to BufferDefaultTabpages
    BufferDefaultVisible                         { bg="#2c2e33", fg="#c4c6cd", }, -- BufferDefaultVisible xxx cterm=bold ctermfg=255 guifg=#c4c6cd guibg=#2c2e33
    BufferVisible                                { BufferDefaultVisible }, -- BufferVisible  xxx links to BufferDefaultVisible
    BufferDefaultVisibleADDED                    { bg="#2c2e33", fg="#fce094", }, -- BufferDefaultVisibleADDED xxx cterm=bold ctermfg=11 guifg=#fce094 guibg=#2c2e33
    BufferVisibleADDED                           { BufferDefaultVisibleADDED }, -- BufferVisibleADDED xxx links to BufferDefaultVisibleADDED
    BufferDefaultVisibleCHANGED                  { bg="#2c2e33", fg="#fce094", }, -- BufferDefaultVisibleCHANGED xxx cterm=bold ctermfg=11 guifg=#fce094 guibg=#2c2e33
    BufferVisibleCHANGED                         { BufferDefaultVisibleCHANGED }, -- BufferVisibleCHANGED xxx links to BufferDefaultVisibleCHANGED
    BufferDefaultVisibleDELETED                  { bg="#2c2e33", fg="#fce094", }, -- BufferDefaultVisibleDELETED xxx cterm=bold ctermfg=11 guifg=#fce094 guibg=#2c2e33
    BufferVisibleDELETED                         { BufferDefaultVisibleDELETED }, -- BufferVisibleDELETED xxx links to BufferDefaultVisibleDELETED
    BufferDefaultVisibleERROR                    { bg="#2c2e33", fg="#ffc0b9", }, -- BufferDefaultVisibleERROR xxx cterm=bold ctermfg=9 guifg=#ffc0b9 guibg=#2c2e33
    BufferVisibleERROR                           { BufferDefaultVisibleERROR }, -- BufferVisibleERROR xxx links to BufferDefaultVisibleERROR
    BufferDefaultVisibleHINT                     { bg="#2c2e33", fg="#a6dbff", }, -- BufferDefaultVisibleHINT xxx cterm=bold ctermfg=12 guifg=#a6dbff guibg=#2c2e33
    BufferVisibleHINT                            { BufferDefaultVisibleHINT }, -- BufferVisibleHINT xxx links to BufferDefaultVisibleHINT
    BufferDefaultVisibleIndex                    { bg="#2c2e33", fg="#c4c6cd", }, -- BufferDefaultVisibleIndex xxx cterm=bold ctermfg=255 guifg=#c4c6cd guibg=#2c2e33
    BufferVisibleIndex                           { BufferDefaultVisibleIndex }, -- BufferVisibleIndex xxx links to BufferDefaultVisibleIndex
    BufferDefaultVisibleINFO                     { bg="#2c2e33", fg="#8cf8f7", }, -- BufferDefaultVisibleINFO xxx cterm=bold ctermfg=14 guifg=#8cf8f7 guibg=#2c2e33
    BufferVisibleINFO                            { BufferDefaultVisibleINFO }, -- BufferVisibleINFO xxx links to BufferDefaultVisibleINFO
    BufferDefaultVisibleMod                      { bg="#2c2e33", fg="#fce094", }, -- BufferDefaultVisibleMod xxx cterm=bold ctermfg=11 guifg=#fce094 guibg=#2c2e33
    BufferVisibleMod                             { BufferDefaultVisibleMod }, -- BufferVisibleMod xxx links to BufferDefaultVisibleMod
    BufferDefaultVisibleSign                     { bg="#2c2e33", fg="#c4c6cd", }, -- BufferDefaultVisibleSign xxx cterm=bold ctermfg=255 guifg=#c4c6cd guibg=#2c2e33
    BufferVisibleSign                            { BufferDefaultVisibleSign }, -- BufferVisibleSign xxx links to BufferDefaultVisibleSign
    BufferDefaultVisibleTarget                   { bg="#2c2e33", fg="red", gui="bold", }, -- BufferDefaultVisibleTarget xxx cterm=bold ctermfg=9 gui=bold guifg=Red guibg=#2c2e33
    BufferVisibleTarget                          { BufferDefaultVisibleTarget }, -- BufferVisibleTarget xxx links to BufferDefaultVisibleTarget
    BufferDefaultVisibleWARN                     { bg="#2c2e33", fg="#fce094", }, -- BufferDefaultVisibleWARN xxx cterm=bold ctermfg=11 guifg=#fce094 guibg=#2c2e33
    BufferVisibleWARN                            { BufferDefaultVisibleWARN }, -- BufferVisibleWARN xxx links to BufferDefaultVisibleWARN
    DevIconLuaCurrent                            { bg="#222222", fg="#51a0cf", }, -- DevIconLuaCurrent xxx ctermfg=74 guifg=#51a0cf guibg=#222222
    sym"@punctuation.bracket"                    { fg="#8cff48", }, -- @punctuation.bracket xxx guifg=#8cff48
    sym"@punctuation.delimiter"                  { fg="#3ddbd9", }, -- @punctuation.delimiter xxx guifg=#3ddbd9
    sym"@keyword.operator"                       { fg="#3ddbd9", }, -- @keyword.operator xxx guifg=#3ddbd9
    sym"@function.macro"                         { fg="#08bdba", }, -- @function.macro xxx guifg=#08bdba
    sym"@parameter"                              { fg="#ffb53d", }, -- @parameter     xxx guifg=#ffb53d
    sym"@namespace"                              { fg="#08bdba", }, -- @namespace     xxx guifg=#08bdba
    sym"@tag.delimiter"                          { fg="#82cfff", }, -- @tag.delimiter xxx guifg=#82cfff
    sym"@tag.attribute"                          { fg="#82cfff", }, -- @tag.attribute xxx guifg=#82cfff
    sym"@keyword.function"                       { fg="#ff7eb6", }, -- @keyword.function xxx guifg=#ff7eb6
    sym"@string.documentation"                   { fg="#697077", gui="italic", }, -- @string.documentation xxx cterm=italic gui=italic guifg=#697077
    ZenBg                                        { bg="#131419", fg="#131419", }, -- ZenBg          xxx guifg=#131419 guibg=#131419
    CodeiumSuggestion                            { bg="#222222", fg="#444444", }, -- CodeiumSuggestion xxx guifg=#444444 guibg=#222222
    Dash                                         { bg="#222222", gui="bold", }, -- Dash           xxx cterm=bold gui=bold guibg=#222222
    HawtkeysMatchOk                              { fg="#fce094", }, -- HawtkeysMatchOk xxx ctermfg=11 guifg=#fce094
    HawtkeysMatchGood                            { fg="#b3f6c0", }, -- HawtkeysMatchGood xxx ctermfg=10 guifg=#b3f6c0
    HawtkeysMatchGreat                           { fg="#b3f6c0", gui="underline", }, -- HawtkeysMatchGreat xxx cterm=underline ctermfg=10 gui=underline guifg=#b3f6c0
    HawtkeysMatchBad                             { fg="#ffc0b9", }, -- HawtkeysMatchBad xxx ctermfg=9 guifg=#ffc0b9
    ModesCopy                                    { bg="#ae81ff", }, -- ModesCopy      xxx guibg=#ae81ff
    ModesDelete                                  { bg="#ff7575", }, -- ModesDelete    xxx guibg=#ff7575
    ModesInsert                                  { bg="#222222", }, -- ModesInsert    xxx guibg=#222222
    ModesVisual                                  { bg="#ffee58", }, -- ModesVisual    xxx guibg=#ffee58
    ModesCopyCursorLine                          { bg="#3b3154", }, -- ModesCopyCursorLine xxx guibg=#3b3154
    ModesCopyCursorLineNr                        { bg="#3b3154", }, -- ModesCopyCursorLineNr xxx guibg=#3b3154
    ModesCopyCursorLineSign                      { bg="#3b3154", }, -- ModesCopyCursorLineSign xxx guibg=#3b3154
    ModesCopyCursorLineFold                      { bg="#3b3154", }, -- ModesCopyCursorLineFold xxx guibg=#3b3154
    ModesDeleteCursorLine                        { bg="#4f2e32", }, -- ModesDeleteCursorLine xxx guibg=#4f2e32
    ModesDeleteCursorLineNr                      { bg="#4f2e32", }, -- ModesDeleteCursorLineNr xxx guibg=#4f2e32
    ModesDeleteCursorLineSign                    { bg="#4f2e32", }, -- ModesDeleteCursorLineSign xxx guibg=#4f2e32
    ModesDeleteCursorLineFold                    { bg="#4f2e32", }, -- ModesDeleteCursorLineFold xxx guibg=#4f2e32
    ModesInsertCursorLine                        { bg="#18191d", }, -- ModesInsertCursorLine xxx guibg=#18191d
    ModesInsertCursorLineNr                      { bg="#18191d", }, -- ModesInsertCursorLineNr xxx guibg=#18191d
    ModesInsertCursorLineSign                    { bg="#18191d", }, -- ModesInsertCursorLineSign xxx guibg=#18191d
    ModesInsertCursorLineFold                    { bg="#18191d", }, -- ModesInsertCursorLineFold xxx guibg=#18191d
    ModesVisualCursorLine                        { bg="#4f4c2a", }, -- ModesVisualCursorLine xxx guibg=#4f4c2a
    ModesVisualCursorLineNr                      { bg="#4f4c2a", }, -- ModesVisualCursorLineNr xxx guibg=#4f4c2a
    ModesVisualCursorLineSign                    { bg="#4f4c2a", }, -- ModesVisualCursorLineSign xxx guibg=#4f4c2a
    ModesVisualCursorLineFold                    { bg="#4f4c2a", }, -- ModesVisualCursorLineFold xxx guibg=#4f4c2a
    ModesInsertModeMsg                           { fg="#222222", }, -- ModesInsertModeMsg xxx guifg=#222222
    ModesVisualModeMsg                           { fg="#ffee58", }, -- ModesVisualModeMsg xxx guifg=#ffee58
    ModesVisualVisual                            { bg="#4f4c2a", }, -- ModesVisualVisual xxx guibg=#4f4c2a
    sym"@field"                                  { fg="#d4bbff", }, -- @field         xxx guifg=#d4bbff
    BufferLineBufferSelected                     { bg="#282828", fg="#9e9e9e", gui="bold", }, -- BufferLineBufferSelected xxx cterm=bold gui=bold guifg=#9e9e9e guibg=#282828
    termcolorcode_cfg_5_gfg_AA00AA               { fg="#ff79ff", }, -- termcolorcode_cfg_5_gfg_AA00AA xxx guifg=#ff79ff
    termcolorcode_cfg_39_gfg_00AFFF              { fg="#00afff", }, -- termcolorcode_cfg_39_gfg_00AFFF xxx guifg=#00afff
    termcolorcode_cfg_37_gfg_00AFAF              { fg="#46d9ff", }, -- termcolorcode_cfg_37_gfg_00AFAF xxx guifg=#46d9ff
    termcolorcode_cfg_208_gfg_FF8700             { fg="#ff8700", }, -- termcolorcode_cfg_208_gfg_FF8700 xxx guifg=#ff8700
    termcolorcode_cfg_246_gfg_949494             { fg="#838383", }, -- termcolorcode_cfg_246_gfg_949494 xxx guifg=#838383
    TerminalCSIColorCode                         { fg="#00ccff", }, -- TerminalCSIColorCode xxx guifg=#00ccff
    WhichKeyBorder                               { fg="#00ccff", }, -- WhichKeyBorder xxx guifg=#00ccff
    htmlH2                                       { fg="#eeeeee", }, -- htmlH2         xxx guifg=#eeeeee
    sym"@text.literal"                           { fg="#ae81ff", }, -- @text.literal  xxx guifg=#ae81ff
    sym"@text.quote"                             { fg="#666666", gui="italic", }, -- @text.quote    xxx cterm=italic gui=italic guifg=#666666
    sym"@text.title"                             { fg="#ee5396", }, -- @text.title    xxx guifg=#ee5396
    sym"@text.title.2"                           { fg="#00ccff", }, -- @text.title.2  xxx guifg=#00ccff
    sym"@exception"                              { fg="#82cfff", }, -- @exception     xxx guifg=#82cfff
    sym"@odp.import_module"                      { fg="#5c97ff", }, -- @odp.import_module xxx guifg=#5c97ff
    sym"@error"                                  { fg="#33b1ff", }, -- @error         xxx guifg=#33b1ff
    sym"@string.regex"                           { fg="#08bdba", }, -- @string.regex  xxx guifg=#08bdba
    sym"@text.uri"                               { fg="#bd95ff", gui="underline", }, -- @text.uri      xxx cterm=underline gui=underline guifg=#bd95ff
    sym"@text.underline"                         { fg="#ee5396", gui="underline", }, -- @text.underline xxx cterm=underline gui=underline guifg=#ee5396
    sym"@text.strong"                            { fg="#ffffff", gui="bold", }, -- @text.strong   xxx cterm=bold gui=bold guifg=#ffffff
    sym"@text.strike"                            { bg="#333333", fg="#666666", gui="strikethrough", }, -- @text.strike   xxx cterm=strikethrough gui=strikethrough guifg=#666666 guibg=#333333
    sym"@text.note"                              { bg="#002933", }, -- @text.note     xxx guibg=#002933
    sym"@markup.quote"                           { fg="#777777", gui="italic", }, -- @markup.quote  xxx cterm=italic gui=italic guifg=#777777
    sym"@text.emphasis"                          { fg="#ee5396", gui="bold,italic", }, -- @text.emphasis xxx cterm=bold,italic gui=bold,italic guifg=#ee5396
    sym"@repeat"                                 { fg="#78a9ff", }, -- @repeat        xxx guifg=#78a9ff
    sym"@method"                                 { fg="#08bdba", }, -- @method        xxx guifg=#08bdba
    sym"@include"                                { fg="#26c99e", }, -- @include       xxx guifg=#26c99e
    jukit_textcell_bg_colors                     { bg="#333333", }, -- jukit_textcell_bg_colors xxx guibg=#333333
    WhichKeyFloat                                { bg="#222222", }, -- WhichKeyFloat  xxx guibg=#222222
    sym"@method.call"                            { fg="#36ce5e", }, -- @method.call   xxx guifg=#36ce5e
    htmlH1                                       { fg="#ffffff", gui="bold", }, -- htmlH1         xxx cterm=bold gui=bold guifg=#ffffff
    sym"@text.reference"                         { fg="#4dabf7", gui="underline", }, -- @text.reference xxx cterm=underline gui=underline guifg=#4dabf7
    termcolorcode_cfg_10_gfg_55FF55              { fg="#55ff55", }, -- termcolorcode_cfg_10_gfg_55FF55 xxx guifg=#55ff55
    NeoTreeGitUntracked                          { fg="#666666", }, -- NeoTreeGitUntracked xxx guifg=#666666
    htmlH3                                       { fg="#cccccc", }, -- htmlH3         xxx guifg=#cccccc
    RainbowDelimiter05                           { fg="#ae81ff", }, -- RainbowDelimiter05 xxx guifg=#ae81ff
    RainbowDelimiter06                           { fg="#00ccff", gui="bold", }, -- RainbowDelimiter06 xxx cterm=bold gui=bold guifg=#00ccff
    RainbowDelimiter00                           { fg="#ee5396", gui="bold", }, -- RainbowDelimiter00 xxx cterm=bold gui=bold guifg=#ee5396
    RainbowDelimiter01                           { fg="#fd971f", }, -- RainbowDelimiter01 xxx guifg=#fd971f
    RainbowDelimiter02                           { fg="#ffff00", gui="bold", }, -- RainbowDelimiter02 xxx cterm=bold gui=bold guifg=#ffff00
    RainbowDelimiter03                           { fg="#36ce5e", }, -- RainbowDelimiter03 xxx guifg=#36ce5e
    RainbowDelimiter04                           { fg="#1a8fff", gui="bold", }, -- RainbowDelimiter04 xxx cterm=bold gui=bold guifg=#1a8fff
    sym"@symbol"                                 { fg="#82cfff", gui="bold", }, -- @symbol        xxx cterm=bold gui=bold guifg=#82cfff
    WhichKeyGroup                                { fg="#ee5396", }, -- WhichKeyGroup  xxx guifg=#ee5396
    WhichKeyDesc                                 { fg="#d0d0d0", }, -- WhichKeyDesc   xxx guifg=#d0d0d0
    NeoTreeModified                              { fg="#ae81ff", }, -- NeoTreeModified xxx guifg=#ae81ff
    NeoTreeGitUnstaged                           { fg="#939393", }, -- NeoTreeGitUnstaged xxx guifg=#939393
    termcolorcode_cfg_13_gfg_FF55FF              { fg="#ff55ff", }, -- termcolorcode_cfg_13_gfg_FF55FF xxx guifg=#ff55ff
    NeoTreeGitConflict                           { fg="#ffff00", gui="bold", }, -- NeoTreeGitConflict xxx cterm=bold gui=bold guifg=#ffff00
    termcolorcode_cfg_3_gfg_AA5500               { fg="#ffff00", }, -- termcolorcode_cfg_3_gfg_AA5500 xxx guifg=#ffff00
    termcolorcode_c_bold_cfg_5_g_bold_gfg_AA00AA { fg="#d4bbff", }, -- termcolorcode_c_bold_cfg_5_g_bold_gfg_AA00AA xxx guifg=#d4bbff
    termcolorcode_cfg_2_gfg_00AA00               { fg="#00aa00", }, -- termcolorcode_cfg_2_gfg_00AA00 xxx guifg=#00aa00
    Headline3                                    { bg="#6644af", fg="#cccccc", gui="bold", }, -- Headline3      xxx cterm=bold gui=bold guifg=#cccccc guibg=#6644af
    mkdCode                                      { bg="#222222", fg="#ffa94d", }, -- mkdCode        xxx guifg=#ffa94d guibg=#222222
    Headline1                                    { bg="#1e2718", }, -- Headline1      xxx guibg=#1e2718
    Headline2                                    { bg="#002933", }, -- Headline2      xxx guibg=#002933
    HopNextKey                                   { fg="#ff007c", gui="bold", }, -- HopNextKey     xxx cterm=bold ctermfg=198 gui=bold guifg=#ff007c
    HopNextKey1                                  { fg="#00dfff", gui="bold", }, -- HopNextKey1    xxx cterm=bold ctermfg=45 gui=bold guifg=#00dfff
    HopNextKey2                                  { fg="#2b8db3", }, -- HopNextKey2    xxx ctermfg=33 guifg=#2b8db3
    HopUnmatched                                 { bg="bg", fg="#666666", sp="#666666", }, -- HopUnmatched   xxx ctermfg=242 guifg=#666666 guibg=bg guisp=#666666
    Stl51a0cf_NONE_bolditalic_                   { fg="#51a0cf", gui="bold,italic", }, -- Stl51a0cf_NONE_bolditalic_ xxx cterm=bold,italic gui=bold,italic guifg=#51a0cf
    Stl9b9ea4_NONE_bolditalic_                   { fg="#9b9ea4", gui="bold,italic", }, -- Stl9b9ea4_NONE_bolditalic_ xxx cterm=bold,italic gui=bold,italic guifg=#9b9ea4
    Stlbdbdbd_NONE_bolditalic_                   { fg="#bdbdbd", gui="bold,italic", }, -- Stlbdbdbd_NONE_bolditalic_ xxx cterm=bold,italic gui=bold,italic guifg=#bdbdbd
    Stl222222_61afef__                           { bg="#61afef", fg="#222222", }, -- Stl222222_61afef__ xxx guifg=#222222 guibg=#61afef
    Stl61afef_222222__                           { bg="#222222", fg="#61afef", }, -- Stl61afef_222222__ xxx guifg=#61afef guibg=#222222
    Stl51a0cf_222222__                           { bg="#222222", fg="#51a0cf", }, -- Stl51a0cf_222222__ xxx guifg=#51a0cf guibg=#222222
    Stld0d0d0_222222__                           { bg="#222222", fg="#d0d0d0", }, -- Stld0d0d0_222222__ xxx guifg=#d0d0d0 guibg=#222222
    Stl222222_222222__                           { bg="#222222", fg="#222222", }, -- Stl222222_222222__ xxx guifg=#222222 guibg=#222222
    TodoBgFIX                                    { bg="#ffc0b9", fg="#000000", gui="bold", }, -- TodoBgFIX      xxx gui=bold guifg=#000000 guibg=#ffc0b9
    TodoFgFIX                                    { fg="#ffc0b9", }, -- TodoFgFIX      xxx guifg=#ffc0b9
    TodoSignFIX                                  { fg="#ffc0b9", }, -- TodoSignFIX    xxx guifg=#ffc0b9
    TodoBgTEST                                   { bg="#a6dbff", fg="#000000", gui="bold", }, -- TodoBgTEST     xxx gui=bold guifg=#000000 guibg=#a6dbff
    TodoFgTEST                                   { fg="#a6dbff", }, -- TodoFgTEST     xxx guifg=#a6dbff
    TodoSignTEST                                 { fg="#a6dbff", }, -- TodoSignTEST   xxx guifg=#a6dbff
    TodoBgNOTE                                   { bg="#a6dbff", fg="#000000", gui="bold", }, -- TodoBgNOTE     xxx gui=bold guifg=#000000 guibg=#a6dbff
    TodoFgNOTE                                   { fg="#a6dbff", }, -- TodoFgNOTE     xxx guifg=#a6dbff
    TodoSignNOTE                                 { fg="#a6dbff", }, -- TodoSignNOTE   xxx guifg=#a6dbff
    TodoBgWARN                                   { bg="#ffb53d", fg="#000000", gui="bold", }, -- TodoBgWARN     xxx gui=bold guifg=#000000 guibg=#ffb53d
    TodoFgWARN                                   { fg="#ffb53d", }, -- TodoFgWARN     xxx guifg=#ffb53d
    TodoSignWARN                                 { fg="#ffb53d", }, -- TodoSignWARN   xxx guifg=#ffb53d
    TodoBgHACK                                   { bg="#ffb53d", fg="#000000", gui="bold", }, -- TodoBgHACK     xxx gui=bold guifg=#000000 guibg=#ffb53d
    TodoFgHACK                                   { fg="#ffb53d", }, -- TodoFgHACK     xxx guifg=#ffb53d
    TodoSignHACK                                 { fg="#ffb53d", }, -- TodoSignHACK   xxx guifg=#ffb53d
    TodoBgPERF                                   { bg="#a6dbff", fg="#000000", gui="bold", }, -- TodoBgPERF     xxx gui=bold guifg=#000000 guibg=#a6dbff
    TodoFgPERF                                   { fg="#a6dbff", }, -- TodoFgPERF     xxx guifg=#a6dbff
    TodoSignPERF                                 { fg="#a6dbff", }, -- TodoSignPERF   xxx guifg=#a6dbff
    TodoBgTODO                                   { bg="#8cf8f7", fg="#000000", gui="bold", }, -- TodoBgTODO     xxx gui=bold guifg=#000000 guibg=#8cf8f7
    TodoFgTODO                                   { fg="#8cf8f7", }, -- TodoFgTODO     xxx guifg=#8cf8f7
    TodoSignTODO                                 { fg="#8cf8f7", }, -- TodoSignTODO   xxx guifg=#8cf8f7
    UfoFoldedBg                                  { bg="#262626", }, -- UfoFoldedBg    xxx guibg=#262626
    UfoPreviewWinBar                             { UfoFoldedBg }, -- UfoPreviewWinBar xxx links to UfoFoldedBg
    UfoFoldedFg                                  { fg="#bdbdbd", }, -- UfoFoldedFg    xxx guifg=#bdbdbd
    IblIndent                                    { bg="#1f1f1f", }, -- IblIndent      xxx guibg=#1f1f1f
    IblWhitespace                                { bg="#1f1f1f", }, -- IblWhitespace  xxx guibg=#1f1f1f
    IblScope                                     { fg="#383838", }, -- IblScope       xxx guifg=#383838
    sym"@ibl.indent.char.1"                      { bg="#262626", gui="nocombine", }, -- @ibl.indent.char.1 xxx cterm=nocombine gui=nocombine guibg=#262626
    sym"@ibl.indent.char.2"                      { bg="#1f1f1f", gui="nocombine", }, -- @ibl.indent.char.2 xxx cterm=nocombine gui=nocombine guibg=#1f1f1f
    sym"@ibl.whitespace.char.1"                  { bg="#262626", gui="nocombine", }, -- @ibl.whitespace.char.1 xxx cterm=nocombine gui=nocombine guibg=#262626
    sym"@ibl.whitespace.char.2"                  { bg="#1f1f1f", gui="nocombine", }, -- @ibl.whitespace.char.2 xxx cterm=nocombine gui=nocombine guibg=#1f1f1f
    sym"@ibl.scope.char.1"                       { fg="#383838", gui="nocombine", }, -- @ibl.scope.char.1 xxx cterm=nocombine gui=nocombine guifg=#383838
    sym"@ibl.scope.underline.1"                  { sp="#383838", gui="underline", }, -- @ibl.scope.underline.1 xxx cterm=underline gui=underline guisp=#383838
    Stl222222_ebae34__                           { bg="#ebae34", fg="#222222", }, -- Stl222222_ebae34__ xxx guifg=#222222 guibg=#ebae34
    Stlebae34_222222__                           { bg="#222222", fg="#ebae34", }, -- Stlebae34_222222__ xxx guifg=#ebae34 guibg=#222222
    Stleef1f8_NONE_bolditalic_                   { fg="#eef1f8", gui="bold,italic", }, -- Stleef1f8_NONE_bolditalic_ xxx cterm=bold,italic gui=bold,italic guifg=#eef1f8
    StlNONE_262626__                             { bg="#262626", }, -- StlNONE_262626__ xxx guibg=#262626
    Stl_262626__                                 { bg="#262626", }, -- Stl_262626__   xxx guibg=#262626
    Stle0e2ea_222222_bold_                       { bg="#222222", fg="#e0e2ea", gui="bold", }, -- Stle0e2ea_222222_bold_ xxx cterm=bold gui=bold guifg=#e0e2ea guibg=#222222
    Stlb3f6c0_222222__                           { bg="#222222", fg="#b3f6c0", }, -- Stlb3f6c0_222222__ xxx guifg=#b3f6c0 guibg=#222222
    Stle0e2ea_222222__                           { bg="#222222", fg="#e0e2ea", }, -- Stle0e2ea_222222__ xxx guifg=#e0e2ea guibg=#222222
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
--
-- autogenerated lush spec on Thu Apr 25 15:30:48 2024
-- Run :Lushify
-- then /Normal to find the Normal group and edit your fg & bg colors
-- local lush = require("lush")
-- local hsl = lush.hsl
-- local hsluv = lush.hsluv
-- local theme = lush(function(injected_functions)
--   local sym = injected_functions.sym
--   return {
--     SpecialKey                                   { fg=nvimdarkgrey4, }, -- SpecialKey     xxx guifg=NvimDarkGrey4
--     TermCursor                                   { gui="reverse", }, -- TermCursor     xxx cterm=reverse gui=reverse
--     GitSignsAddInline                            { TermCursor }, -- GitSignsAddInline xxx links to TermCursor
--     GitSignsDeleteInline                         { TermCursor }, -- GitSignsDeleteInline xxx links to TermCursor
--     GitSignsChangeInline                         { TermCursor }, -- GitSignsChangeInline xxx links to TermCursor
--     NonText                                      { fg=nvimdarkgrey4, }, -- NonText        xxx guifg=NvimDarkGrey4
--     EndOfBuffer                                  { NonText }, -- EndOfBuffer    xxx links to NonText
--     LspInlayHint                                 { NonText }, -- LspInlayHint   xxx links to NonText
--     TelescopePreviewHyphen                       { NonText }, -- TelescopePreviewHyphen xxx links to NonText
--     TelescopePromptCounter                       { NonText }, -- TelescopePromptCounter xxx links to NonText
--     TelescopeResultsDiffUntracked                { NonText }, -- TelescopeResultsDiffUntracked xxx links to NonText
--     GitSignsCurrentLineBlame                     { NonText }, -- GitSignsCurrentLineBlame xxx links to NonText
--     Directory                                    { fg="#3ddbd9", }, -- Directory      xxx guifg=#3ddbd9
--     TelescopePreviewDate                         { Directory }, -- TelescopePreviewDate xxx links to Directory
--     TelescopePreviewDirectory                    { Directory }, -- TelescopePreviewDirectory xxx links to Directory
--     ErrorMsg                                     { fg="#ee5396", }, -- ErrorMsg       xxx guifg=#ee5396
--     NvimInvalidSpacing                           { ErrorMsg }, -- NvimInvalidSpacing xxx links to ErrorMsg
--     Search                                       { bg="#00ccff", fg="#1c1c1c", gui="bold", }, -- Search         xxx cterm=bold gui=bold guifg=#1c1c1c guibg=#00ccff
--     TelescopePreviewMatch                        { Search }, -- TelescopePreviewMatch xxx links to Search
--     CurSearch                                    { bg="#ff5252", fg="#1c1c1c", gui="bold", }, -- CurSearch      xxx cterm=bold gui=bold guifg=#1c1c1c guibg=#ff5252
--     IncSearch                                    { CurSearch }, -- IncSearch      xxx links to CurSearch
--     MoreMsg                                      { fg="#3ddbd9", }, -- MoreMsg        xxx guifg=#3ddbd9
--     ModeMsg                                      { fg="#d0d0d0", }, -- ModeMsg        xxx guifg=#d0d0d0
--     LineNr                                       { fg="#383838", }, -- LineNr         xxx guifg=#383838
--     LineNrAbove                                  { LineNr }, -- LineNrAbove    xxx links to LineNr
--     LineNrBelow                                  { LineNr }, -- LineNrBelow    xxx links to LineNr
--     TreesitterContextLineNumber                  { LineNr }, -- TreesitterContextLineNumber xxx links to LineNr
--     TelescopeResultsLineNr                       { LineNr }, -- TelescopeResultsLineNr xxx links to LineNr
--     Quote                                        { LineNr }, -- Quote          xxx links to LineNr
--     DoubleDash                                   { LineNr }, -- DoubleDash     xxx links to LineNr
--     CursorLineNr                                 { fg="#d0d0d0", }, -- CursorLineNr   xxx guifg=#d0d0d0
--     MarkSignNumHL                                { CursorLineNr }, -- MarkSignNumHL  xxx links to CursorLineNr
--     Question                                     { fg="#d0d0d0", }, -- Question       xxx guifg=#d0d0d0
--     StatusLine                                   { bg="#222222", fg="#d0d0d0", }, -- StatusLine     xxx guifg=#d0d0d0 guibg=#222222
--     MsgSeparator                                 { StatusLine }, -- MsgSeparator   xxx links to StatusLine
--     StatusLineNC                                 { bg="#262626", fg="#d0d0d0", }, -- StatusLineNC   xxx guifg=#d0d0d0 guibg=#262626
--     TabLine                                      { StatusLineNC }, -- TabLine        xxx links to StatusLineNC
--     VertSplit                                    { fg="#262626", }, -- VertSplit      xxx guifg=#262626
--     Title                                        { fg="#d0d0d0", gui="bold", }, -- Title          xxx cterm=bold gui=bold guifg=#d0d0d0
--     FloatTitle                                   { Title }, -- FloatTitle     xxx links to Title
--     LspInfoTitle                                 { Title }, -- LspInfoTitle   xxx links to Title
--     NullLsInfoSources                            { Title }, -- NullLsInfoSources xxx links to Title
--     Visual                                       { bg="#393939", }, -- Visual         xxx guibg=#393939
--     VisualNOS                                    { Visual }, -- VisualNOS      xxx links to Visual
--     SnippetTabstop                               { Visual }, -- SnippetTabstop xxx links to Visual
--     TelescopePreviewLine                         { Visual }, -- TelescopePreviewLine xxx links to Visual
--     TelescopeSelection                           { Visual }, -- TelescopeSelection xxx links to Visual
--     UfoPreviewCursorLine                         { Visual }, -- UfoPreviewCursorLine xxx links to Visual
--     WarningMsg                                   { fg="#be95ff", }, -- WarningMsg     xxx guifg=#be95ff
--     WildMenu                                     { bg="#222222", fg="#3ddbd9", }, -- WildMenu       xxx guifg=#3ddbd9 guibg=#222222
--     Folded                                       { bg="#262626", fg="#393939", }, -- Folded         xxx guifg=#393939 guibg=#262626
--     FoldColumn                                   { fg="#262626", }, -- FoldColumn     xxx guifg=#262626
--     CursorLineFold                               { FoldColumn }, -- CursorLineFold xxx links to FoldColumn
--     DiffAdd                                      { bg="#122f2f", }, -- DiffAdd        xxx guibg=#122f2f
--     TelescopeResultsDiffAdd                      { DiffAdd }, -- TelescopeResultsDiffAdd xxx links to DiffAdd
--     GitSignsAddLn                                { DiffAdd }, -- GitSignsAddLn  xxx links to DiffAdd
--     GitSignsAddPreview                           { DiffAdd }, -- GitSignsAddPreview xxx links to DiffAdd
--     DiffChange                                   { bg="#222a39", }, -- DiffChange     xxx guibg=#222a39
--     TelescopeResultsDiffChange                   { DiffChange }, -- TelescopeResultsDiffChange xxx links to DiffChange
--     GitSignsChangeLn                             { DiffChange }, -- GitSignsChangeLn xxx links to DiffChange
--     DiffDelete                                   { bg="#361c28", }, -- DiffDelete     xxx guibg=#361c28
--     TelescopeResultsDiffDelete                   { DiffDelete }, -- TelescopeResultsDiffDelete xxx links to DiffDelete
--     GitSignsDeletePreview                        { DiffDelete }, -- GitSignsDeletePreview xxx links to DiffDelete
--     GitSignsDeleteVirtLn                         { DiffDelete }, -- GitSignsDeleteVirtLn xxx links to DiffDelete
--     DiffText                                     { bg="#2f3f5c", }, -- DiffText       xxx guibg=#2f3f5c
--     SignColumn                                   { fg="#262626", }, -- SignColumn     xxx guifg=#262626
--     CursorLineSign                               { SignColumn }, -- CursorLineSign xxx links to SignColumn
--     Conceal                                      { fg=nvimdarkgrey4, }, -- Conceal        xxx guifg=NvimDarkGrey4
--     SpellBad                                     { sp=nvimlightred, gui="undercurl", }, -- SpellBad       xxx cterm=undercurl gui=undercurl guisp=NvimLightRed
--     SpellCap                                     { sp=nvimlightyellow, gui="undercurl", }, -- SpellCap       xxx cterm=undercurl gui=undercurl guisp=NvimLightYellow
--     SpellRare                                    { sp=nvimlightcyan, gui="undercurl", }, -- SpellRare      xxx cterm=undercurl gui=undercurl guisp=NvimLightCyan
--     SpellLocal                                   { sp=nvimlightgreen, gui="undercurl", }, -- SpellLocal     xxx cterm=undercurl gui=undercurl guisp=NvimLightGreen
--     Pmenu                                        { bg="#222222", fg="#d0d0d0", }, -- Pmenu          xxx guifg=#d0d0d0 guibg=#222222
--     PmenuKind                                    { Pmenu }, -- PmenuKind      xxx links to Pmenu
--     PmenuExtra                                   { Pmenu }, -- PmenuExtra     xxx links to Pmenu
--     PmenuSel                                     { bg="#222222", fg="#3ddbd9", }, -- PmenuSel       xxx guifg=#3ddbd9 guibg=#222222
--     PmenuKindSel                                 { PmenuSel }, -- PmenuKindSel   xxx links to PmenuSel
--     PmenuExtraSel                                { PmenuSel }, -- PmenuExtraSel  xxx links to PmenuSel
--     TablineActive                                { PmenuSel }, -- TablineActive  xxx links to PmenuSel
--     PmenuSbar                                    { bg="#222222", fg="#d0d0d0", }, -- PmenuSbar      xxx guifg=#d0d0d0 guibg=#222222
--     UfoPreviewSbar                               { PmenuSbar }, -- UfoPreviewSbar xxx links to PmenuSbar
--     PmenuThumb                                   { bg="#222222", fg="#3ddbd9", }, -- PmenuThumb     xxx guifg=#3ddbd9 guibg=#222222
--     UfoPreviewThumb                              { PmenuThumb }, -- UfoPreviewThumb xxx links to PmenuThumb
--     TabLineSel                                   { gui="bold", }, -- TabLineSel     xxx cterm=bold gui=bold
--     TablineCurrent                               { TabLineSel }, -- TablineCurrent xxx links to TabLineSel
--     CursorColumn                                 { bg="#262626", }, -- CursorColumn   xxx guibg=#262626
--     CursorLine                                   { bg="#262626", }, -- CursorLine     xxx guibg=#262626
--     LspReferenceText                             { CursorLine }, -- LspReferenceText xxx links to CursorLine
--     UfoCursorFoldedLine                          { CursorLine }, -- UfoCursorFoldedLine xxx links to CursorLine
--     ColorColumn                                  { bg="#262626", }, -- ColorColumn    xxx guibg=#262626
--     Headline                                     { ColorColumn }, -- Headline       xxx links to ColorColumn
--     CodeBlock                                    { ColorColumn }, -- CodeBlock      xxx links to ColorColumn
--     MatchBackground                              { ColorColumn }, -- MatchBackground xxx links to ColorColumn
--     QuickFixLine                                 { fg=nvimlightcyan, }, -- QuickFixLine   xxx ctermfg=14 guifg=NvimLightCyan
--     AerialLine                                   { QuickFixLine }, -- AerialLine     xxx links to QuickFixLine
--     Whitespace                                   { bg="#1f1f1f", }, -- Whitespace     xxx guibg=#1f1f1f
--     NormalNC                                     { bg="#161616", fg="#f2f2f2", }, -- NormalNC       xxx guifg=#f2f2f2 guibg=#161616
--     NormalFloat                                  { bg="#222222", }, -- NormalFloat    xxx guibg=#222222
--     NullLsInfoBorder                             { NormalFloat }, -- NullLsInfoBorder xxx links to NormalFloat
--     DapUIFloatNormal                             { NormalFloat }, -- DapUIFloatNormal xxx links to NormalFloat
--     TreesitterContext                            { NormalFloat }, -- TreesitterContext xxx links to NormalFloat
--     InclineNormalNC                              { NormalFloat }, -- InclineNormalNC xxx links to NormalFloat
--     InclineNormal                                { NormalFloat }, -- InclineNormal  xxx links to NormalFloat
--     CccFloatNormal                               { NormalFloat }, -- CccFloatNormal xxx links to NormalFloat
--     FloatBorder                                  { bg="#161616", fg="#131313", }, -- FloatBorder    xxx guifg=#131313 guibg=#161616
--     TreesitterContextSeparator                   { FloatBorder }, -- TreesitterContextSeparator xxx links to FloatBorder
--     CccFloatBorder                               { FloatBorder }, -- CccFloatBorder xxx links to FloatBorder
--     WinBar                                       { gui="bold", }, -- WinBar         xxx cterm=bold gui=bold
--     WinBarNC                                     { bg=nvimdarkgrey1, fg=nvimlightgrey4, }, -- WinBarNC       xxx cterm=bold guifg=NvimLightGrey4 guibg=NvimDarkGrey1
--     RedrawDebugNormal                            { gui="reverse", }, -- RedrawDebugNormal xxx cterm=reverse gui=reverse
--     Underlined                                   { gui="underline", }, -- Underlined     xxx cterm=underline gui=underline
--     sym"@string.special.url"                     { Underlined }, -- @string.special.url xxx links to Underlined
--     lCursor                                      { bg="fg", fg="bg", }, -- lCursor        xxx guifg=bg guibg=fg
--     Substitute                                   { bg="#3ddbd9", fg="#262626", }, -- Substitute     xxx guifg=#262626 guibg=#3ddbd9
--     Normal                                       { fg="#bdbdbd", }, -- Normal         xxx guifg=#bdbdbd
--     WinSeparator                                 { Normal }, -- WinSeparator   xxx links to Normal
--     Ignore                                       { Normal }, -- Ignore         xxx links to Normal
--     NvimSpacing                                  { Normal }, -- NvimSpacing    xxx links to Normal
--     DapUINormal                                  { Normal }, -- DapUINormal    xxx links to Normal
--     DapUIVariable                                { Normal }, -- DapUIVariable  xxx links to Normal
--     DapUIValue                                   { Normal }, -- DapUIValue     xxx links to Normal
--     DapUIFrameName                               { Normal }, -- DapUIFrameName xxx links to Normal
--     TelescopeNormal                              { Normal }, -- TelescopeNormal xxx links to Normal
--     CodeiumAnnotation                            { Normal }, -- CodeiumAnnotation xxx links to Normal
--     Constant                                     { fg=nvimlightgrey2, }, -- Constant       xxx guifg=NvimLightGrey2
--     Character                                    { Constant }, -- Character      xxx links to Constant
--     Number                                       { Constant }, -- Number         xxx links to Constant
--     Boolean                                      { Constant }, -- Boolean        xxx links to Constant
--     TelescopeResultsConstant                     { Constant }, -- TelescopeResultsConstant xxx links to Constant
--     TelescopePreviewGroup                        { Constant }, -- TelescopePreviewGroup xxx links to Constant
--     TelescopePreviewUser                         { Constant }, -- TelescopePreviewUser xxx links to Constant
--     TelescopePreviewRead                         { Constant }, -- TelescopePreviewRead xxx links to Constant
--     TelescopePreviewBlock                        { Constant }, -- TelescopePreviewBlock xxx links to Constant
--     TelescopePreviewCharDev                      { Constant }, -- TelescopePreviewCharDev xxx links to Constant
--     TelescopePreviewPipe                         { Constant }, -- TelescopePreviewPipe xxx links to Constant
--     AerialConstantIcon                           { Constant }, -- AerialConstantIcon xxx links to Constant
--     Statement                                    { fg=nvimlightgrey2, gui="bold", }, -- Statement      xxx cterm=bold gui=bold guifg=NvimLightGrey2
--     Conditional                                  { Statement }, -- Conditional    xxx links to Statement
--     Repeat                                       { Statement }, -- Repeat         xxx links to Statement
--     Label                                        { Statement }, -- Label          xxx links to Statement
--     Exception                                    { Statement }, -- Exception      xxx links to Statement
--     TelescopePreviewWrite                        { Statement }, -- TelescopePreviewWrite xxx links to Statement
--     TelescopePreviewSocket                       { Statement }, -- TelescopePreviewSocket xxx links to Statement
--     Keyword                                      { fg="#ff79ff", }, -- Keyword        xxx guifg=#ff79ff
--     TelescopePreviewSticky                       { Keyword }, -- TelescopePreviewSticky xxx links to Keyword
--     PreProc                                      { fg=nvimlightgrey2, }, -- PreProc        xxx guifg=NvimLightGrey2
--     Include                                      { PreProc }, -- Include        xxx links to PreProc
--     Define                                       { PreProc }, -- Define         xxx links to PreProc
--     Macro                                        { PreProc }, -- Macro          xxx links to PreProc
--     PreCondit                                    { PreProc }, -- PreCondit      xxx links to PreProc
--     Type                                         { fg=nvimlightgrey2, }, -- Type           xxx guifg=NvimLightGrey2
--     StorageClass                                 { Type }, -- StorageClass   xxx links to Type
--     Structure                                    { Type }, -- Structure      xxx links to Type
--     Typedef                                      { Type }, -- Typedef        xxx links to Type
--     sym"@type"                                   { Type }, -- @type          xxx links to Type
--     NvimNumberPrefix                             { Type }, -- NvimNumberPrefix xxx links to Type
--     NvimOptionSigil                              { Type }, -- NvimOptionSigil xxx links to Type
--     LspInfoFiletype                              { Type }, -- LspInfoFiletype xxx links to Type
--     NullLsInfoTitle                              { Type }, -- NullLsInfoTitle xxx links to Type
--     TelescopeMultiSelection                      { Type }, -- TelescopeMultiSelection xxx links to Type
--     AerialClassIcon                              { Type }, -- AerialClassIcon xxx links to Type
--     AerialEnumIcon                               { Type }, -- AerialEnumIcon xxx links to Type
--     AerialInterfaceIcon                          { Type }, -- AerialInterfaceIcon xxx links to Type
--     AerialStructIcon                             { Type }, -- AerialStructIcon xxx links to Type
--     Special                                      { fg=nvimlightcyan, }, -- Special        xxx ctermfg=14 guifg=NvimLightCyan
--     Tag                                          { Special }, -- Tag            xxx links to Special
--     SpecialChar                                  { Special }, -- SpecialChar    xxx links to Special
--     SpecialComment                               { Special }, -- SpecialComment xxx links to Special
--     Debug                                        { Special }, -- Debug          xxx links to Special
--     sym"@constructor"                            { Special }, -- @constructor   xxx links to Special
--     sym"@markup"                                 { Special }, -- @markup        xxx links to Special
--     TelescopeMatching                            { Special }, -- TelescopeMatching xxx links to Special
--     TelescopePreviewLink                         { Special }, -- TelescopePreviewLink xxx links to Special
--     AerialConstructorIcon                        { Special }, -- AerialConstructorIcon xxx links to Special
--     DiagnosticError                              { fg=nvimlightred, }, -- DiagnosticError xxx ctermfg=9 guifg=NvimLightRed
--     DiagnosticFloatingError                      { DiagnosticError }, -- DiagnosticFloatingError xxx links to DiagnosticError
--     DiagnosticVirtualTextError                   { DiagnosticError }, -- DiagnosticVirtualTextError xxx links to DiagnosticError
--     DiagnosticSignError                          { DiagnosticError }, -- DiagnosticSignError xxx links to DiagnosticError
--     DiagnosticWarn                               { fg="#ffb53d", }, -- DiagnosticWarn xxx guifg=#ffb53d
--     DiagnosticFloatingWarn                       { DiagnosticWarn }, -- DiagnosticFloatingWarn xxx links to DiagnosticWarn
--     DiagnosticVirtualTextWarn                    { DiagnosticWarn }, -- DiagnosticVirtualTextWarn xxx links to DiagnosticWarn
--     DiagnosticSignWarn                           { DiagnosticWarn }, -- DiagnosticSignWarn xxx links to DiagnosticWarn
--     DiagnosticInfo                               { fg=nvimlightcyan, }, -- DiagnosticInfo xxx ctermfg=14 guifg=NvimLightCyan
--     DiagnosticFloatingInfo                       { DiagnosticInfo }, -- DiagnosticFloatingInfo xxx links to DiagnosticInfo
--     DiagnosticVirtualTextInfo                    { DiagnosticInfo }, -- DiagnosticVirtualTextInfo xxx links to DiagnosticInfo
--     DiagnosticSignInfo                           { DiagnosticInfo }, -- DiagnosticSignInfo xxx links to DiagnosticInfo
--     sym"@comment.note"                           { DiagnosticInfo }, -- @comment.note  xxx links to DiagnosticInfo
--     DiagnosticHint                               { fg=nvimlightblue, }, -- DiagnosticHint xxx ctermfg=12 guifg=NvimLightBlue
--     DiagnosticFloatingHint                       { DiagnosticHint }, -- DiagnosticFloatingHint xxx links to DiagnosticHint
--     DiagnosticVirtualTextHint                    { DiagnosticHint }, -- DiagnosticVirtualTextHint xxx links to DiagnosticHint
--     DiagnosticSignHint                           { DiagnosticHint }, -- DiagnosticSignHint xxx links to DiagnosticHint
--     DiagnosticOk                                 { fg=nvimlightgreen, }, -- DiagnosticOk   xxx ctermfg=10 guifg=NvimLightGreen
--     DiagnosticFloatingOk                         { DiagnosticOk }, -- DiagnosticFloatingOk xxx links to DiagnosticOk
--     DiagnosticVirtualTextOk                      { DiagnosticOk }, -- DiagnosticVirtualTextOk xxx links to DiagnosticOk
--     DiagnosticSignOk                             { DiagnosticOk }, -- DiagnosticSignOk xxx links to DiagnosticOk
--     Comment                                      { fg="#494949", }, -- Comment        xxx guifg=#494949
--     DiagnosticUnnecessary                        { Comment }, -- DiagnosticUnnecessary xxx links to Comment
--     sym"@comment"                                { Comment }, -- @comment       xxx links to Comment
--     LspInfoTip                                   { Comment }, -- LspInfoTip     xxx links to Comment
--     TelescopeResultsComment                      { Comment }, -- TelescopeResultsComment xxx links to Comment
--     WhichKeySeparator                            { Comment }, -- WhichKeySeparator xxx links to Comment
--     MarkVirtTextHL                               { Comment }, -- MarkVirtTextHL xxx links to Comment
--     WhichKeyValue                                { Comment }, -- WhichKeyValue  xxx links to Comment
--     AerialPrivate                                { Comment }, -- AerialPrivate  xxx links to Comment
--     AerialProtected                              { Comment }, -- AerialProtected xxx links to Comment
--     UfoFoldedEllipsis                            { Comment }, -- UfoFoldedEllipsis xxx links to Comment
--     sym"@variable"                               { fg="#d0d0d0", }, -- @variable      xxx guifg=#d0d0d0
--     sym"@lsp.type.variable"                      { sym"@variable" }, -- @lsp.type.variable xxx links to @variable
--     sym"@constant"                               { fg="#be95ff", }, -- @constant      xxx guifg=#be95ff
--     sym"@constant.builtin"                       { fg="#08bdba", }, -- @constant.builtin xxx guifg=#08bdba
--     sym"@label"                                  { fg="#82cfff", }, -- @label         xxx guifg=#82cfff
--     String                                       { fg=nvimlightgreen, }, -- String         xxx ctermfg=10 guifg=NvimLightGreen
--     sym"@string"                                 { String }, -- @string        xxx links to String
--     NvimString                                   { String }, -- NvimString     xxx links to String
--     TelescopePreviewSize                         { String }, -- TelescopePreviewSize xxx links to String
--     TelescopePreviewExecute                      { String }, -- TelescopePreviewExecute xxx links to String
--     sym"@string.escape"                          { fg="#82cfff", }, -- @string.escape xxx guifg=#82cfff
--     sym"@type.builtin"                           { fg="#26c99e", }, -- @type.builtin  xxx guifg=#26c99e
--     sym"@property"                               { fg="#ee5396", }, -- @property      xxx guifg=#ee5396
--     Identifier                                   { fg=nvimlightblue, }, -- Identifier     xxx ctermfg=12 guifg=NvimLightBlue
--     NvimIdentifier                               { Identifier }, -- NvimIdentifier xxx links to Identifier
--     TelescopeResultsIdentifier                   { Identifier }, -- TelescopeResultsIdentifier xxx links to Identifier
--     TelescopeMultiIcon                           { Identifier }, -- TelescopeMultiIcon xxx links to Identifier
--     TelescopePromptPrefix                        { Identifier }, -- TelescopePromptPrefix xxx links to Identifier
--     MarkSignHL                                   { Identifier }, -- MarkSignHL     xxx links to Identifier
--     AerialArrayIcon                              { Identifier }, -- AerialArrayIcon xxx links to Identifier
--     AerialBooleanIcon                            { Identifier }, -- AerialBooleanIcon xxx links to Identifier
--     AerialEnumMemberIcon                         { Identifier }, -- AerialEnumMemberIcon xxx links to Identifier
--     AerialEventIcon                              { Identifier }, -- AerialEventIcon xxx links to Identifier
--     AerialFieldIcon                              { Identifier }, -- AerialFieldIcon xxx links to Identifier
--     AerialFileIcon                               { Identifier }, -- AerialFileIcon xxx links to Identifier
--     AerialKeyIcon                                { Identifier }, -- AerialKeyIcon  xxx links to Identifier
--     AerialNullIcon                               { Identifier }, -- AerialNullIcon xxx links to Identifier
--     AerialNumberIcon                             { Identifier }, -- AerialNumberIcon xxx links to Identifier
--     AerialObjectIcon                             { Identifier }, -- AerialObjectIcon xxx links to Identifier
--     AerialOperatorIcon                           { Identifier }, -- AerialOperatorIcon xxx links to Identifier
--     AerialPropertyIcon                           { Identifier }, -- AerialPropertyIcon xxx links to Identifier
--     AerialStringIcon                             { Identifier }, -- AerialStringIcon xxx links to Identifier
--     AerialTypeParameterIcon                      { Identifier }, -- AerialTypeParameterIcon xxx links to Identifier
--     AerialVariableIcon                           { Identifier }, -- AerialVariableIcon xxx links to Identifier
--     sym"@function"                               { fg="#36ce5e", gui="bold", }, -- @function      xxx cterm=bold gui=bold guifg=#36ce5e
--     Function                                     { fg=nvimlightcyan, }, -- Function       xxx ctermfg=14 guifg=NvimLightCyan
--     LspInfoList                                  { Function }, -- LspInfoList    xxx links to Function
--     TelescopeResultsFunction                     { Function }, -- TelescopeResultsFunction xxx links to Function
--     TelescopeResultsField                        { Function }, -- TelescopeResultsField xxx links to Function
--     TelescopeResultsClass                        { Function }, -- TelescopeResultsClass xxx links to Function
--     WhichKey                                     { Function }, -- WhichKey       xxx links to Function
--     AerialFunctionIcon                           { Function }, -- AerialFunctionIcon xxx links to Function
--     AerialMethodIcon                             { Function }, -- AerialMethodIcon xxx links to Function
--     sym"@function.builtin"                       { fg="#ff7eb6", }, -- @function.builtin xxx guifg=#ff7eb6
--     semshiBuiltin                                { sym"@function.builtin" }, -- semshiBuiltin  xxx links to @function.builtin
--     Operator                                     { fg=nvimlightgrey2, }, -- Operator       xxx guifg=NvimLightGrey2
--     sym"@operator"                               { Operator }, -- @operator      xxx links to Operator
--     NvimAssignment                               { Operator }, -- NvimAssignment xxx links to Operator
--     NvimOperator                                 { Operator }, -- NvimOperator   xxx links to Operator
--     TelescopeResultsOperator                     { Operator }, -- TelescopeResultsOperator xxx links to Operator
--     sym"@keyword"                                { fg="#78a9ff", }, -- @keyword       xxx guifg=#78a9ff
--     Delimiter                                    { fg=nvimlightgrey2, }, -- Delimiter      xxx guifg=NvimLightGrey2
--     sym"@punctuation"                            { Delimiter }, -- @punctuation   xxx links to Delimiter
--     NvimParenthesis                              { Delimiter }, -- NvimParenthesis xxx links to Delimiter
--     NvimColon                                    { Delimiter }, -- NvimColon      xxx links to Delimiter
--     NvimComma                                    { Delimiter }, -- NvimComma      xxx links to Delimiter
--     NvimArrow                                    { Delimiter }, -- NvimArrow      xxx links to Delimiter
--     sym"@punctuation.special"                    { fg="#3ddbd9", }, -- @punctuation.special xxx guifg=#3ddbd9
--     Todo                                         { fg=nvimlightgrey2, gui="bold", }, -- Todo           xxx cterm=bold gui=bold guifg=NvimLightGrey2
--     sym"@markup.strong"                          { gui="bold", }, -- @markup.strong xxx cterm=bold gui=bold
--     sym"@markup.italic"                          { gui="italic", }, -- @markup.italic xxx cterm=italic gui=italic
--     sym"@markup.strikethrough"                   { gui="strikethrough", }, -- @markup.strikethrough xxx cterm=strikethrough gui=strikethrough
--     sym"@markup.underline"                       { gui="underline", }, -- @markup.underline xxx cterm=underline gui=underline
--     Added                                        { fg=nvimlightgreen, }, -- Added          xxx ctermfg=10 guifg=NvimLightGreen
--     sym"@diff.plus"                              { Added }, -- @diff.plus     xxx links to Added
--     GitSignsAdd                                  { Added }, -- GitSignsAdd    xxx links to Added
--     Removed                                      { fg=nvimlightred, }, -- Removed        xxx ctermfg=9 guifg=NvimLightRed
--     sym"@diff.minus"                             { Removed }, -- @diff.minus    xxx links to Removed
--     GitSignsDelete                               { Removed }, -- GitSignsDelete xxx links to Removed
--     Changed                                      { fg=nvimlightcyan, }, -- Changed        xxx ctermfg=14 guifg=NvimLightCyan
--     sym"@diff.delta"                             { Changed }, -- @diff.delta    xxx links to Changed
--     GitSignsChange                               { Changed }, -- GitSignsChange xxx links to Changed
--     sym"@tag"                                    { fg="#78a9ff", }, -- @tag           xxx guifg=#78a9ff
--     sym"@constant.macro"                         { fg="#08bdba", }, -- @constant.macro xxx guifg=#08bdba
--     FloatShadow                                  { blend=80, bg=nvimdarkgrey4, }, -- FloatShadow    xxx ctermbg=0 guibg=NvimDarkGrey4 blend=80
--     FloatShadowThrough                           { blend=100, bg=nvimdarkgrey4, }, -- FloatShadowThrough xxx ctermbg=0 guibg=NvimDarkGrey4 blend=100
--     MatchParen                                   { bg=nvimdarkgrey4, gui="bold", }, -- MatchParen     xxx cterm=bold,underline gui=bold guibg=NvimDarkGrey4
--     MatchParenCur                                { MatchParen }, -- MatchParenCur  xxx links to MatchParen
--     MatchWord                                    { MatchParen }, -- MatchWord      xxx links to MatchParen
--     RedrawDebugClear                             { bg="#ffff00", }, -- RedrawDebugClear xxx guibg=#ffff00
--     RedrawDebugComposed                          { bg="#63ff5b", }, -- RedrawDebugComposed xxx guibg=#63ff5b
--     RedrawDebugRecompose                         { bg="#ff5252", }, -- RedrawDebugRecompose xxx guibg=#ff5252
--     Error                                        { bg=nvimdarkred, fg=nvimlightgrey1, }, -- Error          xxx ctermfg=0 ctermbg=9 guifg=NvimLightGrey1 guibg=NvimDarkRed
--     NvimInvalid                                  { Error }, -- NvimInvalid    xxx links to Error
--     DiagnosticUnderlineError                     { sp=nvimlightred, gui="underline", }, -- DiagnosticUnderlineError xxx cterm=underline gui=underline guisp=NvimLightRed
--     DiagnosticUnderlineWarn                      { sp=nvimlightyellow, gui="underline", }, -- DiagnosticUnderlineWarn xxx cterm=underline gui=underline guisp=NvimLightYellow
--     DiagnosticUnderlineInfo                      { sp=nvimlightcyan, gui="underline", }, -- DiagnosticUnderlineInfo xxx cterm=underline gui=underline guisp=NvimLightCyan
--     DiagnosticUnderlineHint                      { sp=nvimlightblue, gui="underline", }, -- DiagnosticUnderlineHint xxx cterm=underline gui=underline guisp=NvimLightBlue
--     DiagnosticUnderlineOk                        { sp=nvimlightgreen, gui="underline", }, -- DiagnosticUnderlineOk xxx cterm=underline gui=underline guisp=NvimLightGreen
--     DiagnosticDeprecated                         { sp=nvimlightred, gui="strikethrough", }, -- DiagnosticDeprecated xxx cterm=strikethrough gui=strikethrough guisp=NvimLightRed
--     NvimInternalError                            { bg="red", fg="red", }, -- NvimInternalError xxx ctermfg=9 ctermbg=9 guifg=Red guibg=Red
--     NvimFigureBrace                              { NvimInternalError }, -- NvimFigureBrace xxx links to NvimInternalError
--     NvimSingleQuotedUnknownEscape                { NvimInternalError }, -- NvimSingleQuotedUnknownEscape xxx links to NvimInternalError
--     NvimInvalidSingleQuotedUnknownEscape         { NvimInternalError }, -- NvimInvalidSingleQuotedUnknownEscape xxx links to NvimInternalError
--     DapUIScope                                   { fg="#00f1f5", }, -- DapUIScope     xxx guifg=#00f1f5
--     DapUIType                                    { fg="#d484ff", }, -- DapUIType      xxx guifg=#d484ff
--     DapUIModifiedValue                           { fg="#00f1f5", gui="bold", }, -- DapUIModifiedValue xxx gui=bold guifg=#00f1f5
--     DapUIDecoration                              { fg="#00f1f5", }, -- DapUIDecoration xxx guifg=#00f1f5
--     DapUIThread                                  { fg="#a9ff68", }, -- DapUIThread    xxx guifg=#a9ff68
--     DapUIStoppedThread                           { fg="#00f1f5", }, -- DapUIStoppedThread xxx guifg=#00f1f5
--     DapUISource                                  { fg="#d484ff", }, -- DapUISource    xxx guifg=#d484ff
--     DapUILineNumber                              { fg="#00f1f5", }, -- DapUILineNumber xxx guifg=#00f1f5
--     DapUIBreakpointsLine                         { DapUILineNumber }, -- DapUIBreakpointsLine xxx links to DapUILineNumber
--     DapUIFloatBorder                             { fg="#00f1f5", }, -- DapUIFloatBorder xxx guifg=#00f1f5
--     DapUIWatchesEmpty                            { fg="#f70067", }, -- DapUIWatchesEmpty xxx guifg=#f70067
--     DapUIWatchesValue                            { fg="#a9ff68", }, -- DapUIWatchesValue xxx guifg=#a9ff68
--     DapUIWatchesError                            { fg="#f70067", }, -- DapUIWatchesError xxx guifg=#f70067
--     DapUIBreakpointsPath                         { fg="#00f1f5", }, -- DapUIBreakpointsPath xxx guifg=#00f1f5
--     DapUIBreakpointsInfo                         { fg="#a9ff68", }, -- DapUIBreakpointsInfo xxx guifg=#a9ff68
--     DapUIBreakpointsCurrentLine                  { fg="#a9ff68", gui="bold", }, -- DapUIBreakpointsCurrentLine xxx gui=bold guifg=#a9ff68
--     DapUICurrentFrameName                        { DapUIBreakpointsCurrentLine }, -- DapUICurrentFrameName xxx links to DapUIBreakpointsCurrentLine
--     DapUIBreakpointsDisabledLine                 { fg="#424242", }, -- DapUIBreakpointsDisabledLine xxx guifg=#424242
--     DapUIStepOver                                { fg="#00f1f5", }, -- DapUIStepOver  xxx guifg=#00f1f5
--     DapUIStepInto                                { fg="#00f1f5", }, -- DapUIStepInto  xxx guifg=#00f1f5
--     DapUIStepBack                                { fg="#00f1f5", }, -- DapUIStepBack  xxx guifg=#00f1f5
--     DapUIStepOut                                 { fg="#00f1f5", }, -- DapUIStepOut   xxx guifg=#00f1f5
--     DapUIStop                                    { fg="#f70067", }, -- DapUIStop      xxx guifg=#f70067
--     DapUIPlayPause                               { fg="#a9ff68", }, -- DapUIPlayPause xxx guifg=#a9ff68
--     DapUIRestart                                 { fg="#a9ff68", }, -- DapUIRestart   xxx guifg=#a9ff68
--     DapUIUnavailable                             { fg="#424242", }, -- DapUIUnavailable xxx guifg=#424242
--     DapUIWinSelect                               { fg="#00f1f5", gui="bold", }, -- DapUIWinSelect xxx ctermfg=14 gui=bold guifg=#00f1f5
--     DapUINormalNC                                { bg="#07080d", }, -- DapUINormalNC  xxx guibg=#07080d
--     DapUIPlayPauseNC                             { bg="#07080d", fg="#a9ff68", }, -- DapUIPlayPauseNC xxx guifg=#a9ff68 guibg=#07080d
--     DapUIRestartNC                               { bg="#07080d", fg="#a9ff68", }, -- DapUIRestartNC xxx guifg=#a9ff68 guibg=#07080d
--     DapUIStopNC                                  { bg="#07080d", fg="#f70067", }, -- DapUIStopNC    xxx guifg=#f70067 guibg=#07080d
--     DapUIUnavailableNC                           { bg="#07080d", fg="#424242", }, -- DapUIUnavailableNC xxx guifg=#424242 guibg=#07080d
--     DapUIStepOverNC                              { bg="#07080d", fg="#00f1f5", }, -- DapUIStepOverNC xxx guifg=#00f1f5 guibg=#07080d
--     DapUIStepIntoNC                              { bg="#07080d", fg="#00f1f5", }, -- DapUIStepIntoNC xxx guifg=#00f1f5 guibg=#07080d
--     DapUIStepBackNC                              { bg="#07080d", fg="#00f1f5", }, -- DapUIStepBackNC xxx guifg=#00f1f5 guibg=#07080d
--     DapUIStepOutNC                               { bg="#07080d", fg="#00f1f5", }, -- DapUIStepOutNC xxx guifg=#00f1f5 guibg=#07080d
--     CmpItemAbbrDeprecatedDefault                 { fg=nvimlightgrey4, }, -- CmpItemAbbrDeprecatedDefault xxx guifg=NvimLightGrey4
--     CmpItemAbbrDeprecated                        { CmpItemAbbrDeprecatedDefault }, -- CmpItemAbbrDeprecated xxx links to CmpItemAbbrDeprecatedDefault
--     CmpItemKindDefault                           { fg=nvimlightcyan, }, -- CmpItemKindDefault xxx guifg=NvimLightCyan
--     CmpItemKind                                  { CmpItemKindDefault }, -- CmpItemKind    xxx links to CmpItemKindDefault
--     semshiLocal                                  { fg="#ff875f", }, -- semshiLocal    xxx ctermfg=209 guifg=#ff875f
--     semshiGlobal                                 { gui="italic", }, -- semshiGlobal   xxx gui=italic
--     semshiImported                               { gui="bold", }, -- semshiImported xxx gui=bold
--     semshiFree                                   { fg="#ffafd7", }, -- semshiFree     xxx ctermfg=218 guifg=#ffafd7
--     semshiSelected                               { bg="#d7005f", fg="#ffffff", }, -- semshiSelected xxx ctermfg=231 ctermbg=161 guifg=#ffffff guibg=#d7005f
--     semshiErrorSign                              { bg="#d70000", fg="#ffffff", }, -- semshiErrorSign xxx ctermfg=231 ctermbg=160 guifg=#ffffff guibg=#d70000
--     semshiErrorChar                              { bg="#d70000", fg="#ffffff", }, -- semshiErrorChar xxx ctermfg=231 ctermbg=160 guifg=#ffffff guibg=#d70000
--     IlluminatedWordText                          { bg="#282828", fg="#ff5252", }, -- IlluminatedWordText xxx guifg=#ff5252 guibg=#282828
--     IlluminatedWordRead                          { bg="#282828", fg="#ffffff", }, -- IlluminatedWordRead xxx guifg=#ffffff guibg=#282828
--     IlluminatedWordWrite                         { bg="#252525", fg="#bdbdbd", }, -- IlluminatedWordWrite xxx guifg=#bdbdbd guibg=#252525
--     QuickScopePrimary                            { bg="#fb6896", gui="bold,underline", }, -- QuickScopePrimary xxx cterm=bold,underline gui=bold,underline guibg=#fb6896
--     QuickScopeSecondary                          { bg="#002933", gui="underline,italic", }, -- QuickScopeSecondary xxx cterm=underline,italic gui=underline,italic guibg=#002933
--     NotifyBackground                             { bg="#222222", fg="#939393", }, -- NotifyBackground xxx guifg=#939393 guibg=#222222
--     NotifyERRORBorder                            { fg="#ff5252", }, -- NotifyERRORBorder xxx guifg=#ff5252
--     NotifyWARNBorder                             { fg="#ffb53d", }, -- NotifyWARNBorder xxx guifg=#ffb53d
--     NotifyINFOBorder                             { fg="#a9ff68", }, -- NotifyINFOBorder xxx guifg=#a9ff68
--     NotifyDEBUGBorder                            { fg="#d4bbff", }, -- NotifyDEBUGBorder xxx guifg=#d4bbff
--     NotifyTRACEBorder                            { fg="#d484ff", }, -- NotifyTRACEBorder xxx guifg=#d484ff
--     NotifyERRORIcon                              { fg="#ff5252", }, -- NotifyERRORIcon xxx guifg=#ff5252
--     NotifyWARNIcon                               { fg="#ffb53d", }, -- NotifyWARNIcon xxx guifg=#ffb53d
--     NotifyINFOIcon                               { fg="#a9ff68", }, -- NotifyINFOIcon xxx guifg=#a9ff68
--     NotifyDEBUGIcon                              { fg="#d4bbff", }, -- NotifyDEBUGIcon xxx guifg=#d4bbff
--     NotifyTRACEIcon                              { fg="#d484ff", }, -- NotifyTRACEIcon xxx guifg=#d484ff
--     NotifyERRORTitle                             { fg="#ff5252", }, -- NotifyERRORTitle xxx guifg=#ff5252
--     NotifyWARNTitle                              { fg="#ffb53d", }, -- NotifyWARNTitle xxx guifg=#ffb53d
--     NotifyINFOTitle                              { fg="#a9ff68", }, -- NotifyINFOTitle xxx guifg=#a9ff68
--     NotifyDEBUGTitle                             { fg="#d4bbff", }, -- NotifyDEBUGTitle xxx guifg=#d4bbff
--     NotifyTRACETitle                             { fg="#d484ff", }, -- NotifyTRACETitle xxx guifg=#d484ff
--     NotifyERRORBody                              { bg="#1c1c1c", fg="#f8f8f8", }, -- NotifyERRORBody xxx guifg=#f8f8f8 guibg=#1c1c1c
--     NotifyWARNBody                               { bg="#1c1c1c", fg="#f8f8f8", }, -- NotifyWARNBody xxx guifg=#f8f8f8 guibg=#1c1c1c
--     NotifyINFOBody                               { bg="#1c1c1c", fg="#f8f8f8", }, -- NotifyINFOBody xxx guifg=#f8f8f8 guibg=#1c1c1c
--     NotifyDEBUGBody                              { bg="#1c1c1c", fg="#f8f8f8", }, -- NotifyDEBUGBody xxx guifg=#f8f8f8 guibg=#1c1c1c
--     NotifyTRACEBody                              { bg="#1c1c1c", fg="#f8f8f8", }, -- NotifyTRACEBody xxx guifg=#f8f8f8 guibg=#1c1c1c
--     NotifyLogTime                                { bg="#1c1c1c", fg="#777777", }, -- NotifyLogTime  xxx guifg=#777777 guibg=#1c1c1c
--     NotifyLogTitle                               { bg="#1c1c1c", fg="#00ccff", }, -- NotifyLogTitle xxx guifg=#00ccff guibg=#1c1c1c
--     RainbowDelimiterRed                          { fg="#cc241d", }, -- RainbowDelimiterRed xxx ctermfg=9 guifg=#cc241d
--     RainbowDelimiterOrange                       { fg="#d65d0e", }, -- RainbowDelimiterOrange xxx ctermfg=15 guifg=#d65d0e
--     RainbowDelimiterYellow                       { fg="#d79921", }, -- RainbowDelimiterYellow xxx ctermfg=11 guifg=#d79921
--     RainbowDelimiterGreen                        { fg="#689d6a", }, -- RainbowDelimiterGreen xxx ctermfg=10 guifg=#689d6a
--     RainbowDelimiterCyan                         { fg="#a89984", }, -- RainbowDelimiterCyan xxx ctermfg=14 guifg=#a89984
--     RainbowDelimiterBlue                         { fg="#458588", }, -- RainbowDelimiterBlue xxx ctermfg=12 guifg=#458588
--     RainbowDelimiterViolet                       { fg="#b16286", }, -- RainbowDelimiterViolet xxx ctermfg=13 guifg=#b16286
--     GitSignsStagedAdd                            { fg="#597b60", }, -- GitSignsStagedAdd xxx guifg=#597b60
--     GitSignsStagedChange                         { fg="#467c7b", }, -- GitSignsStagedChange xxx guifg=#467c7b
--     GitSignsStagedDelete                         { fg="#7f605c", }, -- GitSignsStagedDelete xxx guifg=#7f605c
--     GitSignsStagedChangedelete                   { fg="#467c7b", }, -- GitSignsStagedChangedelete xxx guifg=#467c7b
--     GitSignsStagedTopdelete                      { fg="#7f605c", }, -- GitSignsStagedTopdelete xxx guifg=#7f605c
--     GitSignsStagedAddNr                          { fg="#597b60", }, -- GitSignsStagedAddNr xxx guifg=#597b60
--     GitSignsStagedChangeNr                       { fg="#467c7b", }, -- GitSignsStagedChangeNr xxx guifg=#467c7b
--     GitSignsStagedDeleteNr                       { fg="#7f605c", }, -- GitSignsStagedDeleteNr xxx guifg=#7f605c
--     GitSignsStagedChangedeleteNr                 { fg="#467c7b", }, -- GitSignsStagedChangedeleteNr xxx guifg=#467c7b
--     GitSignsStagedTopdeleteNr                    { fg="#7f605c", }, -- GitSignsStagedTopdeleteNr xxx guifg=#7f605c
--     GitSignsStagedAddLn                          { bg="#005523", fg="#77787c", }, -- GitSignsStagedAddLn xxx guifg=#77787c guibg=#005523
--     GitSignsStagedChangeLn                       { bg="#4f5258", fg="#77787c", }, -- GitSignsStagedChangeLn xxx guifg=#77787c guibg=#4f5258
--     GitSignsStagedChangedeleteLn                 { bg="#4f5258", fg="#77787c", }, -- GitSignsStagedChangedeleteLn xxx guifg=#77787c guibg=#4f5258
--     DevIconXresources                            { fg="#e54d18", }, -- DevIconXresources xxx ctermfg=196 guifg=#e54d18
--     DevIconScss                                  { fg="#f55385", }, -- DevIconScss    xxx ctermfg=204 guifg=#f55385
--     DevIconTex                                   { fg="#3d6117", }, -- DevIconTex     xxx ctermfg=22 guifg=#3d6117
--     DevIconsbt                                   { fg="#cc3e44", }, -- DevIconsbt     xxx ctermfg=167 guifg=#cc3e44
--     DevIconImage                                 { fg="#d0bec8", }, -- DevIconImage   xxx ctermfg=181 guifg=#d0bec8
--     DevIconTerraform                             { fg="#5f43e9", }, -- DevIconTerraform xxx ctermfg=93 guifg=#5f43e9
--     DevIconTempl                                 { fg="#dbbd30", }, -- DevIconTempl   xxx ctermfg=178 guifg=#dbbd30
--     DevIconDockerfile                            { fg="#458ee6", }, -- DevIconDockerfile xxx ctermfg=68 guifg=#458ee6
--     DevIconBzl                                   { fg="#89e051", }, -- DevIconBzl     xxx ctermfg=113 guifg=#89e051
--     DevIconCue                                   { fg="#ed95ae", }, -- DevIconCue     xxx ctermfg=211 guifg=#ed95ae
--     DevIconScheme                                { fg="#eeeeee", }, -- DevIconScheme  xxx ctermfg=255 guifg=#eeeeee
--     DevIconEndeavour                             { fg="#7b3db9", }, -- DevIconEndeavour xxx ctermfg=91 guifg=#7b3db9
--     DevIconRs                                    { fg="#dea584", }, -- DevIconRs      xxx ctermfg=216 guifg=#dea584
--     DevIconRake                                  { fg="#701516", }, -- DevIconRake    xxx ctermfg=52 guifg=#701516
--     DevIconPy                                    { fg="#ffbc03", }, -- DevIconPy      xxx ctermfg=214 guifg=#ffbc03
--     DevIconGemspec                               { fg="#701516", }, -- DevIconGemspec xxx ctermfg=52 guifg=#701516
--     DevIconDevuan                                { fg="#404a52", }, -- DevIconDevuan  xxx ctermfg=238 guifg=#404a52
--     DevIconDeepin                                { fg="#2ca7f8", }, -- DevIconDeepin  xxx ctermfg=39 guifg=#2ca7f8
--     DevIconOpenSCAD                              { fg="#f9d72c", }, -- DevIconOpenSCAD xxx ctermfg=220 guifg=#f9d72c
--     DevIconEnlightenment                         { fg="#ffffff", }, -- DevIconEnlightenment xxx ctermfg=231 guifg=#ffffff
--     DevIcondwm                                   { fg="#1177aa", }, -- DevIcondwm     xxx ctermfg=31 guifg=#1177aa
--     DevIconCrystalLinux                          { fg="#a900ff", }, -- DevIconCrystalLinux xxx ctermfg=129 guifg=#a900ff
--     DevIconSha256                                { fg="#8c86af", }, -- DevIconSha256  xxx ctermfg=103 guifg=#8c86af
--     DevIconBSPWM                                 { fg="#2f2f2f", }, -- DevIconBSPWM   xxx ctermfg=236 guifg=#2f2f2f
--     DevIconLuaurc                                { fg="#00a2ff", }, -- DevIconLuaurc  xxx ctermfg=75 guifg=#00a2ff
--     DevIconBigLinux                              { fg="#189fc8", }, -- DevIconBigLinux xxx ctermfg=38 guifg=#189fc8
--     DevIconSvelteConfig                          { fg="#ff3e00", }, -- DevIconSvelteConfig xxx ctermfg=196 guifg=#ff3e00
--     DevIconXfce                                  { fg="#00aadf", }, -- DevIconXfce    xxx ctermfg=74 guifg=#00aadf
--     DevIconRakefile                              { fg="#701516", }, -- DevIconRakefile xxx ctermfg=52 guifg=#701516
--     DevIconQt                                    { fg="#40cd52", }, -- DevIconQt      xxx ctermfg=77 guifg=#40cd52
--     sym"DevIconPy.typed"                         { fg="#ffbc03", }, -- DevIconPy.typed xxx ctermfg=214 guifg=#ffbc03
--     DevIconArcoLinux                             { fg="#6690eb", }, -- DevIconArcoLinux xxx ctermfg=68 guifg=#6690eb
--     DevIconPrusaSlicer                           { fg="#ec6b23", }, -- DevIconPrusaSlicer xxx ctermfg=202 guifg=#ec6b23
--     DevIconR                                     { fg="#2266ba", }, -- DevIconR       xxx ctermfg=25 guifg=#2266ba
--     DevIconArchlabs                              { fg="#503f42", }, -- DevIconArchlabs xxx ctermfg=238 guifg=#503f42
--     DevIconLocalization                          { fg="#2596be", }, -- DevIconLocalization xxx ctermfg=31 guifg=#2596be
--     DevIconDiff                                  { fg="#41535b", }, -- DevIconDiff    xxx ctermfg=239 guifg=#41535b
--     DevIconLXQt                                  { fg="#0191d2", }, -- DevIconLXQt    xxx ctermfg=32 guifg=#0191d2
--     DevIconPlatformio                            { fg="#f6822b", }, -- DevIconPlatformio xxx ctermfg=208 guifg=#f6822b
--     DevIconJson                                  { fg="#cbcb41", }, -- DevIconJson    xxx ctermfg=185 guifg=#cbcb41
--     DevIconLXDE                                  { fg="#a4a4a4", }, -- DevIconLXDE    xxx ctermfg=248 guifg=#a4a4a4
--     DevIconAOSC                                  { fg="#c00000", }, -- DevIconAOSC    xxx ctermfg=124 guifg=#c00000
--     DevIconPackageLockJson                       { fg="#7a0d21", }, -- DevIconPackageLockJson xxx ctermfg=52 guifg=#7a0d21
--     DevIconGNOME                                 { fg="#ffffff", }, -- DevIconGNOME   xxx ctermfg=231 guifg=#ffffff
--     DevIconAi                                    { fg="#cbcb41", }, -- DevIconAi      xxx ctermfg=185 guifg=#cbcb41
--     DevIconAlpine                                { fg="#0d597f", }, -- DevIconAlpine  xxx ctermfg=24 guifg=#0d597f
--     DevIconCinnamon                              { fg="#dc682e", }, -- DevIconCinnamon xxx ctermfg=166 guifg=#dc682e
--     DevIconAlmalinux                             { fg="#ff4649", }, -- DevIconAlmalinux xxx ctermfg=203 guifg=#ff4649
--     DevIconBudgie                                { fg="#4e5361", }, -- DevIconBudgie  xxx ctermfg=240 guifg=#4e5361
--     DevIconLXQtConfigFile                        { fg="#0192d3", }, -- DevIconLXQtConfigFile xxx ctermfg=32 guifg=#0192d3
--     DevIconZorin                                 { fg="#14a1e8", }, -- DevIconZorin   xxx ctermfg=39 guifg=#14a1e8
--     DevIconPsManifestfile                        { fg="#6975c4", }, -- DevIconPsManifestfile xxx ctermfg=68 guifg=#6975c4
--     DevIconPsScriptModulefile                    { fg="#6975c4", }, -- DevIconPsScriptModulefile xxx ctermfg=68 guifg=#6975c4
--     DevIconApple                                 { fg="#a2aaad", }, -- DevIconApple   xxx ctermfg=248 guifg=#a2aaad
--     DevIconNodeModules                           { fg="#e8274b", }, -- DevIconNodeModules xxx ctermfg=197 guifg=#e8274b
--     DevIconKritarc                               { fg="#f245fb", }, -- DevIconKritarc xxx ctermfg=201 guifg=#f245fb
--     DevIconZst                                   { fg="#eca517", }, -- DevIconZst     xxx ctermfg=214 guifg=#eca517
--     DevIconKritadisplayrc                        { fg="#f245fb", }, -- DevIconKritadisplayrc xxx ctermfg=201 guifg=#f245fb
--     DevIconMl                                    { fg="#e37933", }, -- DevIconMl      xxx ctermfg=166 guifg=#e37933
--     DevIconKdenliverc                            { fg="#83b8f2", }, -- DevIconKdenliverc xxx ctermfg=110 guifg=#83b8f2
--     DevIconKdenliveLayoutsrc                     { fg="#83b8f2", }, -- DevIconKdenliveLayoutsrc xxx ctermfg=110 guifg=#83b8f2
--     DevIconKDEglobals                            { fg="#1c99f3", }, -- DevIconKDEglobals xxx ctermfg=32 guifg=#1c99f3
--     DevIconRb                                    { fg="#701516", }, -- DevIconRb      xxx ctermfg=52 guifg=#701516
--     DevIconKalgebrarc                            { fg="#1c99f3", }, -- DevIconKalgebrarc xxx ctermfg=32 guifg=#1c99f3
--     DevIconXpi                                   { fg="#ff1b01", }, -- DevIconXpi     xxx ctermfg=196 guifg=#ff1b01
--     DevIconi3                                    { fg="#e8ebee", }, -- DevIconi3      xxx ctermfg=255 guifg=#e8ebee
--     DevIconTrisquelGNULinux                      { fg="#0f58b6", }, -- DevIconTrisquelGNULinux xxx ctermfg=25 guifg=#0f58b6
--     DevIconHyprland                              { fg="#00aaae", }, -- DevIconHyprland xxx ctermfg=37 guifg=#00aaae
--     DevIconTails                                 { fg="#56347c", }, -- DevIconTails   xxx ctermfg=54 guifg=#56347c
--     DevIconGradleWrapperProperties               { fg="#005f87", }, -- DevIconGradleWrapperProperties xxx ctermfg=24 guifg=#005f87
--     DevIconSolus                                 { fg="#4b5163", }, -- DevIconSolus   xxx ctermfg=239 guifg=#4b5163
--     DevIconVHDL                                  { fg="#019833", }, -- DevIconVHDL    xxx ctermfg=28 guifg=#019833
--     DevIconSlackware                             { fg="#475fa9", }, -- DevIconSlackware xxx ctermfg=61 guifg=#475fa9
--     DevIconGIMP                                  { fg="#635b46", }, -- DevIconGIMP    xxx ctermfg=240 guifg=#635b46
--     DevIconGz                                    { fg="#eca517", }, -- DevIconGz      xxx ctermfg=214 guifg=#eca517
--     DevIconKiCadFootprintTable                   { fg="#ffffff", }, -- DevIconKiCadFootprintTable xxx ctermfg=231 guifg=#ffffff
--     DevIconSabayon                               { fg="#c6c6c6", }, -- DevIconSabayon xxx ctermfg=251 guifg=#c6c6c6
--     DevIconXaml                                  { fg="#512bd4", }, -- DevIconXaml    xxx ctermfg=56 guifg=#512bd4
--     DevIconTor                                   { fg="#519aba", }, -- DevIconTor     xxx ctermfg=74 guifg=#519aba
--     DevIconFavicon                               { fg="#cbcb41", }, -- DevIconFavicon xxx ctermfg=185 guifg=#cbcb41
--     DevIconRockyLinux                            { fg="#0fb37d", }, -- DevIconRockyLinux xxx ctermfg=36 guifg=#0fb37d
--     DevIconLogos                                 { fg="#599eff", }, -- DevIconLogos   xxx ctermfg=111 guifg=#599eff
--     DevIconC                                     { fg="#599eff", }, -- DevIconC       xxx ctermfg=111 guifg=#599eff
--     DevIconReScriptInterface                     { fg="#f55385", }, -- DevIconReScriptInterface xxx ctermfg=204 guifg=#f55385
--     DevIconVRML                                  { fg="#888888", }, -- DevIconVRML    xxx ctermfg=102 guifg=#888888
--     DevIconReScript                              { fg="#cc3e44", }, -- DevIconReScript xxx ctermfg=167 guifg=#cc3e44
--     DevIconCMakeLists                            { fg="#6d8086", }, -- DevIconCMakeLists xxx ctermfg=66 guifg=#6d8086
--     DevIconMarkdown                              { fg="#dddddd", }, -- DevIconMarkdown xxx ctermfg=253 guifg=#dddddd
--     DevIconGCode                                 { fg="#1471ad", }, -- DevIconGCode   xxx ctermfg=32 guifg=#1471ad
--     DevIconQubesOS                               { fg="#3774d8", }, -- DevIconQubesOS xxx ctermfg=33 guifg=#3774d8
--     DevIconEx                                    { fg="#a074c4", }, -- DevIconEx      xxx ctermfg=140 guifg=#a074c4
--     DevIconPuppyLinux                            { fg="#a2aeb9", }, -- DevIconPuppyLinux xxx ctermfg=145 guifg=#a2aeb9
--     DevIconPl                                    { fg="#519aba", }, -- DevIconPl      xxx ctermfg=74 guifg=#519aba
--     DevIconGvimrc                                { fg="#019833", }, -- DevIconGvimrc  xxx ctermfg=28 guifg=#019833
--     DevIconTs                                    { fg="#519aba", }, -- DevIconTs      xxx ctermfg=74 guifg=#519aba
--     DevIconpostmarketOS                          { fg="#009900", }, -- DevIconpostmarketOS xxx ctermfg=28 guifg=#009900
--     DevIconCache                                 { fg="#ffffff", }, -- DevIconCache   xxx ctermfg=231 guifg=#ffffff
--     DevIconXInitrc                               { fg="#e54d18", }, -- DevIconXInitrc xxx ctermfg=196 guifg=#e54d18
--     DevIconCMake                                 { fg="#6d8086", }, -- DevIconCMake   xxx ctermfg=66 guifg=#6d8086
--     DevIconTypoScript                            { fg="#ff8700", }, -- DevIconTypoScript xxx ctermfg=208 guifg=#ff8700
--     DevIconSRCINFO                               { fg="#0f94d2", }, -- DevIconSRCINFO xxx ctermfg=67 guifg=#0f94d2
--     DevIconPyi                                   { fg="#ffbc03", }, -- DevIconPyi     xxx ctermfg=214 guifg=#ffbc03
--     DevIconSettingsJson                          { fg="#854cc7", }, -- DevIconSettingsJson xxx ctermfg=98 guifg=#854cc7
--     DevIconPyx                                   { fg="#5aa7e4", }, -- DevIconPyx     xxx ctermfg=39 guifg=#5aa7e4
--     DevIconParabolaGNULinuxLibre                 { fg="#797dac", }, -- DevIconParabolaGNULinuxLibre xxx ctermfg=103 guifg=#797dac
--     DevIconPxd                                   { fg="#5aa7e4", }, -- DevIconPxd     xxx ctermfg=39 guifg=#5aa7e4
--     DevIconH                                     { fg="#a074c4", }, -- DevIconH       xxx ctermfg=140 guifg=#a074c4
--     DevIconopenSUSE                              { fg="#6fb424", }, -- DevIconopenSUSE xxx ctermfg=70 guifg=#6fb424
--     DevIconVerilog                               { fg="#019833", }, -- DevIconVerilog xxx ctermfg=28 guifg=#019833
--     DevIconGTK                                   { fg="#ffffff", }, -- DevIconGTK     xxx ctermfg=231 guifg=#ffffff
--     DevIconGitlabCI                              { fg="#e24329", }, -- DevIconGitlabCI xxx ctermfg=196 guifg=#e24329
--     DevIconNixOS                                 { fg="#7ab1db", }, -- DevIconNixOS   xxx ctermfg=110 guifg=#7ab1db
--     DevIconEslintIgnore                          { fg="#4b32c3", }, -- DevIconEslintIgnore xxx ctermfg=56 guifg=#4b32c3
--     DevIconMXLinux                               { fg="#ffffff", }, -- DevIconMXLinux xxx ctermfg=231 guifg=#ffffff
--     DevIconManjaro                               { fg="#33b959", }, -- DevIconManjaro xxx ctermfg=35 guifg=#33b959
--     DevIconMageia                                { fg="#2397d4", }, -- DevIconMageia  xxx ctermfg=67 guifg=#2397d4
--     DevIconBazelBuild                            { fg="#89e051", }, -- DevIconBazelBuild xxx ctermfg=113 guifg=#89e051
--     DevIconDownload                              { fg="#44cda8", }, -- DevIconDownload xxx ctermfg=43 guifg=#44cda8
--     DevIconLocOS                                 { fg="#fab402", }, -- DevIconLocOS   xxx ctermfg=214 guifg=#fab402
--     DevIconKubuntu                               { fg="#007ac2", }, -- DevIconKubuntu xxx ctermfg=32 guifg=#007ac2
--     DevIconWindows                               { fg="#00a4ef", }, -- DevIconWindows xxx ctermfg=39 guifg=#00a4ef
--     DevIconKali                                  { fg="#2777ff", }, -- DevIconKali    xxx ctermfg=69 guifg=#2777ff
--     DevIconIllumos                               { fg="#ff430f", }, -- DevIconIllumos xxx ctermfg=196 guifg=#ff430f
--     DevIconConfiguration                         { fg="#6d8086", }, -- DevIconConfiguration xxx ctermfg=66 guifg=#6d8086
--     DevIconHyperbolaGNULinuxLibre                { fg="#c0c0c0", }, -- DevIconHyperbolaGNULinuxLibre xxx ctermfg=250 guifg=#c0c0c0
--     DevIconGuix                                  { fg="#ffcc00", }, -- DevIconGuix    xxx ctermfg=220 guifg=#ffcc00
--     DevIconGentoo                                { fg="#b1abce", }, -- DevIconGentoo  xxx ctermfg=146 guifg=#b1abce
--     DevIconGarudaLinux                           { fg="#2974e1", }, -- DevIconGarudaLinux xxx ctermfg=33 guifg=#2974e1
--     DevIconBash                                  { fg="#89e051", }, -- DevIconBash    xxx ctermfg=113 guifg=#89e051
--     DevIconFedora                                { fg="#072a5e", }, -- DevIconFedora  xxx ctermfg=17 guifg=#072a5e
--     DevIconXml                                   { fg="#e37933", }, -- DevIconXml     xxx ctermfg=166 guifg=#e37933
--     DevIconSystemVerilog                         { fg="#019833", }, -- DevIconSystemVerilog xxx ctermfg=28 guifg=#019833
--     DevIconVlang                                 { fg="#5d87bf", }, -- DevIconVlang   xxx ctermfg=67 guifg=#5d87bf
--     DevIconZig                                   { fg="#f69a1b", }, -- DevIconZig     xxx ctermfg=172 guifg=#f69a1b
--     DevIconYml                                   { fg="#6d8086", }, -- DevIconYml     xxx ctermfg=66 guifg=#6d8086
--     DevIconQuery                                 { fg="#90a850", }, -- DevIconQuery   xxx ctermfg=107 guifg=#90a850
--     DevIconXorgConf                              { fg="#e54d18", }, -- DevIconXorgConf xxx ctermfg=196 guifg=#e54d18
--     DevIconPKGBUILD                              { fg="#0f94d2", }, -- DevIconPKGBUILD xxx ctermfg=67 guifg=#0f94d2
--     DevIconCSharpProject                         { fg="#512bd4", }, -- DevIconCSharpProject xxx ctermfg=56 guifg=#512bd4
--     DevIconEnv                                   { fg="#faf743", }, -- DevIconEnv     xxx ctermfg=227 guifg=#faf743
--     DevIconBashrc                                { fg="#89e051", }, -- DevIconBashrc  xxx ctermfg=113 guifg=#89e051
--     DevIconRss                                   { fg="#fb9d3b", }, -- DevIconRss     xxx ctermfg=215 guifg=#fb9d3b
--     DevIconXul                                   { fg="#e37933", }, -- DevIconXul     xxx ctermfg=166 guifg=#e37933
--     DevIconThunderbird                           { fg="#137be1", }, -- DevIconThunderbird xxx ctermfg=33 guifg=#137be1
--     DevIconVue                                   { fg="#8dc149", }, -- DevIconVue     xxx ctermfg=113 guifg=#8dc149
--     DevIconGulpfile                              { fg="#cc3e44", }, -- DevIconGulpfile xxx ctermfg=167 guifg=#cc3e44
--     DevIconVala                                  { fg="#7239b3", }, -- DevIconVala    xxx ctermfg=91 guifg=#7239b3
--     DevIconOrgMode                               { fg="#77aa99", }, -- DevIconOrgMode xxx ctermfg=73 guifg=#77aa99
--     DevIconGodotProject                          { fg="#6d8086", }, -- DevIconGodotProject xxx ctermfg=66 guifg=#6d8086
--     DevIconBinaryGLTF                            { fg="#ffb13b", }, -- DevIconBinaryGLTF xxx ctermfg=214 guifg=#ffb13b
--     DevIconHaxe                                  { fg="#ea8220", }, -- DevIconHaxe    xxx ctermfg=208 guifg=#ea8220
--     DevIconGitCommit                             { fg="#f54d27", }, -- DevIconGitCommit xxx ctermfg=196 guifg=#f54d27
--     DevIconLinux                                 { fg="#fdfdfb", }, -- DevIconLinux   xxx ctermfg=231 guifg=#fdfdfb
--     DevIconFsscript                              { fg="#519aba", }, -- DevIconFsscript xxx ctermfg=74 guifg=#519aba
--     DevIconFsharp                                { fg="#519aba", }, -- DevIconFsharp  xxx ctermfg=74 guifg=#519aba
--     DevIconFlac                                  { fg="#66d8ef", }, -- DevIconFlac    xxx ctermfg=45 guifg=#66d8ef
--     DevIconMakefile                              { fg="#6d8086", }, -- DevIconMakefile xxx ctermfg=66 guifg=#6d8086
--     DevIconDropbox                               { fg="#0061fe", }, -- DevIconDropbox xxx ctermfg=27 guifg=#0061fe
--     DevIconDrools                                { fg="#ffafaf", }, -- DevIconDrools  xxx ctermfg=217 guifg=#ffafaf
--     DevIconDocx                                  { fg="#185abd", }, -- DevIconDocx    xxx ctermfg=26 guifg=#185abd
--     DevIconDoc                                   { fg="#185abd", }, -- DevIconDoc     xxx ctermfg=26 guifg=#185abd
--     DevIconCp                                    { fg="#519aba", }, -- DevIconCp      xxx ctermfg=74 guifg=#519aba
--     DevIconCson                                  { fg="#cbcb41", }, -- DevIconCson    xxx ctermfg=185 guifg=#cbcb41
--     DevIconCoffee                                { fg="#cbcb41", }, -- DevIconCoffee  xxx ctermfg=185 guifg=#cbcb41
--     DevIconBmp                                   { fg="#a074c4", }, -- DevIconBmp     xxx ctermfg=140 guifg=#a074c4
--     DevIconAac                                   { fg="#66d8ef", }, -- DevIconAac     xxx ctermfg=45 guifg=#66d8ef
--     DevIconGradleWrapperScript                   { fg="#005f87", }, -- DevIconGradleWrapperScript xxx ctermfg=24 guifg=#005f87
--     DevIconVagrantfile                           { fg="#1563ff", }, -- DevIconVagrantfile xxx ctermfg=27 guifg=#1563ff
--     DevIconLicense                               { fg="#d0bf41", }, -- DevIconLicense xxx ctermfg=185 guifg=#d0bf41
--     DevIconOgg                                   { fg="#66d8ef", }, -- DevIconOgg     xxx ctermfg=45 guifg=#66d8ef
--     DevIconFreeCAD                               { fg="#cb0d0d", }, -- DevIconFreeCAD xxx ctermfg=160 guifg=#cb0d0d
--     DevIconGemfile                               { fg="#701516", }, -- DevIconGemfile xxx ctermfg=52 guifg=#701516
--     DevIconOPUS                                  { fg="#f88a02", }, -- DevIconOPUS    xxx ctermfg=208 guifg=#f88a02
--     DevIconBrewfile                              { fg="#701516", }, -- DevIconBrewfile xxx ctermfg=52 guifg=#701516
--     DevIconAvif                                  { fg="#a074c4", }, -- DevIconAvif    xxx ctermfg=140 guifg=#a074c4
--     DevIcon3DObjectFile                          { fg="#888888", }, -- DevIcon3DObjectFile xxx ctermfg=102 guifg=#888888
--     DevIconPng                                   { fg="#a074c4", }, -- DevIconPng     xxx ctermfg=140 guifg=#a074c4
--     DevIconPyd                                   { fg="#ffe291", }, -- DevIconPyd     xxx ctermfg=222 guifg=#ffe291
--     DevIconWasm                                  { fg="#5c4cdb", }, -- DevIconWasm    xxx ctermfg=62 guifg=#5c4cdb
--     DevIconFusion360                             { fg="#839463", }, -- DevIconFusion360 xxx ctermfg=101 guifg=#839463
--     DevIconWebp                                  { fg="#a074c4", }, -- DevIconWebp    xxx ctermfg=140 guifg=#a074c4
--     DevIconWebpack                               { fg="#519aba", }, -- DevIconWebpack xxx ctermfg=74 guifg=#519aba
--     DevIconXcPlayground                          { fg="#e37933", }, -- DevIconXcPlayground xxx ctermfg=166 guifg=#e37933
--     DevIconExe                                   { fg="#9f0500", }, -- DevIconExe     xxx ctermfg=124 guifg=#9f0500
--     DevIconSublime                               { fg="#e37933", }, -- DevIconSublime xxx ctermfg=166 guifg=#e37933
--     DevIconStyl                                  { fg="#8dc149", }, -- DevIconStyl    xxx ctermfg=113 guifg=#8dc149
--     DevIconSql                                   { fg="#dad8d8", }, -- DevIconSql     xxx ctermfg=188 guifg=#dad8d8
--     DevIconHtml                                  { fg="#e44d26", }, -- DevIconHtml    xxx ctermfg=196 guifg=#e44d26
--     DevIconEpub                                  { fg="#eab16d", }, -- DevIconEpub    xxx ctermfg=215 guifg=#eab16d
--     DevIconXlsx                                  { fg="#207245", }, -- DevIconXlsx    xxx ctermfg=29 guifg=#207245
--     DevIconXls                                   { fg="#207245", }, -- DevIconXls     xxx ctermfg=29 guifg=#207245
--     DevIconEmbeddedOpenTypeFont                  { fg="#ececec", }, -- DevIconEmbeddedOpenTypeFont xxx ctermfg=255 guifg=#ececec
--     DevIconRlib                                  { fg="#dea584", }, -- DevIconRlib    xxx ctermfg=216 guifg=#dea584
--     DevIconWav                                   { fg="#66d8ef", }, -- DevIconWav     xxx ctermfg=45 guifg=#66d8ef
--     DevIconMkv                                   { fg="#fd971f", }, -- DevIconMkv     xxx ctermfg=208 guifg=#fd971f
--     DevIconMdx                                   { fg="#519aba", }, -- DevIconMdx     xxx ctermfg=74 guifg=#519aba
--     DevIconM4V                                   { fg="#fd971f", }, -- DevIconM4V     xxx ctermfg=208 guifg=#fd971f
--     DevIconElisp                                 { fg="#8172be", }, -- DevIconElisp   xxx ctermfg=97 guifg=#8172be
--     DevIconPsb                                   { fg="#519aba", }, -- DevIconPsb     xxx ctermfg=74 guifg=#519aba
--     DevIconCss                                   { fg="#42a5f5", }, -- DevIconCss     xxx ctermfg=75 guifg=#42a5f5
--     DevIconEbook                                 { fg="#eab16d", }, -- DevIconEbook   xxx ctermfg=215 guifg=#eab16d
--     DevIconAutoCADDxf                            { fg="#839463", }, -- DevIconAutoCADDxf xxx ctermfg=101 guifg=#839463
--     DevIconAutoCADDwg                            { fg="#839463", }, -- DevIconAutoCADDwg xxx ctermfg=101 guifg=#839463
--     DevIconOpenBSD                               { fg="#f2ca30", }, -- DevIconOpenBSD xxx ctermfg=220 guifg=#f2ca30
--     DevIconArduino                               { fg="#56b6c2", }, -- DevIconArduino xxx ctermfg=73 guifg=#56b6c2
--     DevIconRar                                   { fg="#eca517", }, -- DevIconRar     xxx ctermfg=214 guifg=#eca517
--     DevIconxmonad                                { fg="#fd4d5d", }, -- DevIconxmonad  xxx ctermfg=203 guifg=#fd4d5d
--     DevIconSway                                  { fg="#68751c", }, -- DevIconSway    xxx ctermfg=64 guifg=#68751c
--     DevIconDll                                   { fg="#4d2c0b", }, -- DevIconDll     xxx ctermfg=52 guifg=#4d2c0b
--     DevIconGitLogo                               { fg="#f14c28", }, -- DevIconGitLogo xxx ctermfg=196 guifg=#f14c28
--     DevIconImportConfiguration                   { fg="#ececec", }, -- DevIconImportConfiguration xxx ctermfg=255 guifg=#ececec
--     DevIconDconf                                 { fg="#ffffff", }, -- DevIconDconf   xxx ctermfg=231 guifg=#ffffff
--     DevIconM3u                                   { fg="#ed95ae", }, -- DevIconM3u     xxx ctermfg=211 guifg=#ed95ae
--     DevIconHeex                                  { fg="#a074c4", }, -- DevIconHeex    xxx ctermfg=140 guifg=#a074c4
--     DevIconPxi                                   { fg="#5aa7e4", }, -- DevIconPxi     xxx ctermfg=39 guifg=#5aa7e4
--     DevIconPub                                   { fg="#e3c58e", }, -- DevIconPub     xxx ctermfg=222 guifg=#e3c58e
--     DevIconHs                                    { fg="#a074c4", }, -- DevIconHs      xxx ctermfg=140 guifg=#a074c4
--     DevIconCrdownload                            { fg="#44cda8", }, -- DevIconCrdownload xxx ctermfg=43 guifg=#44cda8
--     DevIconHbs                                   { fg="#f0772b", }, -- DevIconHbs     xxx ctermfg=202 guifg=#f0772b
--     DevIconAsciinema                             { fg="#fd971f", }, -- DevIconAsciinema xxx ctermfg=208 guifg=#fd971f
--     DevIconHaml                                  { fg="#eaeae1", }, -- DevIconHaml    xxx ctermfg=255 guifg=#eaeae1
--     DevIconTerminal                              { fg="#31b53e", }, -- DevIconTerminal xxx ctermfg=34 guifg=#31b53e
--     DevIconConfigRu                              { fg="#701516", }, -- DevIconConfigRu xxx ctermfg=52 guifg=#701516
--     DevIconClojureDart                           { fg="#519aba", }, -- DevIconClojureDart xxx ctermfg=74 guifg=#519aba
--     DevIconGraphQL                               { fg="#e535ab", }, -- DevIconGraphQL xxx ctermfg=199 guifg=#e535ab
--     DevIconPdf                                   { fg="#b30b00", }, -- DevIconPdf     xxx ctermfg=124 guifg=#b30b00
--     DevIconErl                                   { fg="#b83998", }, -- DevIconErl     xxx ctermfg=163 guifg=#b83998
--     DevIconBz3                                   { fg="#eca517", }, -- DevIconBz3     xxx ctermfg=214 guifg=#eca517
--     DevIconLuau                                  { fg="#00a2ff", }, -- DevIconLuau    xxx ctermfg=75 guifg=#00a2ff
--     DevIconBz2                                   { fg="#eca517", }, -- DevIconBz2     xxx ctermfg=214 guifg=#eca517
--     DevIconGodotTextResource                     { fg="#6d8086", }, -- DevIconGodotTextResource xxx ctermfg=66 guifg=#6d8086
--     DevIconBz                                    { fg="#eca517", }, -- DevIconBz      xxx ctermfg=214 guifg=#eca517
--     DevIconBlueprint                             { fg="#5796e2", }, -- DevIconBlueprint xxx ctermfg=68 guifg=#5796e2
--     DevIconBoundaryRepresentation                { fg="#839463", }, -- DevIconBoundaryRepresentation xxx ctermfg=101 guifg=#839463
--     DevIconConfig                                { fg="#6d8086", }, -- DevIconConfig  xxx ctermfg=66 guifg=#6d8086
--     DevIconFsi                                   { fg="#519aba", }, -- DevIconFsi     xxx ctermfg=74 guifg=#519aba
--     DevIconBlade                                 { fg="#f05340", }, -- DevIconBlade   xxx ctermfg=203 guifg=#f05340
--     DevIconBibTeX                                { fg="#cbcb41", }, -- DevIconBibTeX  xxx ctermfg=185 guifg=#cbcb41
--     DevIconTSConfig                              { fg="#519aba", }, -- DevIconTSConfig xxx ctermfg=74 guifg=#519aba
--     DevIconLiquid                                { fg="#95bf47", }, -- DevIconLiquid  xxx ctermfg=106 guifg=#95bf47
--     DevIconAzureCli                              { fg="#0078d4", }, -- DevIconAzureCli xxx ctermfg=32 guifg=#0078d4
--     DevIconPatch                                 { fg="#41535b", }, -- DevIconPatch   xxx ctermfg=239 guifg=#41535b
--     DevIconIni                                   { fg="#6d8086", }, -- DevIconIni     xxx ctermfg=66 guifg=#6d8086
--     DevIconFortran                               { fg="#734f96", }, -- DevIconFortran xxx ctermfg=97 guifg=#734f96
--     DevIconAsc                                   { fg="#576d7f", }, -- DevIconAsc     xxx ctermfg=242 guifg=#576d7f
--     DevIconLess                                  { fg="#563d7c", }, -- DevIconLess    xxx ctermfg=54 guifg=#563d7c
--     DevIconMint                                  { fg="#87c095", }, -- DevIconMint    xxx ctermfg=108 guifg=#87c095
--     DevIconAstro                                 { fg="#e23f67", }, -- DevIconAstro   xxx ctermfg=197 guifg=#e23f67
--     DevIconCts                                   { fg="#519aba", }, -- DevIconCts     xxx ctermfg=74 guifg=#519aba
--     DevIconApp                                   { fg="#9f0500", }, -- DevIconApp     xxx ctermfg=124 guifg=#9f0500
--     DevIconapk                                   { fg="#34a853", }, -- DevIconapk     xxx ctermfg=35 guifg=#34a853
--     DevIconNim                                   { fg="#f3d400", }, -- DevIconNim     xxx ctermfg=220 guifg=#f3d400
--     DevIconAndroid                               { fg="#34a853", }, -- DevIconAndroid xxx ctermfg=35 guifg=#34a853
--     DevIconAppleScript                           { fg="#6d8085", }, -- DevIconAppleScript xxx ctermfg=66 guifg=#6d8085
--     DevIconMustache                              { fg="#e37933", }, -- DevIconMustache xxx ctermfg=166 guifg=#e37933
--     DevIconZigObjectNotation                     { fg="#f69a1b", }, -- DevIconZigObjectNotation xxx ctermfg=172 guifg=#f69a1b
--     DevIconDot                                   { fg="#30638e", }, -- DevIconDot     xxx ctermfg=24 guifg=#30638e
--     DevIconUI                                    { fg="#0c306e", }, -- DevIconUI      xxx ctermfg=17 guifg=#0c306e
--     DevIconDump                                  { fg="#dad8d8", }, -- DevIconDump    xxx ctermfg=188 guifg=#dad8d8
--     DevIconBat                                   { fg="#c1f12e", }, -- DevIconBat     xxx ctermfg=191 guifg=#c1f12e
--     DevIconWeston                                { fg="#ffbb01", }, -- DevIconWeston  xxx ctermfg=214 guifg=#ffbb01
--     DevIconStep                                  { fg="#839463", }, -- DevIconStep    xxx ctermfg=101 guifg=#839463
--     DevIconWebmanifest                           { fg="#f1e05a", }, -- DevIconWebmanifest xxx ctermfg=185 guifg=#f1e05a
--     DevIconVLC                                   { fg="#ee7a00", }, -- DevIconVLC     xxx ctermfg=208 guifg=#ee7a00
--     DevIconTxz                                   { fg="#eca517", }, -- DevIconTxz     xxx ctermfg=214 guifg=#eca517
--     DevIconTmux                                  { fg="#14ba19", }, -- DevIconTmux    xxx ctermfg=34 guifg=#14ba19
--     DevIconYaml                                  { fg="#6d8086", }, -- DevIconYaml    xxx ctermfg=66 guifg=#6d8086
--     DevIconCjs                                   { fg="#cbcb41", }, -- DevIconCjs     xxx ctermfg=185 guifg=#cbcb41
--     DevIconLog                                   { fg="#dddddd", }, -- DevIconLog     xxx ctermfg=253 guifg=#dddddd
--     DevIconTypoScriptConfig                      { fg="#ff8700", }, -- DevIconTypoScriptConfig xxx ctermfg=208 guifg=#ff8700
--     DevIconTailwindConfig                        { fg="#20c2e3", }, -- DevIconTailwindConfig xxx ctermfg=45 guifg=#20c2e3
--     DevIconKiCadSymbolTable                      { fg="#ffffff", }, -- DevIconKiCadSymbolTable xxx ctermfg=231 guifg=#ffffff
--     DevIconFdmdownload                           { fg="#44cda8", }, -- DevIconFdmdownload xxx ctermfg=43 guifg=#44cda8
--     DevIconRazorPage                             { fg="#512bd4", }, -- DevIconRazorPage xxx ctermfg=56 guifg=#512bd4
--     DevIconImg                                   { fg="#d0bec8", }, -- DevIconImg     xxx ctermfg=181 guifg=#d0bec8
--     DevIconCs                                    { fg="#596706", }, -- DevIconCs      xxx ctermfg=58 guifg=#596706
--     DevIconPyc                                   { fg="#ffe291", }, -- DevIconPyc     xxx ctermfg=222 guifg=#ffe291
--     DevIconGo                                    { fg="#519aba", }, -- DevIconGo      xxx ctermfg=74 guifg=#519aba
--     DevIconObjectFile                            { fg="#9f0500", }, -- DevIconObjectFile xxx ctermfg=124 guifg=#9f0500
--     DevIconStp                                   { fg="#839463", }, -- DevIconStp     xxx ctermfg=101 guifg=#839463
--     DevIconTgz                                   { fg="#eca517", }, -- DevIconTgz     xxx ctermfg=214 guifg=#eca517
--     DevIconAwk                                   { fg="#4d5a5e", }, -- DevIconAwk     xxx ctermfg=240 guifg=#4d5a5e
--     DevIconLhs                                   { fg="#a074c4", }, -- DevIconLhs     xxx ctermfg=140 guifg=#a074c4
--     DevIconCxxm                                  { fg="#519aba", }, -- DevIconCxxm    xxx ctermfg=74 guifg=#519aba
--     DevIconCppm                                  { fg="#519aba", }, -- DevIconCppm    xxx ctermfg=74 guifg=#519aba
--     DevIconCPlusPlusModule                       { fg="#f34b7d", }, -- DevIconCPlusPlusModule xxx ctermfg=204 guifg=#f34b7d
--     DevIconHpp                                   { fg="#a074c4", }, -- DevIconHpp     xxx ctermfg=140 guifg=#a074c4
--     DevIconHxx                                   { fg="#a074c4", }, -- DevIconHxx     xxx ctermfg=140 guifg=#a074c4
--     DevIconPsd                                   { fg="#519aba", }, -- DevIconPsd     xxx ctermfg=74 guifg=#519aba
--     DevIconCxx                                   { fg="#519aba", }, -- DevIconCxx     xxx ctermfg=74 guifg=#519aba
--     DevIconCPlusPlus                             { fg="#f34b7d", }, -- DevIconCPlusPlus xxx ctermfg=204 guifg=#f34b7d
--     DevIconTypeScriptReactTest                   { fg="#1354bf", }, -- DevIconTypeScriptReactTest xxx ctermfg=26 guifg=#1354bf
--     DevIconSolidity                              { fg="#519aba", }, -- DevIconSolidity xxx ctermfg=74 guifg=#519aba
--     DevIconTestTs                                { fg="#519aba", }, -- DevIconTestTs  xxx ctermfg=74 guifg=#519aba
--     DevIconDsStore                               { fg="#41535b", }, -- DevIconDsStore xxx ctermfg=239 guifg=#41535b
--     DevIconJavaScriptReactTest                   { fg="#20c2e3", }, -- DevIconJavaScriptReactTest xxx ctermfg=45 guifg=#20c2e3
--     DevIconMts                                   { fg="#519aba", }, -- DevIconMts     xxx ctermfg=74 guifg=#519aba
--     DevIconTwig                                  { fg="#8dc149", }, -- DevIconTwig    xxx ctermfg=113 guifg=#8dc149
--     DevIconTestJs                                { fg="#cbcb41", }, -- DevIconTestJs  xxx ctermfg=185 guifg=#cbcb41
--     DevIconSml                                   { fg="#e37933", }, -- DevIconSml     xxx ctermfg=166 guifg=#e37933
--     DevIconBabelrc                               { fg="#cbcb41", }, -- DevIconBabelrc xxx ctermfg=185 guifg=#cbcb41
--     DevIconGradleSettings                        { fg="#005f87", }, -- DevIconGradleSettings xxx ctermfg=24 guifg=#005f87
--     DevIconFennel                                { fg="#fff3d7", }, -- DevIconFennel  xxx ctermfg=230 guifg=#fff3d7
--     DevIconSln                                   { fg="#854cc7", }, -- DevIconSln     xxx ctermfg=98 guifg=#854cc7
--     DevIcon3gp                                   { fg="#fd971f", }, -- DevIcon3gp     xxx ctermfg=208 guifg=#fd971f
--     DevIconSub                                   { fg="#ffb713", }, -- DevIconSub     xxx ctermfg=214 guifg=#ffb713
--     DevIconHuff                                  { fg="#4242c7", }, -- DevIconHuff    xxx ctermfg=56 guifg=#4242c7
--     DevIconTFVars                                { fg="#5f43e9", }, -- DevIconTFVars  xxx ctermfg=93 guifg=#5f43e9
--     DevIconArch                                  { fg="#0f94d2", }, -- DevIconArch    xxx ctermfg=67 guifg=#0f94d2
--     DevIconCobol                                 { fg="#005ca5", }, -- DevIconCobol   xxx ctermfg=25 guifg=#005ca5
--     DevIconLib                                   { fg="#4d2c0b", }, -- DevIconLib     xxx ctermfg=52 guifg=#4d2c0b
--     DevIconCantorrc                              { fg="#1c99f3", }, -- DevIconCantorrc xxx ctermfg=32 guifg=#1c99f3
--     DevIconNswag                                 { fg="#85ea2d", }, -- DevIconNswag   xxx ctermfg=112 guifg=#85ea2d
--     DevIconClojureJS                             { fg="#519aba", }, -- DevIconClojureJS xxx ctermfg=74 guifg=#519aba
--     DevIconClojureC                              { fg="#8dc149", }, -- DevIconClojureC xxx ctermfg=113 guifg=#8dc149
--     DevIconFs                                    { fg="#519aba", }, -- DevIconFs      xxx ctermfg=74 guifg=#519aba
--     DevIconJsonc                                 { fg="#cbcb41", }, -- DevIconJsonc   xxx ctermfg=185 guifg=#cbcb41
--     DevIconLeex                                  { fg="#a074c4", }, -- DevIconLeex    xxx ctermfg=140 guifg=#a074c4
--     DevIconNfo                                   { fg="#ffffcd", }, -- DevIconNfo     xxx ctermfg=230 guifg=#ffffcd
--     DevIconPackageJson                           { fg="#e8274b", }, -- DevIconPackageJson xxx ctermfg=197 guifg=#e8274b
--     DevIconXcLocalization                        { fg="#2596be", }, -- DevIconXcLocalization xxx ctermfg=31 guifg=#2596be
--     DevIconGradleProperties                      { fg="#005f87", }, -- DevIconGradleProperties xxx ctermfg=24 guifg=#005f87
--     DevIconDesktopEntry                          { fg="#563d7c", }, -- DevIconDesktopEntry xxx ctermfg=54 guifg=#563d7c
--     DevIconSrt                                   { fg="#ffb713", }, -- DevIconSrt     xxx ctermfg=214 guifg=#ffb713
--     DevIconSsa                                   { fg="#ffb713", }, -- DevIconSsa     xxx ctermfg=214 guifg=#ffb713
--     DevIconConf                                  { fg="#6d8086", }, -- DevIconConf    xxx ctermfg=66 guifg=#6d8086
--     DevIconMd5                                   { fg="#8c86af", }, -- DevIconMd5     xxx ctermfg=103 guifg=#8c86af
--     DevIconSwift                                 { fg="#e37933", }, -- DevIconSwift   xxx ctermfg=166 guifg=#e37933
--     DevIconMpp                                   { fg="#519aba", }, -- DevIconMpp     xxx ctermfg=74 guifg=#519aba
--     DevIconClojure                               { fg="#8dc149", }, -- DevIconClojure xxx ctermfg=113 guifg=#8dc149
--     DevIconSte                                   { fg="#839463", }, -- DevIconSte     xxx ctermfg=101 guifg=#839463
--     DevIconSvg                                   { fg="#ffb13b", }, -- DevIconSvg     xxx ctermfg=214 guifg=#ffb13b
--     DevIconHurl                                  { fg="#ff0288", }, -- DevIconHurl    xxx ctermfg=198 guifg=#ff0288
--     DevIconTypoScriptSetup                       { fg="#ff8700", }, -- DevIconTypoScriptSetup xxx ctermfg=208 guifg=#ff8700
--     DevIconSvelte                                { fg="#ff3e00", }, -- DevIconSvelte  xxx ctermfg=196 guifg=#ff3e00
--     DevIconSketchUp                              { fg="#839463", }, -- DevIconSketchUp xxx ctermfg=101 guifg=#839463
--     DevIcon7z                                    { fg="#eca517", }, -- DevIcon7z      xxx ctermfg=214 guifg=#eca517
--     DevIconMli                                   { fg="#e37933", }, -- DevIconMli     xxx ctermfg=166 guifg=#e37933
--     DevIconXsession                              { fg="#e54d18", }, -- DevIconXsession xxx ctermfg=196 guifg=#e54d18
--     DevIconTypeScriptReactSpec                   { fg="#1354bf", }, -- DevIconTypeScriptReactSpec xxx ctermfg=26 guifg=#1354bf
--     DevIconSpecTs                                { fg="#519aba", }, -- DevIconSpecTs  xxx ctermfg=74 guifg=#519aba
--     DevIconLua                                   { fg="#51a0cf", }, -- DevIconLua     xxx ctermfg=74 guifg=#51a0cf
--     DevIconJavaScriptReactSpec                   { fg="#20c2e3", }, -- DevIconJavaScriptReactSpec xxx ctermfg=45 guifg=#20c2e3
--     DevIconXauthority                            { fg="#e54d18", }, -- DevIconXauthority xxx ctermfg=196 guifg=#e54d18
--     DevIconSpecJs                                { fg="#cbcb41", }, -- DevIconSpecJs  xxx ctermfg=185 guifg=#cbcb41
--     DevIconBashProfile                           { fg="#89e051", }, -- DevIconBashProfile xxx ctermfg=113 guifg=#89e051
--     DevIconJava                                  { fg="#cc3e44", }, -- DevIconJava    xxx ctermfg=167 guifg=#cc3e44
--     DevIconRmd                                   { fg="#519aba", }, -- DevIconRmd     xxx ctermfg=74 guifg=#519aba
--     DevIconPrettierConfig                        { fg="#4285f4", }, -- DevIconPrettierConfig xxx ctermfg=33 guifg=#4285f4
--     DevIconBackup                                { fg="#6d8086", }, -- DevIconBackup  xxx ctermfg=66 guifg=#6d8086
--     DevIconMailmap                               { fg="#41535b", }, -- DevIconMailmap xxx ctermfg=239 guifg=#41535b
--     DevIconGv                                    { fg="#30638e", }, -- DevIconGv      xxx ctermfg=24 guifg=#30638e
--     DevIconTcl                                   { fg="#1e5cb3", }, -- DevIconTcl     xxx ctermfg=25 guifg=#1e5cb3
--     DevIconEslintrc                              { fg="#4b32c3", }, -- DevIconEslintrc xxx ctermfg=56 guifg=#4b32c3
--     DevIconSolveSpace                            { fg="#839463", }, -- DevIconSolveSpace xxx ctermfg=101 guifg=#839463
--     DevIconJs                                    { fg="#cbcb41", }, -- DevIconJs      xxx ctermfg=185 guifg=#cbcb41
--     DevIconLibrecadFontFile                      { fg="#ececec", }, -- DevIconLibrecadFontFile xxx ctermfg=255 guifg=#ececec
--     DevIconXSettingsdConf                        { fg="#e54d18", }, -- DevIconXSettingsdConf xxx ctermfg=196 guifg=#e54d18
--     DevIconKrita                                 { fg="#f245fb", }, -- DevIconKrita   xxx ctermfg=201 guifg=#f245fb
--     DevIconSolidWorksPrt                         { fg="#839463", }, -- DevIconSolidWorksPrt xxx ctermfg=101 guifg=#839463
--     DevIconStaticLibraryArchive                  { fg="#dcddd6", }, -- DevIconStaticLibraryArchive xxx ctermfg=253 guifg=#dcddd6
--     DevIconSolidWorksAsm                         { fg="#839463", }, -- DevIconSolidWorksAsm xxx ctermfg=101 guifg=#839463
--     DevIconMaven                                 { fg="#7a0d21", }, -- DevIconMaven   xxx ctermfg=52 guifg=#7a0d21
--     DevIconSignature                             { fg="#e37933", }, -- DevIconSignature xxx ctermfg=166 guifg=#e37933
--     DevIconEditorConfig                          { fg="#fff2f2", }, -- DevIconEditorConfig xxx ctermfg=255 guifg=#fff2f2
--     DevIconKiCad                                 { fg="#ffffff", }, -- DevIconKiCad   xxx ctermfg=231 guifg=#ffffff
--     DevIconSha512                                { fg="#8c86af", }, -- DevIconSha512  xxx ctermfg=103 guifg=#8c86af
--     DevIconTxt                                   { fg="#89e051", }, -- DevIconTxt     xxx ctermfg=113 guifg=#89e051
--     DevIconFreeCADConfig                         { fg="#cb0d0d", }, -- DevIconFreeCADConfig xxx ctermfg=160 guifg=#cb0d0d
--     DevIconSha384                                { fg="#8c86af", }, -- DevIconSha384  xxx ctermfg=103 guifg=#8c86af
--     DevIconScalaScript                           { fg="#cc3e44", }, -- DevIconScalaScript xxx ctermfg=167 guifg=#cc3e44
--     DevIconSha224                                { fg="#8c86af", }, -- DevIconSha224  xxx ctermfg=103 guifg=#8c86af
--     DevIconGDScript                              { fg="#6d8086", }, -- DevIconGDScript xxx ctermfg=66 guifg=#6d8086
--     DevIconSha1                                  { fg="#8c86af", }, -- DevIconSha1    xxx ctermfg=103 guifg=#8c86af
--     DevIconGroovy                                { fg="#4a687c", }, -- DevIconGroovy  xxx ctermfg=24 guifg=#4a687c
--     DevIconKdenlive                              { fg="#83b8f2", }, -- DevIconKdenlive xxx ctermfg=110 guifg=#83b8f2
--     DevIconPart                                  { fg="#44cda8", }, -- DevIconPart    xxx ctermfg=43 guifg=#44cda8
--     DevIconJpg                                   { fg="#a074c4", }, -- DevIconJpg     xxx ctermfg=140 guifg=#a074c4
--     DevIconSig                                   { fg="#e37933", }, -- DevIconSig     xxx ctermfg=166 guifg=#e37933
--     DevIconKsh                                   { fg="#4d5a5e", }, -- DevIconKsh     xxx ctermfg=240 guifg=#4d5a5e
--     DevIconIco                                   { fg="#cbcb41", }, -- DevIconIco     xxx ctermfg=185 guifg=#cbcb41
--     DevIconPpt                                   { fg="#cb4a32", }, -- DevIconPpt     xxx ctermfg=160 guifg=#cb4a32
--     DevIconXeroLinux                             { fg="#888fe2", }, -- DevIconXeroLinux xxx ctermfg=104 guifg=#888fe2
--     DevIconVanillaOS                             { fg="#fabd4d", }, -- DevIconVanillaOS xxx ctermfg=214 guifg=#fabd4d
--     DevIconUbuntu                                { fg="#dd4814", }, -- DevIconUbuntu  xxx ctermfg=196 guifg=#dd4814
--     DevIconKdb                                   { fg="#529b34", }, -- DevIconKdb     xxx ctermfg=71 guifg=#529b34
--     DevIconRaspberryPiOS                         { fg="#be1848", }, -- DevIconRaspberryPiOS xxx ctermfg=161 guifg=#be1848
--     DevIconKbx                                   { fg="#737672", }, -- DevIconKbx     xxx ctermfg=243 guifg=#737672
--     DevIconAss                                   { fg="#ffb713", }, -- DevIconAss     xxx ctermfg=214 guifg=#ffb713
--     DevIconObjectiveCPlusPlus                    { fg="#519aba", }, -- DevIconObjectiveCPlusPlus xxx ctermfg=74 guifg=#519aba
--     DevIconCentos                                { fg="#a2518d", }, -- DevIconCentos  xxx ctermfg=132 guifg=#a2518d
--     DevIconObjectiveC                            { fg="#599eff", }, -- DevIconObjectiveC xxx ctermfg=111 guifg=#599eff
--     DevIconJpegXl                                { fg="#a074c4", }, -- DevIconJpegXl  xxx ctermfg=140 guifg=#a074c4
--     DevIconArtix                                 { fg="#41b4d7", }, -- DevIconArtix   xxx ctermfg=38 guifg=#41b4d7
--     DevIconProlog                                { fg="#e4b854", }, -- DevIconProlog  xxx ctermfg=179 guifg=#e4b854
--     DevIconFreeBSD                               { fg="#c90f02", }, -- DevIconFreeBSD xxx ctermfg=160 guifg=#c90f02
--     DevIconParrot                                { fg="#54deff", }, -- DevIconParrot  xxx ctermfg=45 guifg=#54deff
--     DevIconArchcraft                             { fg="#86bba3", }, -- DevIconArchcraft xxx ctermfg=108 guifg=#86bba3
--     DevIconPrisma                                { fg="#5a67d8", }, -- DevIconPrisma  xxx ctermfg=62 guifg=#5a67d8
--     DevIconVoid                                  { fg="#295340", }, -- DevIconVoid    xxx ctermfg=23 guifg=#295340
--     DevIconLXLE                                  { fg="#474747", }, -- DevIconLXLE    xxx ctermfg=238 guifg=#474747
--     DevIconGradleBuildScript                     { fg="#005f87", }, -- DevIconGradleBuildScript xxx ctermfg=24 guifg=#005f87
--     DevIconCrystal                               { fg="#c8c8c8", }, -- DevIconCrystal xxx ctermfg=251 guifg=#c8c8c8
--     DevIconHtm                                   { fg="#e34c26", }, -- DevIconHtm     xxx ctermfg=196 guifg=#e34c26
--     DevIconHh                                    { fg="#a074c4", }, -- DevIconHh      xxx ctermfg=140 guifg=#a074c4
--     DevIconIcal                                  { fg="#2b2e83", }, -- DevIconIcal    xxx ctermfg=18 guifg=#2b2e83
--     DevIconKDEPlasma                             { fg="#1b89f4", }, -- DevIconKDEPlasma xxx ctermfg=33 guifg=#1b89f4
--     DevIconInfo                                  { fg="#ffffcd", }, -- DevIconInfo    xxx ctermfg=230 guifg=#ffffcd
--     DevIconIso                                   { fg="#d0bec8", }, -- DevIconIso     xxx ctermfg=181 guifg=#d0bec8
--     DevIconGitModules                            { fg="#f54d27", }, -- DevIconGitModules xxx ctermfg=196 guifg=#f54d27
--     DevIconRedhat                                { fg="#ee0000", }, -- DevIconRedhat  xxx ctermfg=196 guifg=#ee0000
--     DevIconSh                                    { fg="#4d5a5e", }, -- DevIconSh      xxx ctermfg=240 guifg=#4d5a5e
--     DevIconZsh                                   { fg="#89e051", }, -- DevIconZsh     xxx ctermfg=113 guifg=#89e051
--     DevIconJWM                                   { fg="#0078cd", }, -- DevIconJWM     xxx ctermfg=32 guifg=#0078cd
--     DevIconEdn                                   { fg="#519aba", }, -- DevIconEdn     xxx ctermfg=74 guifg=#519aba
--     DevIconKiCadCache                            { fg="#ffffff", }, -- DevIconKiCadCache xxx ctermfg=231 guifg=#ffffff
--     DevIconMATE                                  { fg="#9bda5c", }, -- DevIconMATE    xxx ctermfg=113 guifg=#9bda5c
--     DevIconIgs                                   { fg="#839463", }, -- DevIconIgs     xxx ctermfg=101 guifg=#839463
--     DevIconcudah                                 { fg="#a074c4", }, -- DevIconcudah   xxx ctermfg=140 guifg=#a074c4
--     DevIconIges                                  { fg="#839463", }, -- DevIconIges    xxx ctermfg=101 guifg=#839463
--     DevIconFluxbox                               { fg="#555555", }, -- DevIconFluxbox xxx ctermfg=240 guifg=#555555
--     DevIconIge                                   { fg="#839463", }, -- DevIconIge     xxx ctermfg=101 guifg=#839463
--     DevIconcuda                                  { fg="#89e051", }, -- DevIconcuda    xxx ctermfg=113 guifg=#89e051
--     DevIconIfc                                   { fg="#839463", }, -- DevIconIfc     xxx ctermfg=101 guifg=#839463
--     DevIconRproj                                 { fg="#358a5b", }, -- DevIconRproj   xxx ctermfg=29 guifg=#358a5b
--     DevIconIfb                                   { fg="#2b2e83", }, -- DevIconIfb     xxx ctermfg=18 guifg=#2b2e83
--     DevIconPp                                    { fg="#ffa61a", }, -- DevIconPp      xxx ctermfg=214 guifg=#ffa61a
--     DevIconBlender                               { fg="#ea7600", }, -- DevIconBlender xxx ctermfg=208 guifg=#ea7600
--     DevIconProcfile                              { fg="#a074c4", }, -- DevIconProcfile xxx ctermfg=140 guifg=#a074c4
--     DevIconIcs                                   { fg="#2b2e83", }, -- DevIconIcs     xxx ctermfg=18 guifg=#2b2e83
--     DevIconDebian                                { fg="#a80030", }, -- DevIconDebian  xxx ctermfg=88 guifg=#a80030
--     DevIconIcalendar                             { fg="#2b2e83", }, -- DevIconIcalendar xxx ctermfg=18 guifg=#2b2e83
--     DevIconBin                                   { fg="#9f0500", }, -- DevIconBin     xxx ctermfg=124 guifg=#9f0500
--     DevIconGif                                   { fg="#a074c4", }, -- DevIconGif     xxx ctermfg=140 guifg=#a074c4
--     DevIconIxx                                   { fg="#519aba", }, -- DevIconIxx     xxx ctermfg=74 guifg=#519aba
--     DevIconWebm                                  { fg="#fd971f", }, -- DevIconWebm    xxx ctermfg=208 guifg=#fd971f
--     DevIconQtile                                 { fg="#ffffff", }, -- DevIconQtile   xxx ctermfg=231 guifg=#ffffff
--     DevIconScala                                 { fg="#cc3e44", }, -- DevIconScala   xxx ctermfg=167 guifg=#cc3e44
--     DevIconKotlin                                { fg="#7f52ff", }, -- DevIconKotlin  xxx ctermfg=99 guifg=#7f52ff
--     DevIconKotlinScript                          { fg="#7f52ff", }, -- DevIconKotlinScript xxx ctermfg=99 guifg=#7f52ff
--     DevIconGruntfile                             { fg="#e37933", }, -- DevIconGruntfile xxx ctermfg=166 guifg=#e37933
--     DevIconMOV                                   { fg="#fd971f", }, -- DevIconMOV     xxx ctermfg=208 guifg=#fd971f
--     DevIconJl                                    { fg="#a270ba", }, -- DevIconJl      xxx ctermfg=133 guifg=#a270ba
--     DevIconVim                                   { fg="#019833", }, -- DevIconVim     xxx ctermfg=28 guifg=#019833
--     DevIconJsx                                   { fg="#20c2e3", }, -- DevIconJsx     xxx ctermfg=45 guifg=#20c2e3
--     DevIconCheckhealth                           { fg="#75b4fb", }, -- DevIconCheckhealth xxx ctermfg=75 guifg=#75b4fb
--     DevIconTorrent                               { fg="#44cda8", }, -- DevIconTorrent xxx ctermfg=43 guifg=#44cda8
--     DevIconPsScriptfile                          { fg="#4273ca", }, -- DevIconPsScriptfile xxx ctermfg=68 guifg=#4273ca
--     DevIconGitIgnore                             { fg="#f54d27", }, -- DevIconGitIgnore xxx ctermfg=196 guifg=#f54d27
--     DevIconBazelWorkspace                        { fg="#89e051", }, -- DevIconBazelWorkspace xxx ctermfg=113 guifg=#89e051
--     DevIconGitAttributes                         { fg="#f54d27", }, -- DevIconGitAttributes xxx ctermfg=196 guifg=#f54d27
--     DevIconPhp                                   { fg="#a074c4", }, -- DevIconPhp     xxx ctermfg=140 guifg=#a074c4
--     DevIconVimrc                                 { fg="#019833", }, -- DevIconVimrc   xxx ctermfg=28 guifg=#019833
--     DevIconGitConfig                             { fg="#f54d27", }, -- DevIconGitConfig xxx ctermfg=196 guifg=#f54d27
--     DevIconD                                     { fg="#427819", }, -- DevIconD       xxx ctermfg=28 guifg=#427819
--     DevIconMobi                                  { fg="#eab16d", }, -- DevIconMobi    xxx ctermfg=215 guifg=#eab16d
--     DevIconTsx                                   { fg="#1354bf", }, -- DevIconTsx     xxx ctermfg=26 guifg=#1354bf
--     DevIconLock                                  { fg="#bbbbbb", }, -- DevIconLock    xxx ctermfg=250 guifg=#bbbbbb
--     DevIconGodotTextScene                        { fg="#6d8086", }, -- DevIconGodotTextScene xxx ctermfg=66 guifg=#6d8086
--     DevIconPm                                    { fg="#519aba", }, -- DevIconPm      xxx ctermfg=74 guifg=#519aba
--     DevIconMotoko                                { fg="#9772fb", }, -- DevIconMotoko  xxx ctermfg=135 guifg=#9772fb
--     DevIconPyo                                   { fg="#ffe291", }, -- DevIconPyo     xxx ctermfg=222 guifg=#ffe291
--     DevIconLinuxKernelObject                     { fg="#dcddd6", }, -- DevIconLinuxKernelObject xxx ctermfg=253 guifg=#dcddd6
--     DevIconFsx                                   { fg="#519aba", }, -- DevIconFsx     xxx ctermfg=74 guifg=#519aba
--     DevIconJpeg                                  { fg="#a074c4", }, -- DevIconJpeg    xxx ctermfg=140 guifg=#a074c4
--     DevIconOpenTypeFont                          { fg="#ececec", }, -- DevIconOpenTypeFont xxx ctermfg=255 guifg=#ececec
--     DevIconKdbx                                  { fg="#529b34", }, -- DevIconKdbx    xxx ctermfg=71 guifg=#529b34
--     DevIconLXDEConfigFile                        { fg="#909090", }, -- DevIconLXDEConfigFile xxx ctermfg=246 guifg=#909090
--     DevIconBazel                                 { fg="#89e051", }, -- DevIconBazel   xxx ctermfg=113 guifg=#89e051
--     DevIconDart                                  { fg="#03589c", }, -- DevIconDart    xxx ctermfg=25 guifg=#03589c
--     DevIconElm                                   { fg="#519aba", }, -- DevIconElm     xxx ctermfg=74 guifg=#519aba
--     DevIconToml                                  { fg="#9c4221", }, -- DevIconToml    xxx ctermfg=124 guifg=#9c4221
--     DevIconMixLock                               { fg="#a074c4", }, -- DevIconMixLock xxx ctermfg=140 guifg=#a074c4
--     DevIconCsh                                   { fg="#4d5a5e", }, -- DevIconCsh     xxx ctermfg=240 guifg=#4d5a5e
--     DevIconMagnet                                { fg="#a51b16", }, -- DevIconMagnet  xxx ctermfg=124 guifg=#a51b16
--     DevIconCpp                                   { fg="#519aba", }, -- DevIconCpp     xxx ctermfg=74 guifg=#519aba
--     DevIconExs                                   { fg="#a074c4", }, -- DevIconExs     xxx ctermfg=140 guifg=#a074c4
--     DevIconFish                                  { fg="#4d5a5e", }, -- DevIconFish    xxx ctermfg=240 guifg=#4d5a5e
--     DevIconCsv                                   { fg="#89e051", }, -- DevIconCsv     xxx ctermfg=113 guifg=#89e051
--     DevIconMpv                                   { fg="#3b1342", }, -- DevIconMpv     xxx ctermfg=53 guifg=#3b1342
--     DevIconJson5                                 { fg="#cbcb41", }, -- DevIconJson5   xxx ctermfg=185 guifg=#cbcb41
--     DevIconNPMrc                                 { fg="#e8274b", }, -- DevIconNPMrc   xxx ctermfg=197 guifg=#e8274b
--     DevIconEex                                   { fg="#a074c4", }, -- DevIconEex     xxx ctermfg=140 guifg=#a074c4
--     DevIconDb                                    { fg="#dad8d8", }, -- DevIconDb      xxx ctermfg=188 guifg=#dad8d8
--     DevIconPls                                   { fg="#ed95ae", }, -- DevIconPls     xxx ctermfg=211 guifg=#ed95ae
--     DevIconElf                                   { fg="#9f0500", }, -- DevIconElf     xxx ctermfg=124 guifg=#9f0500
--     DevIconMaterial                              { fg="#b83998", }, -- DevIconMaterial xxx ctermfg=163 guifg=#b83998
--     DevIconM4A                                   { fg="#66d8ef", }, -- DevIconM4A     xxx ctermfg=45 guifg=#66d8ef
--     DevIconM3u8                                  { fg="#ed95ae", }, -- DevIconM3u8    xxx ctermfg=211 guifg=#ed95ae
--     DevIconEpp                                   { fg="#ffa61a", }, -- DevIconEpp     xxx ctermfg=214 guifg=#ffa61a
--     DevIconKDEneon                               { fg="#20a6a4", }, -- DevIconKDEneon xxx ctermfg=37 guifg=#20a6a4
--     DevIconHrl                                   { fg="#b83998", }, -- DevIconHrl     xxx ctermfg=163 guifg=#b83998
--     DevIconNotebook                              { fg="#51a0cf", }, -- DevIconNotebook xxx ctermfg=74 guifg=#51a0cf
--     DevIconErb                                   { fg="#701516", }, -- DevIconErb     xxx ctermfg=52 guifg=#701516
--     DevIconMjs                                   { fg="#f1e05a", }, -- DevIconMjs     xxx ctermfg=185 guifg=#f1e05a
--     DevIconSharedObject                          { fg="#dcddd6", }, -- DevIconSharedObject xxx ctermfg=253 guifg=#dcddd6
--     DevIconFIGletFontControl                     { fg="#ececec", }, -- DevIconFIGletFontControl xxx ctermfg=255 guifg=#ececec
--     DevIconFIGletFontFormat                      { fg="#ececec", }, -- DevIconFIGletFontFormat xxx ctermfg=255 guifg=#ececec
--     DevIconEjs                                   { fg="#cbcb41", }, -- DevIconEjs     xxx ctermfg=185 guifg=#cbcb41
--     DevIconNPMIgnore                             { fg="#e8274b", }, -- DevIconNPMIgnore xxx ctermfg=197 guifg=#e8274b
--     DevIconNushell                               { fg="#3aa675", }, -- DevIconNushell xxx ctermfg=36 guifg=#3aa675
--     DevIconVsix                                  { fg="#854cc7", }, -- DevIconVsix    xxx ctermfg=98 guifg=#854cc7
--     DevIconPop_OS                                { fg="#48b9c7", }, -- DevIconPop_OS  xxx ctermfg=73 guifg=#48b9c7
--     DevIconNix                                   { fg="#7ebae4", }, -- DevIconNix     xxx ctermfg=110 guifg=#7ebae4
--     DevIconZshenv                                { fg="#89e051", }, -- DevIconZshenv  xxx ctermfg=113 guifg=#89e051
--     DevIconZshprofile                            { fg="#89e051", }, -- DevIconZshprofile xxx ctermfg=113 guifg=#89e051
--     DevIconZshrc                                 { fg="#89e051", }, -- DevIconZshrc   xxx ctermfg=113 guifg=#89e051
--     DevIconawesome                               { fg="#535d6c", }, -- DevIconawesome xxx ctermfg=59 guifg=#535d6c
--     DevIconElementary                            { fg="#5890c2", }, -- DevIconElementary xxx ctermfg=67 guifg=#5890c2
--     DevIconLrc                                   { fg="#ffb713", }, -- DevIconLrc     xxx ctermfg=214 guifg=#ffb713
--     DevIconMd                                    { fg="#dddddd", }, -- DevIconMd      xxx ctermfg=253 guifg=#dddddd
--     DevIconHexadecimal                           { fg="#2e63ff", }, -- DevIconHexadecimal xxx ctermfg=27 guifg=#2e63ff
--     DevIconSass                                  { fg="#f55385", }, -- DevIconSass    xxx ctermfg=204 guifg=#f55385
--     DevIconSlim                                  { fg="#e34c26", }, -- DevIconSlim    xxx ctermfg=196 guifg=#e34c26
--     DevIconSuo                                   { fg="#854cc7", }, -- DevIconSuo     xxx ctermfg=98 guifg=#854cc7
--     DevIconPackedResource                        { fg="#6d8086", }, -- DevIconPackedResource xxx ctermfg=66 guifg=#6d8086
--     BufferCurrent                                { bg="#222222", fg="#cccccc", }, -- BufferCurrent  xxx guifg=#cccccc guibg=#222222
--     BufferDefaultCurrentBtn                      { BufferCurrent }, -- BufferDefaultCurrentBtn xxx links to BufferCurrent
--     BufferDefaultCurrentIcon                     { BufferCurrent }, -- BufferDefaultCurrentIcon xxx links to BufferCurrent
--     BufferDefaultCurrentPin                      { BufferCurrent }, -- BufferDefaultCurrentPin xxx links to BufferCurrent
--     BufferDefaultCurrent                         { fg="#efefef", gui="bold", }, -- BufferDefaultCurrent xxx cterm=bold ctermfg=255 gui=bold guifg=#efefef
--     BufferDefaultCurrentADDED                    { fg="#b3f6c0", gui="bold", }, -- BufferDefaultCurrentADDED xxx cterm=bold ctermfg=10 gui=bold guifg=#b3f6c0
--     BufferCurrentADDED                           { BufferDefaultCurrentADDED }, -- BufferCurrentADDED xxx links to BufferDefaultCurrentADDED
--     BufferDefaultCurrentCHANGED                  { fg="#8cf8f7", gui="bold", }, -- BufferDefaultCurrentCHANGED xxx cterm=bold ctermfg=14 gui=bold guifg=#8cf8f7
--     BufferCurrentCHANGED                         { BufferDefaultCurrentCHANGED }, -- BufferCurrentCHANGED xxx links to BufferDefaultCurrentCHANGED
--     BufferDefaultCurrentDELETED                  { fg="#ffc0b9", gui="bold", }, -- BufferDefaultCurrentDELETED xxx cterm=bold ctermfg=9 gui=bold guifg=#ffc0b9
--     BufferCurrentDELETED                         { BufferDefaultCurrentDELETED }, -- BufferCurrentDELETED xxx links to BufferDefaultCurrentDELETED
--     BufferDefaultCurrentERROR                    { fg="#ffc0b9", gui="bold", }, -- BufferDefaultCurrentERROR xxx cterm=bold ctermfg=9 gui=bold guifg=#ffc0b9
--     BufferCurrentERROR                           { BufferDefaultCurrentERROR }, -- BufferCurrentERROR xxx links to BufferDefaultCurrentERROR
--     BufferDefaultCurrentHINT                     { fg="#a6dbff", gui="bold", }, -- BufferDefaultCurrentHINT xxx cterm=bold ctermfg=12 gui=bold guifg=#a6dbff
--     BufferCurrentHINT                            { BufferDefaultCurrentHINT }, -- BufferCurrentHINT xxx links to BufferDefaultCurrentHINT
--     BufferDefaultCurrentIndex                    { fg="#8cf8f7", gui="bold", }, -- BufferDefaultCurrentIndex xxx cterm=bold ctermfg=14 gui=bold guifg=#8cf8f7
--     BufferCurrentIndex                           { BufferDefaultCurrentIndex }, -- BufferCurrentIndex xxx links to BufferDefaultCurrentIndex
--     BufferDefaultCurrentINFO                     { fg="#8cf8f7", gui="bold", }, -- BufferDefaultCurrentINFO xxx cterm=bold ctermfg=14 gui=bold guifg=#8cf8f7
--     BufferCurrentINFO                            { BufferDefaultCurrentINFO }, -- BufferCurrentINFO xxx links to BufferDefaultCurrentINFO
--     BufferCurrentMod                             { bg="#444444", fg="#00ccff", }, -- BufferCurrentMod xxx guifg=#00ccff guibg=#444444
--     BufferDefaultCurrentModBtn                   { BufferCurrentMod }, -- BufferDefaultCurrentModBtn xxx links to BufferCurrentMod
--     BufferDefaultCurrentMod                      { fg="#fce094", gui="bold", }, -- BufferDefaultCurrentMod xxx cterm=bold ctermfg=11 gui=bold guifg=#fce094
--     BufferDefaultCurrentSign                     { fg="#8cf8f7", gui="bold", }, -- BufferDefaultCurrentSign xxx cterm=bold ctermfg=14 gui=bold guifg=#8cf8f7
--     BufferCurrentSign                            { BufferDefaultCurrentSign }, -- BufferCurrentSign xxx links to BufferDefaultCurrentSign
--     BufferDefaultCurrentTarget                   { fg="red", gui="bold", }, -- BufferDefaultCurrentTarget xxx cterm=bold ctermfg=9 gui=bold guifg=Red
--     BufferCurrentTarget                          { BufferDefaultCurrentTarget }, -- BufferCurrentTarget xxx links to BufferDefaultCurrentTarget
--     BufferDefaultCurrentWARN                     { fg="#fce094", gui="bold", }, -- BufferDefaultCurrentWARN xxx cterm=bold ctermfg=11 gui=bold guifg=#fce094
--     BufferCurrentWARN                            { BufferDefaultCurrentWARN }, -- BufferCurrentWARN xxx links to BufferDefaultCurrentWARN
--     BufferDefaultInactive                        { bg="#2c2e33", fg="#c4c6cd", }, -- BufferDefaultInactive xxx cterm=bold ctermfg=255 guifg=#c4c6cd guibg=#2c2e33
--     BufferInactive                               { BufferDefaultInactive }, -- BufferInactive xxx links to BufferDefaultInactive
--     BufferDefaultInactiveADDED                   { bg="#2c2e33", fg="#b3f6c0", }, -- BufferDefaultInactiveADDED xxx cterm=bold ctermfg=10 guifg=#b3f6c0 guibg=#2c2e33
--     BufferInactiveADDED                          { BufferDefaultInactiveADDED }, -- BufferInactiveADDED xxx links to BufferDefaultInactiveADDED
--     BufferDefaultInactiveCHANGED                 { bg="#2c2e33", fg="#8cf8f7", }, -- BufferDefaultInactiveCHANGED xxx cterm=bold ctermfg=14 guifg=#8cf8f7 guibg=#2c2e33
--     BufferInactiveCHANGED                        { BufferDefaultInactiveCHANGED }, -- BufferInactiveCHANGED xxx links to BufferDefaultInactiveCHANGED
--     BufferDefaultInactiveDELETED                 { bg="#2c2e33", fg="#ffc0b9", }, -- BufferDefaultInactiveDELETED xxx cterm=bold ctermfg=9 guifg=#ffc0b9 guibg=#2c2e33
--     BufferInactiveDELETED                        { BufferDefaultInactiveDELETED }, -- BufferInactiveDELETED xxx links to BufferDefaultInactiveDELETED
--     BufferDefaultInactiveERROR                   { bg="#2c2e33", fg="#ffc0b9", }, -- BufferDefaultInactiveERROR xxx cterm=bold ctermfg=9 guifg=#ffc0b9 guibg=#2c2e33
--     BufferInactiveERROR                          { BufferDefaultInactiveERROR }, -- BufferInactiveERROR xxx links to BufferDefaultInactiveERROR
--     BufferDefaultInactiveHINT                    { bg="#2c2e33", fg="#a6dbff", }, -- BufferDefaultInactiveHINT xxx cterm=bold ctermfg=12 guifg=#a6dbff guibg=#2c2e33
--     BufferInactiveHINT                           { BufferDefaultInactiveHINT }, -- BufferInactiveHINT xxx links to BufferDefaultInactiveHINT
--     BufferDefaultInactiveIndex                   { bg="#2c2e33", fg="#4f5258", }, -- BufferDefaultInactiveIndex xxx cterm=bold ctermfg=240 guifg=#4f5258 guibg=#2c2e33
--     BufferInactiveIndex                          { BufferDefaultInactiveIndex }, -- BufferInactiveIndex xxx links to BufferDefaultInactiveIndex
--     BufferDefaultInactiveINFO                    { bg="#2c2e33", fg="#8cf8f7", }, -- BufferDefaultInactiveINFO xxx cterm=bold ctermfg=14 guifg=#8cf8f7 guibg=#2c2e33
--     BufferInactiveINFO                           { BufferDefaultInactiveINFO }, -- BufferInactiveINFO xxx links to BufferDefaultInactiveINFO
--     BufferDefaultInactiveMod                     { bg="#2c2e33", fg="#fce094", }, -- BufferDefaultInactiveMod xxx cterm=bold ctermfg=11 guifg=#fce094 guibg=#2c2e33
--     BufferInactiveMod                            { BufferDefaultInactiveMod }, -- BufferInactiveMod xxx links to BufferDefaultInactiveMod
--     BufferDefaultInactiveSign                    { bg="#2c2e33", fg="#4f5258", }, -- BufferDefaultInactiveSign xxx cterm=bold ctermfg=240 guifg=#4f5258 guibg=#2c2e33
--     BufferInactiveSign                           { BufferDefaultInactiveSign }, -- BufferInactiveSign xxx links to BufferDefaultInactiveSign
--     BufferDefaultInactiveTarget                  { bg="#2c2e33", fg="red", gui="bold", }, -- BufferDefaultInactiveTarget xxx cterm=bold ctermfg=9 gui=bold guifg=Red guibg=#2c2e33
--     BufferInactiveTarget                         { BufferDefaultInactiveTarget }, -- BufferInactiveTarget xxx links to BufferDefaultInactiveTarget
--     BufferDefaultInactiveWARN                    { bg="#2c2e33", fg="#fce094", }, -- BufferDefaultInactiveWARN xxx cterm=bold ctermfg=11 guifg=#fce094 guibg=#2c2e33
--     BufferInactiveWARN                           { BufferDefaultInactiveWARN }, -- BufferInactiveWARN xxx links to BufferDefaultInactiveWARN
--     BufferDefaultTabpagesSep                     { bg="#2c2e33", fg="#e0e2ea", gui="bold", }, -- BufferDefaultTabpagesSep xxx cterm=bold ctermfg=255 gui=bold guifg=#e0e2ea guibg=#2c2e33
--     BufferScrollArrow                            { BufferDefaultTabpagesSep }, -- BufferScrollArrow xxx links to BufferDefaultTabpagesSep
--     BufferTabpagesSep                            { BufferDefaultTabpagesSep }, -- BufferTabpagesSep xxx links to BufferDefaultTabpagesSep
--     BufferDefaultTabpageFill                     { bg="#2c2e33", fg="#c4c6cd", }, -- BufferDefaultTabpageFill xxx ctermfg=102 guifg=#c4c6cd guibg=#2c2e33
--     BufferTabpageFill                            { BufferDefaultTabpageFill }, -- BufferTabpageFill xxx links to BufferDefaultTabpageFill
--     BufferDefaultTabpages                        { bg="#2c2e33", fg="#e0e2ea", gui="bold", }, -- BufferDefaultTabpages xxx cterm=bold ctermfg=75 gui=bold guifg=#e0e2ea guibg=#2c2e33
--     BufferTabpages                               { BufferDefaultTabpages }, -- BufferTabpages xxx links to BufferDefaultTabpages
--     BufferDefaultVisible                         { bg="#2c2e33", fg="#c4c6cd", }, -- BufferDefaultVisible xxx cterm=bold ctermfg=255 guifg=#c4c6cd guibg=#2c2e33
--     BufferVisible                                { BufferDefaultVisible }, -- BufferVisible  xxx links to BufferDefaultVisible
--     BufferDefaultVisibleADDED                    { bg="#2c2e33", fg="#fce094", }, -- BufferDefaultVisibleADDED xxx cterm=bold ctermfg=11 guifg=#fce094 guibg=#2c2e33
--     BufferVisibleADDED                           { BufferDefaultVisibleADDED }, -- BufferVisibleADDED xxx links to BufferDefaultVisibleADDED
--     BufferDefaultVisibleCHANGED                  { bg="#2c2e33", fg="#fce094", }, -- BufferDefaultVisibleCHANGED xxx cterm=bold ctermfg=11 guifg=#fce094 guibg=#2c2e33
--     BufferVisibleCHANGED                         { BufferDefaultVisibleCHANGED }, -- BufferVisibleCHANGED xxx links to BufferDefaultVisibleCHANGED
--     BufferDefaultVisibleDELETED                  { bg="#2c2e33", fg="#fce094", }, -- BufferDefaultVisibleDELETED xxx cterm=bold ctermfg=11 guifg=#fce094 guibg=#2c2e33
--     BufferVisibleDELETED                         { BufferDefaultVisibleDELETED }, -- BufferVisibleDELETED xxx links to BufferDefaultVisibleDELETED
--     BufferDefaultVisibleERROR                    { bg="#2c2e33", fg="#ffc0b9", }, -- BufferDefaultVisibleERROR xxx cterm=bold ctermfg=9 guifg=#ffc0b9 guibg=#2c2e33
--     BufferVisibleERROR                           { BufferDefaultVisibleERROR }, -- BufferVisibleERROR xxx links to BufferDefaultVisibleERROR
--     BufferDefaultVisibleHINT                     { bg="#2c2e33", fg="#a6dbff", }, -- BufferDefaultVisibleHINT xxx cterm=bold ctermfg=12 guifg=#a6dbff guibg=#2c2e33
--     BufferVisibleHINT                            { BufferDefaultVisibleHINT }, -- BufferVisibleHINT xxx links to BufferDefaultVisibleHINT
--     BufferDefaultVisibleIndex                    { bg="#2c2e33", fg="#c4c6cd", }, -- BufferDefaultVisibleIndex xxx cterm=bold ctermfg=255 guifg=#c4c6cd guibg=#2c2e33
--     BufferVisibleIndex                           { BufferDefaultVisibleIndex }, -- BufferVisibleIndex xxx links to BufferDefaultVisibleIndex
--     BufferDefaultVisibleINFO                     { bg="#2c2e33", fg="#8cf8f7", }, -- BufferDefaultVisibleINFO xxx cterm=bold ctermfg=14 guifg=#8cf8f7 guibg=#2c2e33
--     BufferVisibleINFO                            { BufferDefaultVisibleINFO }, -- BufferVisibleINFO xxx links to BufferDefaultVisibleINFO
--     BufferDefaultVisibleMod                      { bg="#2c2e33", fg="#fce094", }, -- BufferDefaultVisibleMod xxx cterm=bold ctermfg=11 guifg=#fce094 guibg=#2c2e33
--     BufferVisibleMod                             { BufferDefaultVisibleMod }, -- BufferVisibleMod xxx links to BufferDefaultVisibleMod
--     BufferDefaultVisibleSign                     { bg="#2c2e33", fg="#c4c6cd", }, -- BufferDefaultVisibleSign xxx cterm=bold ctermfg=255 guifg=#c4c6cd guibg=#2c2e33
--     BufferVisibleSign                            { BufferDefaultVisibleSign }, -- BufferVisibleSign xxx links to BufferDefaultVisibleSign
--     BufferDefaultVisibleTarget                   { bg="#2c2e33", fg="red", gui="bold", }, -- BufferDefaultVisibleTarget xxx cterm=bold ctermfg=9 gui=bold guifg=Red guibg=#2c2e33
--     BufferVisibleTarget                          { BufferDefaultVisibleTarget }, -- BufferVisibleTarget xxx links to BufferDefaultVisibleTarget
--     BufferDefaultVisibleWARN                     { bg="#2c2e33", fg="#fce094", }, -- BufferDefaultVisibleWARN xxx cterm=bold ctermfg=11 guifg=#fce094 guibg=#2c2e33
--     BufferVisibleWARN                            { BufferDefaultVisibleWARN }, -- BufferVisibleWARN xxx links to BufferDefaultVisibleWARN
--     DevIconLuaCurrent                            { bg="#222222", fg="#51a0cf", }, -- DevIconLuaCurrent xxx ctermfg=74 guifg=#51a0cf guibg=#222222
--     sym"@punctuation.bracket"                    { fg="#8cff48", }, -- @punctuation.bracket xxx guifg=#8cff48
--     sym"@punctuation.delimiter"                  { fg="#3ddbd9", }, -- @punctuation.delimiter xxx guifg=#3ddbd9
--     sym"@keyword.operator"                       { fg="#3ddbd9", }, -- @keyword.operator xxx guifg=#3ddbd9
--     sym"@function.macro"                         { fg="#08bdba", }, -- @function.macro xxx guifg=#08bdba
--     sym"@parameter"                              { fg="#ffb53d", }, -- @parameter     xxx guifg=#ffb53d
--     sym"@namespace"                              { fg="#08bdba", }, -- @namespace     xxx guifg=#08bdba
--     sym"@tag.delimiter"                          { fg="#82cfff", }, -- @tag.delimiter xxx guifg=#82cfff
--     sym"@tag.attribute"                          { fg="#82cfff", }, -- @tag.attribute xxx guifg=#82cfff
--     sym"@keyword.function"                       { fg="#ff7eb6", }, -- @keyword.function xxx guifg=#ff7eb6
--     sym"@string.documentation"                   { fg="#697077", gui="italic", }, -- @string.documentation xxx cterm=italic gui=italic guifg=#697077
--     ZenBg                                        { bg="#131419", fg="#131419", }, -- ZenBg          xxx guifg=#131419 guibg=#131419
--     CodeiumSuggestion                            { bg="#222222", fg="#444444", }, -- CodeiumSuggestion xxx guifg=#444444 guibg=#222222
--     Dash                                         { bg="#222222", gui="bold", }, -- Dash           xxx cterm=bold gui=bold guibg=#222222
--     HawtkeysMatchOk                              { fg="#fce094", }, -- HawtkeysMatchOk xxx ctermfg=11 guifg=#fce094
--     HawtkeysMatchGood                            { fg="#b3f6c0", }, -- HawtkeysMatchGood xxx ctermfg=10 guifg=#b3f6c0
--     HawtkeysMatchGreat                           { fg="#b3f6c0", gui="underline", }, -- HawtkeysMatchGreat xxx cterm=underline ctermfg=10 gui=underline guifg=#b3f6c0
--     HawtkeysMatchBad                             { fg="#ffc0b9", }, -- HawtkeysMatchBad xxx ctermfg=9 guifg=#ffc0b9
--     ModesCopy                                    { bg="#ae81ff", }, -- ModesCopy      xxx guibg=#ae81ff
--     ModesDelete                                  { bg="#ff7575", }, -- ModesDelete    xxx guibg=#ff7575
--     ModesInsert                                  { bg="#222222", }, -- ModesInsert    xxx guibg=#222222
--     ModesVisual                                  { bg="#ffee58", }, -- ModesVisual    xxx guibg=#ffee58
--     ModesCopyCursorLine                          { bg="#3b3154", }, -- ModesCopyCursorLine xxx guibg=#3b3154
--     ModesCopyCursorLineNr                        { bg="#3b3154", }, -- ModesCopyCursorLineNr xxx guibg=#3b3154
--     ModesCopyCursorLineSign                      { bg="#3b3154", }, -- ModesCopyCursorLineSign xxx guibg=#3b3154
--     ModesCopyCursorLineFold                      { bg="#3b3154", }, -- ModesCopyCursorLineFold xxx guibg=#3b3154
--     ModesDeleteCursorLine                        { bg="#4f2e32", }, -- ModesDeleteCursorLine xxx guibg=#4f2e32
--     ModesDeleteCursorLineNr                      { bg="#4f2e32", }, -- ModesDeleteCursorLineNr xxx guibg=#4f2e32
--     ModesDeleteCursorLineSign                    { bg="#4f2e32", }, -- ModesDeleteCursorLineSign xxx guibg=#4f2e32
--     ModesDeleteCursorLineFold                    { bg="#4f2e32", }, -- ModesDeleteCursorLineFold xxx guibg=#4f2e32
--     ModesInsertCursorLine                        { bg="#18191d", }, -- ModesInsertCursorLine xxx guibg=#18191d
--     ModesInsertCursorLineNr                      { bg="#18191d", }, -- ModesInsertCursorLineNr xxx guibg=#18191d
--     ModesInsertCursorLineSign                    { bg="#18191d", }, -- ModesInsertCursorLineSign xxx guibg=#18191d
--     ModesInsertCursorLineFold                    { bg="#18191d", }, -- ModesInsertCursorLineFold xxx guibg=#18191d
--     ModesVisualCursorLine                        { bg="#4f4c2a", }, -- ModesVisualCursorLine xxx guibg=#4f4c2a
--     ModesVisualCursorLineNr                      { bg="#4f4c2a", }, -- ModesVisualCursorLineNr xxx guibg=#4f4c2a
--     ModesVisualCursorLineSign                    { bg="#4f4c2a", }, -- ModesVisualCursorLineSign xxx guibg=#4f4c2a
--     ModesVisualCursorLineFold                    { bg="#4f4c2a", }, -- ModesVisualCursorLineFold xxx guibg=#4f4c2a
--     ModesInsertModeMsg                           { fg="#222222", }, -- ModesInsertModeMsg xxx guifg=#222222
--     ModesVisualModeMsg                           { fg="#ffee58", }, -- ModesVisualModeMsg xxx guifg=#ffee58
--     ModesVisualVisual                            { bg="#4f4c2a", }, -- ModesVisualVisual xxx guibg=#4f4c2a
--     sym"@field"                                  { fg="#d4bbff", }, -- @field         xxx guifg=#d4bbff
--     BufferLineBufferSelected                     { bg="#282828", fg="#9e9e9e", gui="bold", }, -- BufferLineBufferSelected xxx cterm=bold gui=bold guifg=#9e9e9e guibg=#282828
--     termcolorcode_cfg_5_gfg_AA00AA               { fg="#ff79ff", }, -- termcolorcode_cfg_5_gfg_AA00AA xxx guifg=#ff79ff
--     termcolorcode_cfg_39_gfg_00AFFF              { fg="#00afff", }, -- termcolorcode_cfg_39_gfg_00AFFF xxx guifg=#00afff
--     termcolorcode_cfg_37_gfg_00AFAF              { fg="#46d9ff", }, -- termcolorcode_cfg_37_gfg_00AFAF xxx guifg=#46d9ff
--     termcolorcode_cfg_208_gfg_FF8700             { fg="#ff8700", }, -- termcolorcode_cfg_208_gfg_FF8700 xxx guifg=#ff8700
--     termcolorcode_cfg_246_gfg_949494             { fg="#838383", }, -- termcolorcode_cfg_246_gfg_949494 xxx guifg=#838383
--     TerminalCSIColorCode                         { fg="#00ccff", }, -- TerminalCSIColorCode xxx guifg=#00ccff
--     WhichKeyBorder                               { fg="#00ccff", }, -- WhichKeyBorder xxx guifg=#00ccff
--     htmlH2                                       { fg="#eeeeee", }, -- htmlH2         xxx guifg=#eeeeee
--     sym"@text.literal"                           { fg="#ae81ff", }, -- @text.literal  xxx guifg=#ae81ff
--     sym"@text.quote"                             { fg="#666666", gui="italic", }, -- @text.quote    xxx cterm=italic gui=italic guifg=#666666
--     sym"@text.title"                             { fg="#ee5396", }, -- @text.title    xxx guifg=#ee5396
--     sym"@text.title.2"                           { fg="#00ccff", }, -- @text.title.2  xxx guifg=#00ccff
--     sym"@exception"                              { fg="#82cfff", }, -- @exception     xxx guifg=#82cfff
--     sym"@odp.import_module"                      { fg="#5c97ff", }, -- @odp.import_module xxx guifg=#5c97ff
--     sym"@error"                                  { fg="#33b1ff", }, -- @error         xxx guifg=#33b1ff
--     sym"@string.regex"                           { fg="#08bdba", }, -- @string.regex  xxx guifg=#08bdba
--     sym"@text.uri"                               { fg="#bd95ff", gui="underline", }, -- @text.uri      xxx cterm=underline gui=underline guifg=#bd95ff
--     sym"@text.underline"                         { fg="#ee5396", gui="underline", }, -- @text.underline xxx cterm=underline gui=underline guifg=#ee5396
--     sym"@text.strong"                            { fg="#ffffff", gui="bold", }, -- @text.strong   xxx cterm=bold gui=bold guifg=#ffffff
--     sym"@text.strike"                            { bg="#333333", fg="#666666", gui="strikethrough", }, -- @text.strike   xxx cterm=strikethrough gui=strikethrough guifg=#666666 guibg=#333333
--     sym"@text.note"                              { bg="#002933", }, -- @text.note     xxx guibg=#002933
--     sym"@markup.quote"                           { fg="#777777", gui="italic", }, -- @markup.quote  xxx cterm=italic gui=italic guifg=#777777
--     sym"@text.emphasis"                          { fg="#ee5396", gui="bold,italic", }, -- @text.emphasis xxx cterm=bold,italic gui=bold,italic guifg=#ee5396
--     sym"@repeat"                                 { fg="#78a9ff", }, -- @repeat        xxx guifg=#78a9ff
--     sym"@method"                                 { fg="#08bdba", }, -- @method        xxx guifg=#08bdba
--     sym"@include"                                { fg="#26c99e", }, -- @include       xxx guifg=#26c99e
--     jukit_textcell_bg_colors                     { bg="#333333", }, -- jukit_textcell_bg_colors xxx guibg=#333333
--     WhichKeyFloat                                { bg="#222222", }, -- WhichKeyFloat  xxx guibg=#222222
--     sym"@method.call"                            { fg="#36ce5e", }, -- @method.call   xxx guifg=#36ce5e
--     htmlH1                                       { fg="#ffffff", gui="bold", }, -- htmlH1         xxx cterm=bold gui=bold guifg=#ffffff
--     sym"@text.reference"                         { fg="#4dabf7", gui="underline", }, -- @text.reference xxx cterm=underline gui=underline guifg=#4dabf7
--     termcolorcode_cfg_10_gfg_55FF55              { fg="#55ff55", }, -- termcolorcode_cfg_10_gfg_55FF55 xxx guifg=#55ff55
--     NeoTreeGitUntracked                          { fg="#666666", }, -- NeoTreeGitUntracked xxx guifg=#666666
--     htmlH3                                       { fg="#cccccc", }, -- htmlH3         xxx guifg=#cccccc
--     RainbowDelimiter05                           { fg="#ae81ff", }, -- RainbowDelimiter05 xxx guifg=#ae81ff
--     RainbowDelimiter06                           { fg="#00ccff", gui="bold", }, -- RainbowDelimiter06 xxx cterm=bold gui=bold guifg=#00ccff
--     RainbowDelimiter00                           { fg="#ee5396", gui="bold", }, -- RainbowDelimiter00 xxx cterm=bold gui=bold guifg=#ee5396
--     RainbowDelimiter01                           { fg="#fd971f", }, -- RainbowDelimiter01 xxx guifg=#fd971f
--     RainbowDelimiter02                           { fg="#ffff00", gui="bold", }, -- RainbowDelimiter02 xxx cterm=bold gui=bold guifg=#ffff00
--     RainbowDelimiter03                           { fg="#36ce5e", }, -- RainbowDelimiter03 xxx guifg=#36ce5e
--     RainbowDelimiter04                           { fg="#1a8fff", gui="bold", }, -- RainbowDelimiter04 xxx cterm=bold gui=bold guifg=#1a8fff
--     sym"@symbol"                                 { fg="#82cfff", gui="bold", }, -- @symbol        xxx cterm=bold gui=bold guifg=#82cfff
--     WhichKeyGroup                                { fg="#ee5396", }, -- WhichKeyGroup  xxx guifg=#ee5396
--     WhichKeyDesc                                 { fg="#d0d0d0", }, -- WhichKeyDesc   xxx guifg=#d0d0d0
--     NeoTreeModified                              { fg="#ae81ff", }, -- NeoTreeModified xxx guifg=#ae81ff
--     NeoTreeGitUnstaged                           { fg="#939393", }, -- NeoTreeGitUnstaged xxx guifg=#939393
--     termcolorcode_cfg_13_gfg_FF55FF              { fg="#ff55ff", }, -- termcolorcode_cfg_13_gfg_FF55FF xxx guifg=#ff55ff
--     NeoTreeGitConflict                           { fg="#ffff00", gui="bold", }, -- NeoTreeGitConflict xxx cterm=bold gui=bold guifg=#ffff00
--     termcolorcode_cfg_3_gfg_AA5500               { fg="#ffff00", }, -- termcolorcode_cfg_3_gfg_AA5500 xxx guifg=#ffff00
--     termcolorcode_c_bold_cfg_5_g_bold_gfg_AA00AA { fg="#d4bbff", }, -- termcolorcode_c_bold_cfg_5_g_bold_gfg_AA00AA xxx guifg=#d4bbff
--     termcolorcode_cfg_2_gfg_00AA00               { fg="#00aa00", }, -- termcolorcode_cfg_2_gfg_00AA00 xxx guifg=#00aa00
--     Headline3                                    { bg="#6644af", fg="#cccccc", gui="bold", }, -- Headline3      xxx cterm=bold gui=bold guifg=#cccccc guibg=#6644af
--     mkdCode                                      { bg="#222222", fg="#ffa94d", }, -- mkdCode        xxx guifg=#ffa94d guibg=#222222
--     Headline1                                    { bg="#1e2718", }, -- Headline1      xxx guibg=#1e2718
--     Headline2                                    { bg="#002933", }, -- Headline2      xxx guibg=#002933
--     HopNextKey                                   { fg="#ff007c", gui="bold", }, -- HopNextKey     xxx cterm=bold ctermfg=198 gui=bold guifg=#ff007c
--     HopNextKey1                                  { fg="#00dfff", gui="bold", }, -- HopNextKey1    xxx cterm=bold ctermfg=45 gui=bold guifg=#00dfff
--     HopNextKey2                                  { fg="#2b8db3", }, -- HopNextKey2    xxx ctermfg=33 guifg=#2b8db3
--     HopUnmatched                                 { bg="bg", fg="#666666", sp="#666666", }, -- HopUnmatched   xxx ctermfg=242 guifg=#666666 guibg=bg guisp=#666666
--     Stl51a0cf_NONE_bolditalic_                   { fg="#51a0cf", gui="bold,italic", }, -- Stl51a0cf_NONE_bolditalic_ xxx cterm=bold,italic gui=bold,italic guifg=#51a0cf
--     Stl9b9ea4_NONE_bolditalic_                   { fg="#9b9ea4", gui="bold,italic", }, -- Stl9b9ea4_NONE_bolditalic_ xxx cterm=bold,italic gui=bold,italic guifg=#9b9ea4
--     Stlbdbdbd_NONE_bolditalic_                   { fg="#bdbdbd", gui="bold,italic", }, -- Stlbdbdbd_NONE_bolditalic_ xxx cterm=bold,italic gui=bold,italic guifg=#bdbdbd
--     Stl222222_61afef__                           { bg="#61afef", fg="#222222", }, -- Stl222222_61afef__ xxx guifg=#222222 guibg=#61afef
--     Stl61afef_222222__                           { bg="#222222", fg="#61afef", }, -- Stl61afef_222222__ xxx guifg=#61afef guibg=#222222
--     Stl51a0cf_222222__                           { bg="#222222", fg="#51a0cf", }, -- Stl51a0cf_222222__ xxx guifg=#51a0cf guibg=#222222
--     Stld0d0d0_222222__                           { bg="#222222", fg="#d0d0d0", }, -- Stld0d0d0_222222__ xxx guifg=#d0d0d0 guibg=#222222
--     Stl222222_222222__                           { bg="#222222", fg="#222222", }, -- Stl222222_222222__ xxx guifg=#222222 guibg=#222222
--     TodoBgFIX                                    { bg="#ffc0b9", fg="#000000", gui="bold", }, -- TodoBgFIX      xxx gui=bold guifg=#000000 guibg=#ffc0b9
--     TodoFgFIX                                    { fg="#ffc0b9", }, -- TodoFgFIX      xxx guifg=#ffc0b9
--     TodoSignFIX                                  { fg="#ffc0b9", }, -- TodoSignFIX    xxx guifg=#ffc0b9
--     TodoBgTEST                                   { bg="#a6dbff", fg="#000000", gui="bold", }, -- TodoBgTEST     xxx gui=bold guifg=#000000 guibg=#a6dbff
--     TodoFgTEST                                   { fg="#a6dbff", }, -- TodoFgTEST     xxx guifg=#a6dbff
--     TodoSignTEST                                 { fg="#a6dbff", }, -- TodoSignTEST   xxx guifg=#a6dbff
--     TodoBgNOTE                                   { bg="#a6dbff", fg="#000000", gui="bold", }, -- TodoBgNOTE     xxx gui=bold guifg=#000000 guibg=#a6dbff
--     TodoFgNOTE                                   { fg="#a6dbff", }, -- TodoFgNOTE     xxx guifg=#a6dbff
--     TodoSignNOTE                                 { fg="#a6dbff", }, -- TodoSignNOTE   xxx guifg=#a6dbff
--     TodoBgWARN                                   { bg="#ffb53d", fg="#000000", gui="bold", }, -- TodoBgWARN     xxx gui=bold guifg=#000000 guibg=#ffb53d
--     TodoFgWARN                                   { fg="#ffb53d", }, -- TodoFgWARN     xxx guifg=#ffb53d
--     TodoSignWARN                                 { fg="#ffb53d", }, -- TodoSignWARN   xxx guifg=#ffb53d
--     TodoBgHACK                                   { bg="#ffb53d", fg="#000000", gui="bold", }, -- TodoBgHACK     xxx gui=bold guifg=#000000 guibg=#ffb53d
--     TodoFgHACK                                   { fg="#ffb53d", }, -- TodoFgHACK     xxx guifg=#ffb53d
--     TodoSignHACK                                 { fg="#ffb53d", }, -- TodoSignHACK   xxx guifg=#ffb53d
--     TodoBgPERF                                   { bg="#a6dbff", fg="#000000", gui="bold", }, -- TodoBgPERF     xxx gui=bold guifg=#000000 guibg=#a6dbff
--     TodoFgPERF                                   { fg="#a6dbff", }, -- TodoFgPERF     xxx guifg=#a6dbff
--     TodoSignPERF                                 { fg="#a6dbff", }, -- TodoSignPERF   xxx guifg=#a6dbff
--     TodoBgTODO                                   { bg="#8cf8f7", fg="#000000", gui="bold", }, -- TodoBgTODO     xxx gui=bold guifg=#000000 guibg=#8cf8f7
--     TodoFgTODO                                   { fg="#8cf8f7", }, -- TodoFgTODO     xxx guifg=#8cf8f7
--     TodoSignTODO                                 { fg="#8cf8f7", }, -- TodoSignTODO   xxx guifg=#8cf8f7
--     UfoFoldedBg                                  { bg="#262626", }, -- UfoFoldedBg    xxx guibg=#262626
--     UfoPreviewWinBar                             { UfoFoldedBg }, -- UfoPreviewWinBar xxx links to UfoFoldedBg
--     UfoFoldedFg                                  { fg="#bdbdbd", }, -- UfoFoldedFg    xxx guifg=#bdbdbd
--     IblIndent                                    { bg="#1f1f1f", }, -- IblIndent      xxx guibg=#1f1f1f
--     IblWhitespace                                { bg="#1f1f1f", }, -- IblWhitespace  xxx guibg=#1f1f1f
--     IblScope                                     { fg="#383838", }, -- IblScope       xxx guifg=#383838
--     sym"@ibl.indent.char.1"                      { bg="#262626", gui="nocombine", }, -- @ibl.indent.char.1 xxx cterm=nocombine gui=nocombine guibg=#262626
--     sym"@ibl.indent.char.2"                      { bg="#1f1f1f", gui="nocombine", }, -- @ibl.indent.char.2 xxx cterm=nocombine gui=nocombine guibg=#1f1f1f
--     sym"@ibl.whitespace.char.1"                  { bg="#262626", gui="nocombine", }, -- @ibl.whitespace.char.1 xxx cterm=nocombine gui=nocombine guibg=#262626
--     sym"@ibl.whitespace.char.2"                  { bg="#1f1f1f", gui="nocombine", }, -- @ibl.whitespace.char.2 xxx cterm=nocombine gui=nocombine guibg=#1f1f1f
--     sym"@ibl.scope.char.1"                       { fg="#383838", gui="nocombine", }, -- @ibl.scope.char.1 xxx cterm=nocombine gui=nocombine guifg=#383838
--     sym"@ibl.scope.underline.1"                  { sp="#383838", gui="underline", }, -- @ibl.scope.underline.1 xxx cterm=underline gui=underline guisp=#383838
--     Stl222222_ebae34__                           { bg="#ebae34", fg="#222222", }, -- Stl222222_ebae34__ xxx guifg=#222222 guibg=#ebae34
--     Stlebae34_222222__                           { bg="#222222", fg="#ebae34", }, -- Stlebae34_222222__ xxx guifg=#ebae34 guibg=#222222
--     Stleef1f8_NONE_bolditalic_                   { fg="#eef1f8", gui="bold,italic", }, -- Stleef1f8_NONE_bolditalic_ xxx cterm=bold,italic gui=bold,italic guifg=#eef1f8
--     StlNONE_262626__                             { bg="#262626", }, -- StlNONE_262626__ xxx guibg=#262626
--     Stl_262626__                                 { bg="#262626", }, -- Stl_262626__   xxx guibg=#262626
--     Stle0e2ea_222222_bold_                       { bg="#222222", fg="#e0e2ea", gui="bold", }, -- Stle0e2ea_222222_bold_ xxx cterm=bold gui=bold guifg=#e0e2ea guibg=#222222
--     Stlb3f6c0_222222__                           { bg="#222222", fg="#b3f6c0", }, -- Stlb3f6c0_222222__ xxx guifg=#b3f6c0 guibg=#222222
--     Stle0e2ea_222222__                           { bg="#222222", fg="#e0e2ea", }, -- Stle0e2ea_222222__ xxx guifg=#e0e2ea guibg=#222222
--     _ColorColumn                                 { bg="#2f0d13", }, -- _ColorColumn   xxx guibg=#2f0d13
--   }
-- end)
-- return theme
