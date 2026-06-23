# 🎨 Color Specification

<p>A reference for how to use the <strong>Eldritch</strong> palette across implementations</p>

The circles below represent the three palettes: 🦑 **Cthulhu**, 🌀 **Abyss**, 🌅 **Dusk** in that order.

## Backgrounds

<table>
  <tr>
    <th>Function</th>
    <th colspan="2">Colors</th>
  </tr>
  <tr>
    <td>Main background</td>
    <td><code>background</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/background.svg" width="14"/>
      <img src="assets/palette/abyss/circles/background.svg" width="14"/>
      <img src="assets/palette/dusk/circles/background.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Active line, selections</td>
    <td><code>currentline</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/currentline.svg" width="14"/>
      <img src="assets/palette/abyss/circles/currentline.svg" width="14"/>
      <img src="assets/palette/dusk/circles/currentline.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Raised surfaces: cards, sidebars, panels</td>
    <td><code>surface</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/surface.svg" width="14"/>
      <img src="assets/palette/abyss/circles/surface.svg" width="14"/>
      <img src="assets/palette/dusk/circles/surface.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Floating layers: tooltips, popovers, menus</td>
    <td><code>overlay</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/overlay.svg" width="14"/>
      <img src="assets/palette/abyss/circles/overlay.svg" width="14"/>
      <img src="assets/palette/dusk/circles/overlay.svg" width="14"/>
    </td>
  </tr>
</table>

## Typography

> [!NOTE]
> Text placed on a colored accent background should use `background` for contrast.

<table>
  <tr>
    <th>Function</th>
    <th colspan="2">Colors</th>
  </tr>
  <tr>
    <td>Body copy, primary text</td>
    <td><code>foreground</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/foreground.svg" width="14"/>
      <img src="assets/palette/abyss/circles/foreground.svg" width="14"/>
      <img src="assets/palette/dusk/circles/foreground.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Comments, secondary text, subtle labels</td>
    <td><code>comment</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/comment.svg" width="14"/>
      <img src="assets/palette/abyss/circles/comment.svg" width="14"/>
      <img src="assets/palette/dusk/circles/comment.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Links, URLs</td>
    <td><code>cyan</code> · 🌅 <code>comment</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/cyan.svg" width="14"/>
      <img src="assets/palette/abyss/circles/cyan.svg" width="14"/>
      <img src="assets/palette/dusk/circles/comment.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Headings, titles</td>
    <td><code>purple</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/purple.svg" width="14"/>
      <img src="assets/palette/abyss/circles/purple.svg" width="14"/>
      <img src="assets/palette/dusk/circles/purple.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Text on accent / colored backgrounds</td>
    <td><code>background</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/background.svg" width="14"/>
      <img src="assets/palette/abyss/circles/background.svg" width="14"/>
      <img src="assets/palette/dusk/circles/background.svg" width="14"/>
    </td>
  </tr>
</table>

## Syntax

These are the recommended semantic mappings for code highlighting. They apply equally to any syntax engine: tree-sitter, TextMate grammars, Prism, highlight.js, etc.

