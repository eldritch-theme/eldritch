### Eldritch Color Specification

#### 1. Prelude
##### 1.1 Color Palette
##### 1.1.1 Standard Colors
- Background:
  - #212337
- Current Line:
  - #292e42
- Foreground:
  - #ebfafa
- Comment:
  - #7081d0
- Cyan:
  - #04d1f9
- Green:
  - #37f499
- Orange:
  - #f7c67f
- Pink:
  - #f265b5
- Purple:
  - #a48cf2
- Red:
  - #f16c75
- Yellow:
  - #f1fc79

##### 1.1.2 Extended Colors
- **Background Variants:**
  - bg_dark: #171928
  - bg_dark1: #0f101a
  - bg_highlight: #292e42
  - terminal_black: #414868

- **Foreground Variants:**
  - fg_dark: #ABB4DA
  - fg_gutter: #3b4261
  - fg_gutter_light: #7081d0

- **Blue/Cyan Variants:**
  - cyan: #04d1f9
  - bright_cyan: #39DDFD
  - dark_cyan: #10A1BD
  - blue: #04d1f9 (alias for cyan)
  - blue0: #3b4261 (darkest blue tone)
  - blue1: #39DDFD (alias for bright_cyan)
  - blue2: #10A1BD (alias for dark_cyan)
  - blue5: #04d1f9 (for operators/delimiters)
  - blue6: #39DDFD (for regex)
  - blue7: #3b4261 (for subtle backgrounds)
  - dark3: #6473B7
  - dark5: #5866A2

- **Green Variants:**
  - green: #37f499
  - bright_green: #00FA82
  - dark_green: #33C57F
  - green1: #00FA82 (alias for bright_green)
  - green2: #33C57F (alias for dark_green)
  - teal: #00FA82 (alias for bright_green)

- **Purple/Magenta Variants:**
  - purple: #a48cf2
  - magenta: #a48cf2
  - bright_purple: #ad8cff
  - magenta2: #bf4f8e
  - magenta3: #722f55
  - visual: #76639e
  - bg_visual: #76639e

- **Red Variants:**
  - red: #f16c75
  - bright_red: #f0313e
  - red1: #f0313e (alias for bright_red)

- **Yellow Variants:**
  - yellow: #f1fc79
  - dark_yellow: #c0c95f

- **Pink:**
  - pink: #f265b5

#### 2. Git Colors
- **Git Status:**
  - add: #37f499 (green)
  - change: #7081d0 (comment blue)
  - delete: #f16c75 (red)

- **GitSigns:**
  - add: #37f499 (green)
  - change: #7081d0 (comment blue)
  - delete: #f16c75 (red)

