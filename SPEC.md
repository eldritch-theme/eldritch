### Eldritch Color Specification

#### 1. Color Palette

##### 1.1 Base Colors (Default Palette)

**Background Colors:**
- `bg`: #212337 - Main background
- `bg_dark`: #171928 - Darker background variant (popups, statusline)
- `bg_highlight`: #292e42 - Highlighted background (current line)
- `terminal_black`: #414868 - Terminal black color

**Foreground Colors:**
- `fg`: #ebfafa - Main foreground text
- `fg_dark`: #ABB4DA - Dimmed foreground
- `fg_gutter`: #3b4261 - Gutter foreground (line numbers)
- `fg_gutter_light`: #7081d0 - Lighter gutter variant

**Primary Colors:**
- `cyan`: #04d1f9 - Primary cyan
- `bright_cyan`: #39DDFD - Bright cyan variant
- `dark_cyan`: #10A1BD - Dark cyan variant
- `green`: #37f499 - Primary green
- `bright_green`: #00FA82 - Bright green variant
- `dark_green`: #33C57F - Dark green variant
- `magenta`: #a48cf2 - Primary magenta/purple
- `purple`: #a48cf2 - Alias for magenta
- `magenta2`: #bf4f8e - Secondary magenta
- `magenta3`: #722f55 - Tertiary magenta
- `pink`: #f265b5 - Pink color
- `orange`: #f7c67f - Orange color
- `yellow`: #f1fc79 - Primary yellow
- `dark_yellow`: #c0c95f - Dark yellow variant
- `red`: #f16c75 - Primary red
- `bright_red`: #f0313e - Bright red variant

**UI Colors:**
- `visual`: #76639e - Visual selection
- `bg_visual`: #76639e - Visual selection background
- `comment`: #7081d0 - Comments and secondary text
- `dark3`: #6473B7 - Dark blue tone 3
- `dark5`: #5866A2 - Dark blue tone 5
- `none`: NONE - Transparent

##### 1.2 Computed Colors

These colors are dynamically generated based on the base palette:

- `black`: Darkened version of `bg` (80% darker, min #000000)
- `border`: Same as `black`
- `border_highlight`: Darkened version of `comment` (80% darker)
- `bg_popup`: Same as `bg_dark`
- `bg_statusline`: Same as `bg_dark`
- `bg_sidebar`: Configurable (transparent/dark/normal)
- `bg_float`: Configurable (transparent/dark/normal)
- `bg_search`: Same as `comment`
- `fg_sidebar`: Same as `fg_dark`
- `fg_float`: Same as `fg`

**Semantic Colors:**
- `error`: Same as `red` (#f16c75)
- `warning`: Same as `yellow` (#f1fc79)
- `info`: Same as `comment` (#7081d0)
- `hint`: Same as `dark_green` (#33C57F)
- `todo`: Same as `green` (#37f499)

##### 1.3 Git Colors

- `git.add`: #37f499 (green)
- `git.change`: #7081d0 (comment)
- `git.delete`: #f16c75 (red)
- `git.ignore`: #6473B7 (dark3)

- `gitSigns.add`: #37f499 (green)
- `gitSigns.change`: #7081d0 (comment)
- `gitSigns.delete`: #f16c75 (red)

##### 1.4 Diff Colors

- `diff.add`: Darkened green (15% darker)
- `diff.delete`: Darkened red (15% darker)
- `diff.change`: Darkened yellow (15% darker)
- `diff.text`: Same as `cyan` (#04d1f9)

- `delta.add`: Darkened green (45% darker)
- `delta.delete`: Darkened red (45% darker)

#### 2. Highlight Group Mappings

##### 2.1 Base Vim Highlights

**Editor UI:**
- `Normal`: fg → Main foreground, bg → Main background
- `NormalFloat`: fg → Main foreground, bg → Main background
- `SignColumn`: bg → Main background
- `Cursor`: Reversed colors
- `CursorLineNr`: fg → Green, bold
- `CursorLine`: bg → Selection color
- `ColorColumn`: bg → Selection color
- `LineNr`: fg → Comment color
- `VertSplit` / `WinSeparator`: fg → Black
- `Folded`: fg → Comment color

**Menus & Popups:**
- `Pmenu`: fg → White, bg → Menu color
- `PmenuSel`: fg → White, bg → Selection color
- `PmenuSbar`: bg → Main background
- `PmenuThumb`: bg → Selection color
- `FloatBorder`: fg → Green

**Comments & Strings:**
- `Comment`: fg → Comment color (italic configurable)
- `String`: fg → Yellow
- `Character`: fg → Pink
- `Number`: fg → Orange
- `Boolean`: fg → Cyan
- `Float`: fg → Orange

**Keywords & Functions:**
- `Keyword`: fg → Cyan
- `Function`: fg → Yellow
- `Operator`: fg → Green
- `Identifier`: fg → Cyan
- `Statement`: fg → Green
- `Conditional`: fg → Purple
- `Repeat`: fg → Purple
- `Exception`: fg → Green

**Types & Preprocessor:**
- `Type`: fg → Orange
- `StorageClass`: fg → Purple
- `Structure`: fg → Yellow
- `PreProc`: fg → Yellow
- `Include`: fg → Green
- `Define`: fg → Green
- `Macro`: fg → Green

**Special Elements:**
- `Special`: fg → Pink, italic
- `SpecialComment`: fg → Comment, italic
- `Title`: fg → Cyan
- `Label`: fg → Cyan
- `Todo`: fg → Green, bold, italic
- `Error`: fg → Bright red
- `Underlined`: fg → Cyan, underlined

**Search & Selection:**
- `Search`: fg → Black, bg → Orange
- `IncSearch`: fg → Orange, bg → Comment
- `Visual`: bg → Visual color
- `VisualNOS`: fg → Visual color

**Status & Messages:**
- `StatusLine`: fg → White, bg → Black
- `StatusLineNC`: fg → Comment
- `ErrorMsg`: fg → Bright red
- `WarningMsg`: fg → Yellow
- `Question`: fg → Green

**Diff:**
- `DiffAdd`: fg → Background, bg → Pink
- `DiffChange`: fg → Orange
- `DiffDelete`: fg → Red
- `DiffText`: fg → Comment

**Misc:**
- `Directory`: fg → Cyan
- `NonText`: fg → Nontext color
- `MatchParen`: fg → Foreground, underlined
- `Conceal`: fg → Comment

##### 2.2 TreeSitter Highlights

**Basic Elements:**
- `@error`: fg → Bright red
- `@punctuation.delimiter`: fg → Foreground
- `@punctuation.bracket`: fg → Foreground
- `@markup.list`: fg → Cyan

**Constants:**
- `@constant`: fg → Bright cyan
- `@constant.builtin`: fg → Bright cyan
- `@constant.macro`: fg → Cyan
- `@markup.link.label.symbol`: fg → Bright cyan

**Strings:**
- `@string`: fg → Yellow
- `@string.regexp`: fg → Yellow
- `@string.escape`: fg → Cyan
- `@string.special.symbol`: fg → Green
- `@character`: fg → Pink
- `@number`: fg → Green
- `@boolean`: fg → Green
- `@number.float`: fg → Pink

**Functions:**
- `@function`: fg → Purple
- `@function.builtin`: fg → Cyan
- `@function.macro`: fg → Purple
- `@function.method`: fg → Purple

**Variables:**
- `@variable`: fg → Red
- `@variable.builtin`: fg → Green
- `@variable.parameter`: fg → Orange
- `@variable.parameter.reference`: fg → Orange
- `@variable.member`: fg → Orange
- `@property`: fg → Bright green

**Keywords:**
- `@keyword`: fg → Green
- `@keyword.function`: fg → Cyan
- `@keyword.function.ruby`: fg → Purple
- `@keyword.operator`: fg → Purple
- `@keyword.conditional`: fg → Purple
- `@keyword.repeat`: fg → Purple
- `@keyword.exception`: fg → Green
- `@keyword.include`: fg → Purple

**Types:**
- `@type`: fg → Bright purple
- `@type.builtin`: fg → Cyan, italic
- `@type.qualifier`: fg → Purple
- `@type.def`: fg → Yellow
- `@constructor`: fg → Cyan

**Other:**
- `@annotation`: fg → Yellow
- `@attribute`: fg → Cyan
- `@module`: fg → Orange
- `@operator`: fg → Purple
- `@label`: fg → Cyan
- `@structure`: fg → Green

**Markup:**
- `@markup`: fg → Orange
- `@markup.strong`: fg → Orange, bold
- `@markup.emphasis`: fg → Yellow, italic
- `@markup.underline`: fg → Orange
- `@markup.heading`: fg → Purple, bold
- `@markup.raw`: fg → Yellow
- `@markup.link.url`: fg → Yellow, italic
- `@markup.link`: fg → Orange, bold

**Tags:**
- `@tag`: fg → Cyan
- `@tag.attribute`: fg → Pink
- `@tag.delimiter`: fg → Cyan

**Semantic:**
- `@class`: fg → Cyan
- `@struct`: fg → Cyan
- `@enum`: fg → Cyan
- `@enumMember`: fg → Green
- `@event`: fg → Cyan
- `@interface`: fg → Cyan
- `@modifier`: fg → Cyan
- `@regexp`: fg → Yellow
- `@typeParameter`: fg → Cyan
- `@decorator`: fg → Cyan

##### 2.3 Plugin-Specific Highlights

**Git Signs:**
- `GitSignsAdd`: fg → Bright cyan
- `GitSignsChange`: fg → Cyan
- `GitSignsDelete`: fg → Bright red
- `GitSignsAddLn`: fg → Black, bg → Bright cyan
- `GitSignsChangeLn`: fg → Black, bg → Cyan
- `GitSignsDeleteLn`: fg → Black, bg → Bright red
- `GitSignsCurrentLineBlame`: fg → White

**Telescope:**
- `TelescopePromptBorder`: fg → Cyan
- `TelescopeResultsBorder`: fg → Green
- `TelescopePreviewBorder`: fg → Green
- `TelescopeSelection`: fg → White, bg → Selection
- `TelescopeMultiSelection`: fg → Green, bg → Selection
- `TelescopeNormal`: fg → Foreground, bg → Background (or transparent)
- `TelescopeMatching`: fg → Pink
- `TelescopePromptPrefix`: fg → Green
- `TelescopeResultsDiffDelete`: fg → Red
- `TelescopeResultsDiffChange`: fg → Cyan
- `TelescopeResultsDiffAdd`: fg → Pink

**Flash:**
- `FlashLabel`: bg → Red, fg → Bright white

**Oil-Git:**
- `OilGitAdded`: fg → Green
- `OilGitModified`: fg → Yellow
- `OilGitRenamed`: fg → Purple
- `OilGitUntracked`: fg → Cyan
- `OilGitIgnored`: fg → Comment

**NvimTree:**
- `NvimTreeNormal`: fg → Foreground, bg → Menu
- `NvimTreeVertSplit`: fg → Background, bg → Background
- `NvimTreeRootFolder`: fg → Foreground, bold
- `NvimTreeGitDirty`: fg → Yellow
- `NvimTreeGitNew`: fg → Bright cyan
- `NvimTreeImageFile`: fg → Purple
- `NvimTreeFolderIcon`: fg → Green
- `NvimTreeIndentMarker`: fg → Nontext
- `NvimTreeEmptyFolderName`: fg → Comment
- `NvimTreeFolderName`: fg → Foreground
- `NvimTreeSpecialFile`: fg → Purple, underlined
- `NvimTreeOpenedFolderName`: fg → Foreground
- `NvimTreeCursorLine`: bg → Selection

**NeoTree:**
- `NeoTreeNormal`: fg → Foreground, bg → Menu
- `NeoTreeNormalNC`: fg → Foreground, bg → Menu
- `NeoTreeDirectoryName`: fg → Foreground
- `NeoTreeGitUnstaged`: fg → Bright magenta
- `NeoTreeGitModified`: fg → Bright magenta
- `NeoTreeGitUntracked`: fg → Bright cyan
- `NeoTreeDirectoryIcon`: fg → Green
- `NeoTreeIndentMarker`: fg → Nontext
- `NeoTreeDotfile`: fg → Comment

**Bufferline:**
- `BufferLineIndicatorSelected`: fg → Green
- `BufferLineFill`: bg → Background
- `BufferLineBufferSelected`: bg → Background
- `BufferLineSeparator`: fg → Black

**LSP Diagnostics:**
- `DiagnosticError`: fg → Red
- `DiagnosticWarn`: fg → Yellow
- `DiagnosticInfo`: fg → Cyan
- `DiagnosticHint`: fg → Cyan
- `DiagnosticSign*`: Same as Diagnostic* variants
- `DiagnosticFloating*`: Same as Diagnostic* variants
- `DiagnosticVirtualText*`: Same as Diagnostic* variants
- `LspReferenceText`: fg → Orange
- `LspReferenceRead`: fg → Orange
- `LspReferenceWrite`: fg → Orange
- `LspCodeLens`: fg → Cyan
- `LspInlayHint`: fg → #969696, bg → #2f3146

**LSP Saga:**
- All borders: fg → Green
- `LspSagaBorderTitle`: fg → Cyan
- `CodeActionNumber`: fg → Cyan

**Completion (Cmp):**
- `CmpItemAbbrDeprecated`: fg → White, bg → Background
- `CmpItemAbbrMatch`: fg → Cyan, bg → Background
- `CmpItemAbbr`: fg → White, bg → Background
- `CmpItemKind`: fg → White, bg → Background
- Various `CmpItemKind*` link to corresponding treesitter groups

**Dashboard:**
- `DashboardShortCut`: fg → Cyan
- `DashboardHeader`: fg → Green
- `DashboardCenter`: fg → Foreground
- `DashboardFooter`: fg → Green, italic
- `DashboardKey`: fg → Orange
- `DashboardDesc`: fg → Cyan
- `DashboardIcon`: fg → Cyan, bold

**Alpha:**
- `AlphaHeader`: fg → Green
- `AlphaButtons`: fg → Cyan
- `AlphaShortcut`: fg → Orange
- `AlphaFooter`: fg → Green, italic

**DAP UI:**
- `DapUIPlayPause`: fg → Bright cyan
- `DapUIRestart`: fg → Pink
- `DapUIStop`: fg → Red
- `DapUIStepOver`: fg → Cyan
- `DapUIStepInto`: fg → Cyan
- `DapUIStepOut`: fg → Cyan
- `DapUIStepBack`: fg → Cyan
- `DapUIType`: fg → Bright blue
- `DapUIScope`: fg → Bright purple
- `DapUIModifiedValue`: fg → Bright purple, bold
- `DapUIDecoration`: fg → Bright purple
- `DapUIThread`: fg → Bright cyan
- `DapUIStoppedThread`: fg → Bright purple
- `DapUISource`: fg → Bright blue
- `DapUILineNumber`: fg → Bright purple
- `DapUIFloatBorder`: fg → Green
- `DapUIWatchesEmpty`: fg → Purple
- `DapUIWatchesValue`: fg → Bright cyan
- `DapUIWatchesError`: fg → Purple
- `DapUIBreakpointsPath`: fg → Bright purple
- `DapUIBreakpointsInfo`: fg → Bright cyan
- `DapUIBreakpointsCurrentLine`: fg → Bright cyan, bold
- `DapUIWinSelect`: fg → Bright purple, bold

**Notify:**
- `NotifyInfoIcon`: fg → Pink
- `NotifyInfoTitle`: fg → Pink
- `NotifyInfoBorder`: fg → Green
- `NotifyErrorIcon`: fg → Red
- `NotifyErrorTitle`: fg → Red
- `NotifyErrorBorder`: fg → #DD6E6B
- `NotifyWarnIcon`: fg → Orange
- `NotifyWarnTitle`: fg → Orange
- `NotifyWarnBorder`: fg → Yellow

**Other:**
- `IndentBlanklineContextChar`: fg → Bright red, nocombine
- `MiniIndentscopeSymbol`: fg → #B5629B
- `MiniIndentscopeSymbolOff`: fg → #B5629B
- Rainbow delimiters: Various foreground colors cycling through palette

#### 3. Missing Color Definitions

The following colors are referenced in `groups.lua` but are **not defined** in `colors.lua` base palettes. These need to be computed or added:

- `bright_blue` - Used in DAP UI
- `bright_magenta` - Used in NeoTree git status
- `bright_purple` - Used in @type and DAP UI
- `bright_white` - Used in FlashLabel
- `menu` - Used in NvimTree, NeoTree, and debug highlights
- `nontext` - Used for NonText, SpecialKey, indent markers
- `selection` - Used for CursorLine, ColorColumn, and various selections
- `white` - Used in StatusLine, Terminal, and menus

#### 4. Implementation Notes

- **Transparency**: Set `bg` to "NONE" for transparent background mode
- **Sidebar Styles**: Can be "transparent", "dark", or "normal"
- **Float Styles**: Can be "transparent", "dark", or "normal"
- **Style Options**: Comments, keywords, functions, and variables support italic/bold configuration
- **Computed Colors**: Many colors are dynamically darkened/lightened using util functions
- **LSP Semantic Tokens**: Most link to corresponding TreeSitter or base highlight groups
- **Plugin Support**: Extensive plugin integrations included

#### 5. Color Usage Summary

**Most Common Foreground Colors:**
1. Green (#37f499) - Keywords, operators, statements, borders
2. Cyan (#04d1f9) - Keywords, identifiers, labels, tags
3. Yellow (#f1fc79) - Strings, functions, preprocessor
4. Purple (#a48cf2) - Conditionals, repeats, functions
5. Pink (#f265b5) - Characters, special elements, attributes
6. Orange (#f7c67f) - Numbers, types, modules
7. Red (#f16c75) - Variables, errors, deletions
8. Comment (#7081d0) - Comments, secondary UI elements

**Typical Background Uses:**
- Main background: #212337
- Highlight/selection: #292e42 or #76639e
- Dark UI: #171928
- Gutter: #3b4261