<table>
  <tr>
    <th>Token type</th>
    <th colspan="2">Colors</th>
  </tr>
  <tr>
    <td>Strings, string templates</td>
    <td><code>yellow</code> · 🌅 <code>orange</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/yellow.svg" width="14"/>
      <img src="assets/palette/abyss/circles/yellow.svg" width="14"/>
      <img src="assets/palette/dusk/circles/orange.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Numbers, booleans</td>
    <td><code>green</code> · 🌅 <code>purple</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/green.svg" width="14"/>
      <img src="assets/palette/abyss/circles/green.svg" width="14"/>
      <img src="assets/palette/dusk/circles/purple.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Characters, special literals</td>
    <td><code>pink</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/pink.svg" width="14"/>
      <img src="assets/palette/abyss/circles/pink.svg" width="14"/>
      <img src="assets/palette/dusk/circles/pink.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Numbers (float), parameters</td>
    <td><code>orange</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/orange.svg" width="14"/>
      <img src="assets/palette/abyss/circles/orange.svg" width="14"/>
      <img src="assets/palette/dusk/circles/orange.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Keywords, operators, statements</td>
    <td><code>green</code> · 🌅 <code>purple</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/green.svg" width="14"/>
      <img src="assets/palette/abyss/circles/green.svg" width="14"/>
      <img src="assets/palette/dusk/circles/purple.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Control flow — conditionals, loops</td>
    <td><code>purple</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/purple.svg" width="14"/>
      <img src="assets/palette/abyss/circles/purple.svg" width="14"/>
      <img src="assets/palette/dusk/circles/purple.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Functions, methods</td>
    <td><code>purple</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/purple.svg" width="14"/>
      <img src="assets/palette/abyss/circles/purple.svg" width="14"/>
      <img src="assets/palette/dusk/circles/purple.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Built-in functions, identifiers</td>
    <td><code>cyan</code> · 🌅 <code>comment</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/cyan.svg" width="14"/>
      <img src="assets/palette/abyss/circles/cyan.svg" width="14"/>
      <img src="assets/palette/dusk/circles/comment.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Variables</td>
    <td><code>red</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/red.svg" width="14"/>
      <img src="assets/palette/abyss/circles/red.svg" width="14"/>
      <img src="assets/palette/dusk/circles/red.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Types, classes, structs</td>
    <td><code>orange</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/orange.svg" width="14"/>
      <img src="assets/palette/abyss/circles/orange.svg" width="14"/>
      <img src="assets/palette/dusk/circles/orange.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Tags (HTML/XML/JSX)</td>
    <td><code>cyan</code> · 🌅 <code>comment</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/cyan.svg" width="14"/>
      <img src="assets/palette/abyss/circles/cyan.svg" width="14"/>
      <img src="assets/palette/dusk/circles/comment.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Tag attributes</td>
    <td><code>pink</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/pink.svg" width="14"/>
      <img src="assets/palette/abyss/circles/pink.svg" width="14"/>
      <img src="assets/palette/dusk/circles/pink.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Comments</td>
    <td><code>comment</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/comment.svg" width="14"/>
      <img src="assets/palette/abyss/circles/comment.svg" width="14"/>
      <img src="assets/palette/dusk/circles/comment.svg" width="14"/>
    </td>
  </tr>
</table>

## Semantic / Status Colors

<table>
  <tr>
    <th>Function</th>
    <th colspan="2">Colors</th>
  </tr>
  <tr>
    <td>Success, additions</td>
    <td><code>green</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/green.svg" width="14"/>
      <img src="assets/palette/abyss/circles/green.svg" width="14"/>
      <img src="assets/palette/dusk/circles/green.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Warnings</td>
    <td><code>yellow</code> · 🌅 <code>orange</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/yellow.svg" width="14"/>
      <img src="assets/palette/abyss/circles/yellow.svg" width="14"/>
      <img src="assets/palette/dusk/circles/orange.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Errors, destructive actions</td>
    <td><code>red</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/red.svg" width="14"/>
      <img src="assets/palette/abyss/circles/red.svg" width="14"/>
      <img src="assets/palette/dusk/circles/red.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Info, hints, diagnostics</td>
    <td><code>cyan</code> · 🌅 <code>purple</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/cyan.svg" width="14"/>
      <img src="assets/palette/abyss/circles/cyan.svg" width="14"/>
      <img src="assets/palette/dusk/circles/purple.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Todo, in-progress markers</td>
    <td><code>green</code> · 🌅 <code>purple</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/green.svg" width="14"/>
      <img src="assets/palette/abyss/circles/green.svg" width="14"/>
      <img src="assets/palette/dusk/circles/purple.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Borders, dividers</td>
    <td><code>currentline</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/currentline.svg" width="14"/>
      <img src="assets/palette/abyss/circles/currentline.svg" width="14"/>
      <img src="assets/palette/dusk/circles/currentline.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Focus / active borders</td>
    <td><code>green</code> · 🌅 <code>purple</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/green.svg" width="14"/>
      <img src="assets/palette/abyss/circles/green.svg" width="14"/>
      <img src="assets/palette/dusk/circles/purple.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Visual selection highlight</td>
    <td><code>currentline</code> <strong>(or at opacity)</strong></td>
    <td>
      <img src="assets/palette/cthulhu/circles/currentline.svg" width="14"/>
      <img src="assets/palette/abyss/circles/currentline.svg" width="14"/>
      <img src="assets/palette/dusk/circles/currentline.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Search match highlight</td>
    <td><code>orange</code> bg, <code>background</code> fg</td>
    <td>
      <img src="assets/palette/cthulhu/circles/orange.svg" width="14"/>
      <img src="assets/palette/abyss/circles/orange.svg" width="14"/>
      <img src="assets/palette/dusk/circles/orange.svg" width="14"/>
    </td>
  </tr>
</table>

### Git & Diff