#### 2.1 UI Color Mappings
- **Diagnostics:**
  - error: Uses red (#f16c75)
  - warning: Uses yellow (#f1fc79)
  - info: Uses cyan (#04d1f9)
  - hint: Uses dark_green (#33C57F)
  - todo: Uses bright_green (#00FA82)

- **Diff:**
  - add: Green-based background
  - change: Blue-based background
  - delete: Red-based background
  - text: Bright cyan-based background

- **Search:**
  - bg_search: Purple-based (#76639e for visual selections)
  - Current search: Orange background (#f7c67f)

- **UI Elements:**
  - border: Defined for window separators
  - bg_popup: Background for popup menus
  - bg_float: Background for floating windows
  - bg_sidebar: Background for sidebars
  - bg_statusline: Background for status line
  - fg_sidebar: Foreground for sidebar text
  - fg_float: Foreground for floating window text

#### 3. Syntax Highlighting

##### 3.1 Core Syntax Elements
- **Comments:**
  - `@comment` → Comment (#7081d0)
  - `@comment.error` → Error diagnostics
  - `@comment.hint` → Hint diagnostics
  - `@comment.info` → Info diagnostics
  - `@comment.note` → Note diagnostics
  - `@comment.todo` → TODO comments
  - `@comment.warning` → Warning diagnostics

- **Constants & Literals:**
  - `@constant` → Constant (links to Constant, uses red #f16c75)
  - `@constant.builtin` → Built-in constants (links to Special)
  - `@constant.macro` → Macro constants (links to Define)
  - `@boolean` → Boolean values (links to Boolean)
  - `@number` → Numbers (links to Number)
  - `@number.float` → Floating point numbers (links to Float)
  - `@character` → Character literals (links to Character, uses orange #f7c67f)
  - `@character.printf` → Printf format characters (links to SpecialChar)
  - `@character.special` → Special characters (links to SpecialChar)

- **Strings:**
  - `@string` → String (yellow #f1fc79)
  - `@string.documentation` → Documentation strings (yellow)
  - `@string.escape` → Escape sequences (magenta #a48cf2)
  - `@string.regexp` → Regular expressions (cyan #04d1f9)

##### 3.2 Functions & Methods
- `@function` → Functions (links to Function, uses pink #f265b5)
- `@function.builtin` → Built-in functions (links to Special)
- `@function.call` → Function calls (links to @function)
- `@function.macro` → Macro functions (links to Macro)
- `@function.method` → Methods (links to Function, uses pink #f265b5)
- `@function.method.call` → Method calls (links to @function.method)

##### 3.3 Variables & Parameters
- `@variable` → Variables (cyan #04d1f9)
- `@variable.builtin` → Built-in variables (red #f16c75)
- `@variable.member` → Object members/fields (purple #a48cf2)
- `@variable.parameter` → Function parameters (purple #a48cf2)
- `@variable.parameter.builtin` → Built-in parameters (blended purple)

##### 3.4 Keywords & Operators
- `@keyword` → General keywords (green #37f499, styleable)
- `@keyword.conditional` → Conditional keywords like if, else (links to Conditional)
- `@keyword.coroutine` → Coroutine/async keywords (links to @keyword)
- `@keyword.debug` → Debug keywords (links to Debug)
- `@keyword.directive` → Preprocessor directives (links to PreProc)
- `@keyword.directive.define` → Define directives (links to Define)
- `@keyword.exception` → Exception keywords like try, catch (links to Exception)
- `@keyword.function` → Function definition keywords like func, def (magenta #a48cf2, styleable)
- `@keyword.import` → Import/include statements (links to Include)
- `@keyword.operator` → Operator keywords (links to @operator)
- `@keyword.repeat` → Loop keywords like for, while (links to Repeat)
- `@keyword.return` → Return keywords (links to @keyword)
- `@keyword.storage` → Storage class keywords like static, const (links to StorageClass)
- `@operator` → Operators like +, -, *, -> (cyan #04d1f9)

##### 3.5 Types & Classes
- `@type` → Type names (links to Type, uses cyan #04d1f9)
- `@type.builtin` → Built-in types (blended cyan #04d1f9 at 80% opacity)
- `@type.definition` → Type definitions (links to Typedef)
- `@type.qualifier` → Type qualifiers like const, volatile (links to @keyword)
- `@constructor` → Constructor calls (magenta #a48cf2)
- `@constructor.tsx` → TSX/React component constructors (cyan #04d1f9)

##### 3.6 Modules & Imports
- `@module` → Module/package names (links to Include, uses orange #f7c67f)
- `@module.builtin` → Built-in modules (red #f16c75)
- `@namespace.builtin` → Built-in namespaces (links to @variable.builtin)

##### 3.7 Properties & Labels
- `@property` → Object properties and struct fields (purple #a48cf2)
- `@label` → Labels for goto statements (cyan #04d1f9)
- `@annotation` → Java-style annotations (links to PreProc)
- `@attribute` → Rust/C++ attributes and decorators (links to PreProc)

##### 3.8 Punctuation
- `@punctuation.bracket` → Brackets and parens (fg_dark #ABB4DA)
- `@punctuation.delimiter` → Delimiters like `.` (cyan #04d1f9)
- `@punctuation.special` → Special punctuation (cyan #04d1f9)
- `@punctuation.special.markdown` → Markdown special punctuation (orange #f7c67f)

##### 3.9 Markup & Documentation
- `@markup` → Markup text
- `@markup.emphasis` → Italic/emphasized text
- `@markup.strong` → Bold text
- `@markup.italic` → Italic text
- `@markup.underline` → Underlined text
- `@markup.strikethrough` → Strikethrough text
- `@markup.heading` → Headings (Title)
- `@markup.heading.1.markdown` through `@markup.heading.6.markdown` → Rainbow heading levels
- `@markup.link` → Links (cyan #04d1f9)
- `@markup.link.label` → Link labels
- `@markup.link.label.symbol` → Link symbols
- `@markup.link.url` → URLs (Underlined)
- `@markup.list` → List markers (cyan #04d1f9)
- `@markup.list.checked` → Checked list items (purple #a48cf2)
- `@markup.list.unchecked` → Unchecked list items (cyan #04d1f9)
- `@markup.list.markdown` → Markdown list markers (orange #f7c67f, bold)
- `@markup.raw` → Raw/code text (String)
- `@markup.raw.markdown_inline` → Inline code (cyan on terminal_black)
- `@markup.math` → Math expressions
- `@markup.environment` → LaTeX environments
- `@markup.environment.name` → Environment names

##### 3.10 Tags (HTML/XML/JSX)
- `@tag` → HTML/XML tag names (links to Label)
- `@tag.attribute` → Tag attributes (links to @property)
- `@tag.delimiter` → Tag angle brackets < > (links to Delimiter)
- `@tag.delimiter.tsx` → TSX tag delimiters (blended cyan at 70% opacity)
- `@tag.tsx` → TSX/JSX tag names (red #f16c75)
- `@tag.javascript` → JavaScript JSX tag names (red #f16c75)

##### 3.11 Diff
- `@diff.plus` → Added lines (DiffAdd)
- `@diff.minus` → Deleted lines (DiffDelete)
- `@diff.delta` → Changed lines (DiffChange)

#### 4. LSP Semantic Tokens

##### 4.1 Basic Types
- `@lsp.type.boolean` → Boolean values
- `@lsp.type.number` → Numbers
- `@lsp.type.string` → Strings
- `@lsp.type.comment` → Comments
- `@lsp.type.keyword` → Keywords
- `@lsp.type.operator` → Operators
- `@lsp.type.const` → Constants

##### 4.2 Functions & Methods
- `@lsp.type.function` → Functions
- `@lsp.type.method` → Methods
- `@lsp.type.macro` → Macros
- `@lsp.type.macro.library.rust` → Rust library macros (orange #f7c67f)
- `@lsp.type.macro.rust` → Rust macros (orange #f7c67f)
- `@lsp.typemod.macro.defaultLibrary.rust` → Rust default library macros (orange)
- `@lsp.typemod.macro.library.rust` → Rust library macros (orange)

##### 4.3 Variables & Parameters
- `@lsp.type.variable` → Variables
- `@lsp.type.parameter` → Parameters
- `@lsp.type.property` → Properties
- `@lsp.type.generic` → Generic types
- `@lsp.typemod.variable.callable` → Callable variables (functions)
- `@lsp.typemod.variable.defaultLibrary` → Built-in variables
- `@lsp.typemod.variable.injected` → Injected variables
- `@lsp.typemod.variable.static` → Static variables (constants)

##### 4.4 Types & Classes
- `@lsp.type.class` → Classes
- `@lsp.type.struct` → Structs
- `@lsp.type.enum` → Enums
- `@lsp.type.interface` → Interfaces (blended cyan)
- `@lsp.type.typeParameter` → Type parameters
- `@lsp.type.typeAlias` → Type aliases
- `@lsp.type.builtinType` → Built-in types
- `@lsp.typemod.type.defaultLibrary` → Built-in library types (blended cyan)
- `@lsp.typemod.typeAlias.defaultLibrary` → Built-in type aliases (blended cyan)

##### 4.5 Modules & Namespaces
- `@lsp.type.namespace` → Namespaces
- `@lsp.type.module` → Modules
- `@lsp.type.namespace.python` → Python namespaces (variables)

##### 4.6 Special Members
- `@lsp.type.enumMember` → Enum members
- `@lsp.type.decorator` → Decorators
- `@lsp.type.deriveHelper` → Derive helpers
- `@lsp.type.selfKeyword` → Self keyword
- `@lsp.type.selfTypeKeyword` → Self type keyword

##### 4.7 String & Escape Sequences
- `@lsp.type.escapeSequence` → Escape sequences
- `@lsp.type.formatSpecifier` → Format specifiers

##### 4.8 Special Features
- `@lsp.type.lifetime` → Rust lifetimes
- `@lsp.type.unresolvedReference` → Unresolved references (error undercurl)

##### 4.9 Type Modifiers
- `@lsp.typemod.class.defaultLibrary` → Built-in classes
- `@lsp.typemod.enum.defaultLibrary` → Built-in enums
- `@lsp.typemod.enumMember.defaultLibrary` → Built-in enum members
- `@lsp.typemod.function.defaultLibrary` → Built-in functions
- `@lsp.typemod.method.defaultLibrary` → Built-in methods
- `@lsp.typemod.struct.defaultLibrary` → Built-in structs
- `@lsp.typemod.keyword.async` → Async keywords
- `@lsp.typemod.keyword.injected` → Injected keywords
- `@lsp.typemod.operator.injected` → Injected operators
- `@lsp.typemod.string.injected` → Injected strings

#### 5. Base Vim Highlight Groups

##### 5.1 Editor UI
- `Normal` → Normal text (fg #ebfafa, bg #212337 or transparent)
- `NormalNC` → Normal text in non-current windows (dimmed if configured)
- `NormalFloat` → Floating window text
- `NormalSB` → Sidebar text
- `Cursor` → Character under cursor (inverted)
- `CursorLine` → Current line highlight (bg_highlight #292e42)
- `CursorColumn` → Current column highlight
- `CursorLineNr` → Current line number (green #37f499, bold)
- `LineNr` → Line numbers (purple #a48cf2)
- `LineNrAbove` → Line numbers above cursor (fg_gutter #3b4261)
- `LineNrBelow` → Line numbers below cursor (fg_gutter #3b4261)
- `SignColumn` → Sign column for marks and diagnostics
- `FoldColumn` → Fold indicator column
- `Folded` → Folded text (blue on fg_gutter)
- `ColorColumn` → Color column marker
- `VertSplit` / `WinSeparator` → Window separators (border color, bold)

##### 5.2 Menus & Popups
- `Pmenu` → Popup menu normal item (bg_popup background)
- `PmenuSel` → Popup menu selected item
- `PmenuMatch` → Matched text in popup menu (blue1 #39DDFD)
- `PmenuMatchSel` → Matched text in selected item
- `PmenuSbar` → Popup menu scrollbar
- `PmenuThumb` → Popup menu scrollbar thumb
- `WildMenu` → Command-line completion menu
- `FloatBorder` → Floating window border (green #37f499)
- `FloatTitle` → Floating window title (cyan #04d1f9)

##### 5.3 Search & Selection
- `Search` → Last search pattern highlight (bg_search, purple-based)
- `IncSearch` → Incremental search (orange #f7c67f on black, inverted)
- `CurSearch` → Current search match (same as IncSearch)
- `Visual` → Visual mode selection (bg_visual #76639e)
- `VisualNOS` → Visual selection when not owning selection

##### 5.4 Messages & Status
- `StatusLine` → Status line of current window
- `StatusLineNC` → Status line of non-current windows
- `ModeMsg` → Mode message (fg_dark, bold)
- `MsgArea` → Message area (fg_dark)
- `MoreMsg` → "more-prompt" (blue)
- `Question` → Hit-enter prompt (blue)
- `ErrorMsg` → Error messages (error color)
- `WarningMsg` → Warning messages (warning color)

##### 5.5 Tabs & Buffers
- `TabLine` → Tab pages line, inactive tabs
- `TabLineFill` → Tab line filler
- `TabLineSel` → Active tab (black on blue)
- `WinBar` → Window bar (same as StatusLine)
- `WinBarNC` → Window bar in inactive windows

##### 5.6 Programming Elements
- `Comment` → Comments (comment #7081d0, styleable)
- `Constant` → Constants (red #f16c75)
- `String` → String literals (yellow #f1fc79)
- `Character` → Character constants (orange #f7c67f)
- `Number` → Numbers (links to @number)
- `Boolean` → Boolean values (links to @boolean)
- `Float` → Floating point numbers (links to @number.float)
- `Identifier` → Variable names (magenta #a48cf2, styleable)
- `Function` → Function names (pink #f265b5, styleable)
- `Statement` → Statements (magenta #a48cf2)
- `Keyword` → Keywords (dark_cyan #10A1BD, styleable)
- `Operator` → Operators (cyan #04d1f9)
- `PreProc` → Preprocessor (dark_cyan #10A1BD)
- `Type` → Type names (cyan #04d1f9)
- `Special` → Special symbols (cyan #04d1f9)
- `Delimiter` → Delimiter characters (links to Special)
- `Debug` → Debug statements (orange #f7c67f)
- `Error` → Erroneous constructs (error color)
- `Todo` → TODO notes (yellow on bg, inverted)
- `Underlined` → Underlined text
- `Bold` → Bold text
- `Italic` → Italic text

##### 5.7 Spelling
- `SpellBad` → Misspelled word (error undercurl)
- `SpellCap` → Word needing capitalization (warning undercurl)
- `SpellLocal` → Word from another region (info undercurl)
- `SpellRare` → Rare word (hint undercurl)

##### 5.8 Diff Mode
- `DiffAdd` → Added lines (green-based background)
- `DiffChange` → Changed lines (blue-based background)
- `DiffDelete` → Deleted lines (red-based background)
- `DiffText` → Changed text within changed line (bright cyan background)

##### 5.9 Miscellaneous
- `Directory` → Directory names (blue)
- `EndOfBuffer` → Filler lines (~) after buffer end
- `NonText` → Meta characters and special chars (dark3 #6473B7)
- `SpecialKey` → Unprintable characters (dark3 #6473B7)
- `Whitespace` → Whitespace characters when visible (fg_gutter #3b4261)
- `Conceal` → Concealed text (dark5 #5866A2)
- `MatchParen` → Matching bracket/paren (orange #f7c67f, bold)
- `Substitute` → :substitute replacement highlighting (red on black)
- `QuickFixLine` → Current quickfix item (bg_visual, bold)
- `Title` → Titles in output (cyan #04d1f9, bold)

#### 6. Usage Notes
- All color aliases (e.g., blue, blue1, green1, teal) are provided for compatibility with different highlight group requirements
- The `none` color value is set to "NONE" for transparent backgrounds
- Visual mode uses the `visual` color (#76639e) for selections
- The color palette is optimized for a dark theme with high contrast and readability
- Colors are defined in hex format for maximum compatibility across terminals and GUI applications
- Style options (bold, italic) can be customized through configuration for keywords, functions, variables, and comments
- LSP semantic tokens provide enhanced syntax highlighting when language servers are available
- Rust macros receive special treatment with orange coloring to distinguish them from regular functions