<table>
  <tr>
    <th>Function</th>
    <th colspan="2">Colors</th>
  </tr>
  <tr>
    <td>Added lines / files</td>
    <td><code>green</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/green.svg" width="14"/>
      <img src="assets/palette/abyss/circles/green.svg" width="14"/>
      <img src="assets/palette/dusk/circles/green.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Modified lines / files</td>
    <td><code>comment</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/comment.svg" width="14"/>
      <img src="assets/palette/abyss/circles/comment.svg" width="14"/>
      <img src="assets/palette/dusk/circles/comment.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Deleted lines / files</td>
    <td><code>red</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/red.svg" width="14"/>
      <img src="assets/palette/abyss/circles/red.svg" width="14"/>
      <img src="assets/palette/dusk/circles/red.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Ignored / untracked</td>
    <td><code>comment</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/comment.svg" width="14"/>
      <img src="assets/palette/abyss/circles/comment.svg" width="14"/>
      <img src="assets/palette/dusk/circles/comment.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Renamed</td>
    <td><code>purple</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/purple.svg" width="14"/>
      <img src="assets/palette/abyss/circles/purple.svg" width="14"/>
      <img src="assets/palette/dusk/circles/purple.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Added line background</td>
    <td><code>green</code> <strong>(15–25% opacity)</strong></td>
    <td>
      <img src="assets/palette/cthulhu/circles/green.svg" width="14"/>
      <img src="assets/palette/abyss/circles/green.svg" width="14"/>
      <img src="assets/palette/dusk/circles/green.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Deleted line background</td>
    <td><code>red</code> <strong>(15–25% opacity)</strong></td>
    <td>
      <img src="assets/palette/cthulhu/circles/red.svg" width="14"/>
      <img src="assets/palette/abyss/circles/red.svg" width="14"/>
      <img src="assets/palette/dusk/circles/red.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Changed line background</td>
    <td><code>yellow</code> <strong>(15–25% opacity)</strong> · 🌅 <code>orange</code> <strong>(15–25% opacity)</strong></td>
    <td>
      <img src="assets/palette/cthulhu/circles/yellow.svg" width="14"/>
      <img src="assets/palette/abyss/circles/yellow.svg" width="14"/>
      <img src="assets/palette/dusk/circles/orange.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>Diff inline text</td>
    <td><code>cyan</code> · 🌅 <code>purple</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/cyan.svg" width="14"/>
      <img src="assets/palette/abyss/circles/cyan.svg" width="14"/>
      <img src="assets/palette/dusk/circles/purple.svg" width="14"/>
    </td>
  </tr>
</table>

## Terminal Colors

When mapping the palette to a 16-color terminal, the following assignments are recommended:

<table>
  <tr>
    <th>Slot</th>
    <th>Function</th>
    <th colspan="2">Colors</th>
  </tr>
  <tr>
    <td>color0 / black</td>
    <td>Terminal black</td>
    <td><code>background</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/background.svg" width="14"/>
      <img src="assets/palette/abyss/circles/background.svg" width="14"/>
      <img src="assets/palette/dusk/circles/background.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>color8 / bright black</td>
    <td>Terminal bright black</td>
    <td><code>currentline</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/currentline.svg" width="14"/>
      <img src="assets/palette/abyss/circles/currentline.svg" width="14"/>
      <img src="assets/palette/dusk/circles/currentline.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>color7 / white</td>
    <td>Terminal white</td>
    <td><code>foreground</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/foreground.svg" width="14"/>
      <img src="assets/palette/abyss/circles/foreground.svg" width="14"/>
      <img src="assets/palette/dusk/circles/foreground.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>color1 / red</td>
    <td>Terminal red</td>
    <td><code>red</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/red.svg" width="14"/>
      <img src="assets/palette/abyss/circles/red.svg" width="14"/>
      <img src="assets/palette/dusk/circles/red.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>color2 / green</td>
    <td>Terminal green</td>
    <td><code>green</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/green.svg" width="14"/>
      <img src="assets/palette/abyss/circles/green.svg" width="14"/>
      <img src="assets/palette/dusk/circles/green.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>color3 / yellow</td>
    <td>Terminal yellow</td>
    <td><code>yellow</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/yellow.svg" width="14"/>
      <img src="assets/palette/abyss/circles/yellow.svg" width="14"/>
      <img src="assets/palette/dusk/circles/yellow.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>color4 / blue</td>
    <td>Terminal blue</td>
    <td><code>comment</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/comment.svg" width="14"/>
      <img src="assets/palette/abyss/circles/comment.svg" width="14"/>
      <img src="assets/palette/dusk/circles/comment.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>color5 / magenta</td>
    <td>Terminal magenta</td>
    <td><code>purple</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/purple.svg" width="14"/>
      <img src="assets/palette/abyss/circles/purple.svg" width="14"/>
      <img src="assets/palette/dusk/circles/purple.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>color6 / cyan</td>
    <td>Terminal cyan</td>
    <td><code>cyan</code></td>
    <td>
      <img src="assets/palette/cthulhu/circles/cyan.svg" width="14"/>
      <img src="assets/palette/abyss/circles/cyan.svg" width="14"/>
      <img src="assets/palette/dusk/circles/cyan.svg" width="14"/>
    </td>
  </tr>
  <tr>
    <td>color9–color15</td>
    <td>Bright variants</td>
    <td>Same hues, lighter value</td>
    <td>-</td>
  </tr>
</table>

## Accents at a Glance

A quick reference for when to reach for each accent color:

<table>
  <tr>
    <th colspan="4" align="center">Accent Colors</th>
  </tr>
  <tr>
    <th>Color</th>
    <th>Cthulhu · Abyss · Dusk</th>
    <th>Primary uses</th>
    <th>Avoid for</th>
  </tr>
  <tr>
    <td><strong>Cyan</strong></td>
    <td>
      <img src="assets/palette/cthulhu/circles/cyan.svg" width="14"/>
      <img src="assets/palette/abyss/circles/cyan.svg" width="14"/>
      <img src="assets/palette/dusk/circles/cyan.svg" width="14"/>
    </td>
    <td>Links, identifiers, built-ins, info · 🌅 decorative use only (borders, icons); prefer <code>comment</code> for text roles</td>
    <td>Errors, destructive actions · 🌅 foreground text on light surfaces</td>
  </tr>
  <tr>
    <td><strong>Green</strong></td>
    <td>
      <img src="assets/palette/cthulhu/circles/green.svg" width="14"/>
      <img src="assets/palette/abyss/circles/green.svg" width="14"/>
      <img src="assets/palette/dusk/circles/green.svg" width="14"/>
    </td>
    <td>Success, additions, keywords, borders · 🌅 decorative use only (diff backgrounds at opacity, icons); prefer <code>orange</code> or <code>purple</code> for text roles</td>
    <td>Errors, warnings · 🌅 foreground text on light surfaces</td>
  </tr>
  <tr>
    <td><strong>Yellow</strong></td>
    <td>
      <img src="assets/palette/cthulhu/circles/yellow.svg" width="14"/>
      <img src="assets/palette/abyss/circles/yellow.svg" width="14"/>
      <img src="assets/palette/dusk/circles/yellow.svg" width="14"/>
    </td>
    <td>Strings, warnings, markup · 🌅 decorative use only (backgrounds, icons); prefer <code>orange</code> for all text roles</td>
    <td>Errors · 🌅 any foreground text on light surfaces</td>
  </tr>
  <tr>
    <td><strong>Orange</strong></td>
    <td>
      <img src="assets/palette/cthulhu/circles/orange.svg" width="14"/>
      <img src="assets/palette/abyss/circles/orange.svg" width="14"/>
      <img src="assets/palette/dusk/circles/orange.svg" width="14"/>
    </td>
    <td>Numbers, types, modules, search highlight</td>
    <td>-</td>
  </tr>
  <tr>
    <td><strong>Red</strong></td>
    <td>
      <img src="assets/palette/cthulhu/circles/red.svg" width="14"/>
      <img src="assets/palette/abyss/circles/red.svg" width="14"/>
      <img src="assets/palette/dusk/circles/red.svg" width="14"/>
    </td>
    <td>Errors, deletions, destructive actions</td>
    <td>Generic text, low-severity notices</td>
  </tr>
  <tr>
    <td><strong>Pink</strong></td>
    <td>
      <img src="assets/palette/cthulhu/circles/pink.svg" width="14"/>
      <img src="assets/palette/abyss/circles/pink.svg" width="14"/>
      <img src="assets/palette/dusk/circles/pink.svg" width="14"/>
    </td>
    <td>Special literals, tag attributes, characters</td>
    <td>-</td>
  </tr>
  <tr>
    <td><strong>Purple</strong></td>
    <td>
      <img src="assets/palette/cthulhu/circles/purple.svg" width="14"/>
      <img src="assets/palette/abyss/circles/purple.svg" width="14"/>
      <img src="assets/palette/dusk/circles/purple.svg" width="14"/>
    </td>
    <td>Control flow, functions, headings, renamed items</td>
    <td>-</td>
  </tr>
</table>
