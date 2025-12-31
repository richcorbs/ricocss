---
layout: markdown
---

# Rico CSS Documentation

Rico is a minimal, modern CSS framework with oklch colors, low specificity (using `:where()`), and a single-hue theming system.

## Getting Started

Include Rico CSS in your project:

```html
<link rel="stylesheet" href="/assets/css/rico.css">
```

---

## Theming

### Brand Color

Theme the entire framework by setting a single hue value (0-360):

```css
:root {
  --brand-hue: 290;      /* Purple */
  --brand-chroma: 0.15;  /* Color intensity */
}
```

Common hue values:
- Red: 25
- Orange: 45
- Yellow: 85
- Green: 145
- Cyan: 195
- Blue: 220
- Purple: 290
- Pink: 330

### Color Scales

Rico provides 10-shade scales for brand colors and grays:

| Variable | Description |
|----------|-------------|
| `--brand-1` to `--brand-10` | Brand color scale (light to dark) |
| `--gray-1` to `--gray-10` | Neutral gray scale (light to dark) |

### Semantic Colors

| Variable | Usage |
|----------|-------|
| `--surface-base` | Page background |
| `--surface-1` to `--surface-4` | Elevated surfaces |
| `--text-primary` | Main text |
| `--text-secondary` | Secondary text |
| `--text-muted` | Subtle text |
| `--border-color` | Default borders |
| `--border-color-strong` | Emphasized borders |

### UI State Colors

Each has light, base, and dark variants:

```css
--success, --success-light, --success-dark  /* Green */
--info, --info-light, --info-dark           /* Blue */
--warning, --warning-light, --warning-dark  /* Yellow */
--danger, --danger-light, --danger-dark     /* Red */
```

---

## Dark Mode

Rico supports three dark mode strategies:

```html
<!-- Auto (follows system preference) -->
<html>

<!-- Force dark -->
<html data-theme="dark">
<!-- or -->
<html class="theme-dark">

<!-- Force light -->
<html data-theme="light">
```

---

## Typography

### Headings

<div class="mb-4">
  <h1>Heading 1</h1>
  <h2>Heading 2</h2>
  <h3>Heading 3</h3>
  <h4>Heading 4</h4>
  <h5>Heading 5</h5>
  <h6>Heading 6</h6>
</div>

### Text Elements

<div class="mb-4">
  <p>Paragraph text with <strong>bold</strong> and <em>italic</em> styles.</p>
  <p><code>Inline code</code> and <kbd>keyboard input</kbd></p>
  <blockquote>Blockquote with brand-colored left border</blockquote>
</div>

### Code Blocks

<pre><code>function hello() {
  console.log("Hello!");
}</code></pre>

### Font Size Classes

| Class | Size |
|-------|------|
| `.fs-sm` | 0.875rem |
| `.fs-base` | 1rem |
| `.fs-lg` | 1.25rem |
| `.fs-xl` | 1.5rem |
| `.fs-2xl` | 2rem |

### Font Weight Classes

| Class | Weight |
|-------|--------|
| `.fw-thin` | 300 |
| `.fw-normal` | 400 |
| `.fw-bold` | 700 |

### Line Height Classes

| Class | Line Height |
|-------|-------------|
| `.lh-tight` | 1.2 |
| `.lh-normal` | 1.4 |
| `.lh-relaxed` | 1.6 |

### Text Alignment

| Class | Alignment |
|-------|-----------|
| `.text-left` | Start |
| `.text-center` | Center |
| `.text-right` | End |
| `.text-justify` | Justify |

### Text Transform

`.uppercase`, `.lowercase`, `.capitalize`, `.normal-case`

### Text Utilities

| Class | Effect |
|-------|--------|
| `.truncate` | Ellipsis overflow |
| `.text-wrap` | Normal wrapping |
| `.text-nowrap` | No wrapping |
| `.text-balance` | Balanced line lengths |

---

## Layout

### Container

<div class="container border rounded p-4 mb-4">
  Container with max-width and auto margins
</div>

```html
<div class="container">Max-width: 1280px</div>
<div class="container container-sm">Max-width: 640px</div>
<div class="container container-md">Max-width: 768px</div>
<div class="container container-lg">Max-width: 1024px</div>
<div class="container container-xl">Max-width: 1280px</div>
<div class="container container-2xl">Max-width: 1536px</div>
<div class="container container-fluid">Full width</div>
```

### Prose Width

```html
<div class="prose">Max-width: 65ch for readable text</div>
```

---

## Grid

### Auto-fit Grid

The `.grid` class creates equal-width columns automatically:

<div class="grid gap-2 mb-4">
  <div class="bg-surface-2 p-3 rounded">Col 1</div>
  <div class="bg-surface-2 p-3 rounded">Col 2</div>
  <div class="bg-surface-2 p-3 rounded">Col 3</div>
</div>

```html
<div class="grid">
  <div>Col 1</div>
  <div>Col 2</div>
  <div>Col 3</div>
</div>
```

### Fixed Column Grid

Use `.grid-cols-*` classes for explicit column counts:

<div class="grid grid-cols-4 gap-2 mb-4">
  <div class="bg-surface-2 p-3 rounded">1</div>
  <div class="bg-surface-2 p-3 rounded">2</div>
  <div class="bg-surface-2 p-3 rounded">3</div>
  <div class="bg-surface-2 p-3 rounded">4</div>
</div>

```html
<div class="grid grid-cols-4">
  <div>1</div>
  <div>2</div>
  <div>3</div>
  <div>4</div>
</div>
```

Available: `.grid-cols-1` through `.grid-cols-12`

### Column Span

<div class="grid grid-cols-4 gap-2 mb-4">
  <div class="col-span-2 bg-surface-2 p-3 rounded">Spans 2</div>
  <div class="bg-surface-2 p-3 rounded">1</div>
  <div class="bg-surface-2 p-3 rounded">1</div>
</div>

```html
<div class="grid grid-cols-4">
  <div class="col-span-2">Spans 2 columns</div>
  <div>1</div>
  <div>1</div>
</div>
```

Available: `.col-span-1` through `.col-span-12`, `.col-span-full`

### Column Offset

<div class="grid grid-cols-4 gap-2 mb-4">
  <div class="offset-1 col-span-2 bg-surface-2 p-3 rounded">Offset 1, Span 2</div>
</div>

```html
<div class="grid grid-cols-4">
  <div class="offset-1 col-span-2">Starts at column 2, spans 2</div>
</div>
```

Available: `.offset-1` through `.offset-11`

### Row Span

Available: `.row-span-1` through `.row-span-6`, `.row-span-full`

### Grid Rows

Available: `.grid-rows-1` through `.grid-rows-6`

---

## Flexbox

### Display

```html
<div class="flex">Flex container</div>
<div class="inline-flex">Inline flex</div>
```

### Direction

| Class | Direction |
|-------|-----------|
| `.flex-row` | Row (default) |
| `.flex-col` | Column |
| `.flex-row-reverse` | Row reversed |
| `.flex-col-reverse` | Column reversed |

### Wrap

`.flex-wrap`, `.flex-nowrap`, `.flex-wrap-reverse`

### Alignment

<div class="flex gap-2 mb-4 bg-surface-1 p-3 rounded" style="height: 100px;">
  <div class="bg-surface-3 p-2 rounded self-start">Start</div>
  <div class="bg-surface-3 p-2 rounded self-center">Center</div>
  <div class="bg-surface-3 p-2 rounded self-end">End</div>
</div>

| Class | Property |
|-------|----------|
| `.items-start` | `align-items: flex-start` |
| `.items-center` | `align-items: center` |
| `.items-end` | `align-items: flex-end` |
| `.items-stretch` | `align-items: stretch` |
| `.items-baseline` | `align-items: baseline` |

### Justify Content

| Class | Property |
|-------|----------|
| `.justify-start` | `justify-content: flex-start` |
| `.justify-center` | `justify-content: center` |
| `.justify-end` | `justify-content: flex-end` |
| `.justify-between` | `justify-content: space-between` |
| `.justify-around` | `justify-content: space-around` |
| `.justify-evenly` | `justify-content: space-evenly` |

### Self Alignment

`.self-start`, `.self-center`, `.self-end`, `.self-stretch`

### Flex Sizing

| Class | Property |
|-------|----------|
| `.flex-1` | `flex: 1 1 0%` |
| `.flex-auto` | `flex: 1 1 auto` |
| `.flex-initial` | `flex: 0 1 auto` |
| `.flex-none` | `flex: none` |
| `.grow` | `flex-grow: 1` |
| `.grow-0` | `flex-grow: 0` |
| `.shrink` | `flex-shrink: 1` |
| `.shrink-0` | `flex-shrink: 0` |

---

## Gap

Works with both flex and grid:

<div class="flex gap-4 mb-4">
  <div class="bg-surface-2 p-3 rounded">Item</div>
  <div class="bg-surface-2 p-3 rounded">Item</div>
  <div class="bg-surface-2 p-3 rounded">Item</div>
</div>

```html
<div class="flex gap-4">...</div>
```

| Class | Gap |
|-------|-----|
| `.gap-0` | 0 |
| `.gap-1` | 4px |
| `.gap-2` | 8px |
| `.gap-3` | 12px |
| `.gap-4` | 16px |
| `.gap-5` | 20px |
| `.gap-6` | 24px |
| `.gap-8` | 32px |
| `.gap-10` | 40px |
| `.gap-12` | 48px |
| `.gap-16` | 64px |

Column/row specific: `.gap-x-*`, `.gap-y-*`

---

## Spacing

### Margin

All sides: `.m-0` through `.m-16`, `.m-auto`

Horizontal: `.mx-0` through `.mx-16`, `.mx-auto`

Vertical: `.my-0` through `.my-16`, `.my-auto`

Individual sides: `.mt-*`, `.mb-*`, `.ml-*`, `.mr-*`

Negative margins: `.-m-1` through `.-m-4`, `.-mt-*`, `.-mb-*`, `.-ml-*`, `.-mr-*`

### Padding

All sides: `.p-0` through `.p-16`

Horizontal: `.px-0` through `.px-16`

Vertical: `.py-0` through `.py-16`

Individual sides: `.pt-*`, `.pb-*`, `.pl-*`, `.pr-*`

### Spacing Scale

| Number | Value |
|--------|-------|
| 0 | 0 |
| 1 | 4px |
| 2 | 8px |
| 3 | 12px |
| 4 | 16px |
| 5 | 20px |
| 6 | 24px |
| 7 | 28px |
| 8 | 32px |
| 10 | 40px |
| 12 | 48px |
| 16 | 64px |

---

## Buttons

### Default Button

<div class="flex gap-2 flex-wrap mb-4">
  <button>Primary</button>
  <button class="btn-secondary">Secondary</button>
  <button class="btn-outline">Outline</button>
  <button class="btn-ghost">Ghost</button>
</div>

```html
<button>Primary</button>
<button class="btn-secondary">Secondary</button>
<button class="btn-outline">Outline</button>
<button class="btn-ghost">Ghost</button>
```

### Button Sizes

<div class="flex gap-2 items-center mb-4">
  <button class="btn-sm">Small</button>
  <button>Default</button>
  <button class="btn-lg">Large</button>
</div>

```html
<button class="btn-sm">Small</button>
<button>Default</button>
<button class="btn-lg">Large</button>
```

Alternative size classes: `.is-small`, `.is-large`

### Button States

<div class="flex gap-2 mb-4">
  <button disabled>Disabled</button>
</div>

```html
<button disabled>Disabled</button>
```

### Link as Button

```html
<a href="#" class="btn">Link Button</a>
```

---

## Forms

### Text Inputs

<div class="mb-4" style="max-width: 400px;">
  <label for="demo-name">Name</label>
  <input type="text" id="demo-name" placeholder="Enter your name">

  <label for="demo-email">Email</label>
  <input type="email" id="demo-email" placeholder="you@example.com">

  <label for="demo-message">Message</label>
  <textarea id="demo-message" rows="3" placeholder="Your message"></textarea>
</div>

```html
<label for="name">Name</label>
<input type="text" id="name" placeholder="Enter your name">

<label for="message">Message</label>
<textarea id="message" rows="3"></textarea>
```

### Select

<div class="mb-4" style="max-width: 400px;">
  <label for="demo-country">Country</label>
  <select id="demo-country">
    <option>United States</option>
    <option>Canada</option>
    <option>United Kingdom</option>
  </select>
</div>

```html
<label for="country">Country</label>
<select id="country">
  <option>United States</option>
  <option>Canada</option>
</select>
```

### Checkboxes & Radios

<div class="mb-4">
  <label>
    <input type="checkbox"> Accept terms
  </label>
  <label>
    <input type="checkbox" checked> Already checked
  </label>
</div>

<div class="mb-4">
  <label>
    <input type="radio" name="demo-plan"> Basic
  </label>
  <label>
    <input type="radio" name="demo-plan" checked> Pro
  </label>
</div>

```html
<label>
  <input type="checkbox"> Accept terms
</label>

<label>
  <input type="radio" name="plan"> Basic
</label>
<label>
  <input type="radio" name="plan"> Pro
</label>
```

### Other Input Types

```html
<input type="color">
<input type="range">
```

### Disabled State

```html
<input type="text" disabled>
<select disabled>...</select>
<textarea disabled></textarea>
```

---

## Cards

Use `<article>` for card components:

<article class="mb-4">
  <header>
    <h3 class="mb-0">Card Title</h3>
  </header>
  <p class="mb-0">Card content goes here. The article element provides background, padding, border-radius, and shadow.</p>
  <footer>
    <button class="btn-sm">Action</button>
  </footer>
</article>

```html
<article>
  <header>Card Header</header>
  <p>Card content goes here.</p>
  <footer>Card Footer</footer>
</article>
```

Header and footer are optional.

---

## Surfaces

### Auto-stacking Surfaces

The `.surface` class creates layered backgrounds. Nested surfaces automatically increase in elevation:

<div class="surface p-4 rounded mb-4">
  Level 1 surface
  <div class="surface p-4 mt-3 rounded">
    Level 2 surface (darker/lighter)
    <div class="surface p-4 mt-3 rounded">
      Level 3 surface
    </div>
  </div>
</div>

```html
<div class="surface">
  Level 1
  <div class="surface">
    Level 2 (auto-elevated)
    <div class="surface">
      Level 3 (auto-elevated)
    </div>
  </div>
</div>
```

### Explicit Surface Levels

```html
<div class="surface-1">Surface level 1</div>
<div class="surface-2">Surface level 2</div>
<div class="surface-3">Surface level 3</div>
<div class="surface-4">Surface level 4</div>
```

---

## Tables

<table class="mb-4">
  <thead>
    <tr>
      <th>Name</th>
      <th>Email</th>
      <th>Role</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>John Doe</td>
      <td>john@example.com</td>
      <td>Admin</td>
    </tr>
    <tr>
      <td>Jane Smith</td>
      <td>jane@example.com</td>
      <td>User</td>
    </tr>
  </tbody>
</table>

```html
<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Email</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>John</td>
      <td>john@example.com</td>
    </tr>
  </tbody>
</table>
```

Tables include hover states on rows automatically.

---

## Navigation

<nav class="mb-4 bg-surface-1 p-3 rounded">
  <ul>
    <li><a href="#">Home</a></li>
    <li><a href="#">About</a></li>
    <li><a href="#">Contact</a></li>
  </ul>
  <ul>
    <li><button class="btn-sm">Sign In</button></li>
  </ul>
</nav>

```html
<nav>
  <ul>
    <li><a href="#">Home</a></li>
    <li><a href="#">About</a></li>
  </ul>
  <ul>
    <li><button>Sign In</button></li>
  </ul>
</nav>
```

### Fixed Navbar

The first `<nav>` that is a direct child of `<body>` automatically becomes fixed at the top:

```html
<body>
  <nav>
    <!-- This nav is automatically fixed -->
  </nav>
  <main>...</main>
</body>
```

---

## Dialog / Modal

```html
<dialog open>
  <article>
    <header>
      <h3>Modal Title</h3>
    </header>
    <div>
      <p>Modal content goes here.</p>
    </div>
    <footer>
      <button onclick="this.closest('dialog').close()">Close</button>
    </footer>
  </article>
</dialog>
```

Features:
- Centered with backdrop blur
- Scrollable content area
- Sticky header and footer
- Body scroll prevention when open

---

## Color Utilities

### Text Colors

| Class | Color |
|-------|-------|
| `.text-primary` | Primary text |
| `.text-secondary` | Secondary text |
| `.text-muted` | Muted text |
| `.text-brand` | Brand color |
| `.text-success` | Success green |
| `.text-info` | Info blue |
| `.text-warning` | Warning yellow |
| `.text-danger` | Danger red |

### Background Colors

| Class | Color |
|-------|-------|
| `.bg-surface` | Base surface |
| `.bg-surface-1` | Surface level 1 |
| `.bg-surface-2` | Surface level 2 |
| `.bg-surface-3` | Surface level 3 |
| `.bg-surface-4` | Surface level 4 |
| `.bg-brand` | Brand color |
| `.bg-brand-light` | Light brand |
| `.bg-success` | Success background |
| `.bg-info` | Info background |
| `.bg-warning` | Warning background |
| `.bg-danger` | Danger background |

---

## Border Utilities

### Border

| Class | Effect |
|-------|--------|
| `.border` | All sides |
| `.border-0` | No border |
| `.border-t` | Top only |
| `.border-b` | Bottom only |
| `.border-l` | Left only |
| `.border-r` | Right only |
| `.border-strong` | Stronger border color |
| `.border-brand` | Brand border color |

### Border Radius

<div class="flex gap-3 mb-4">
  <div class="bg-surface-2 p-3 rounded-none">none</div>
  <div class="bg-surface-2 p-3 rounded-sm">sm</div>
  <div class="bg-surface-2 p-3 rounded">md</div>
  <div class="bg-surface-2 p-3 rounded-lg">lg</div>
  <div class="bg-surface-2 p-4 rounded-full">full</div>
</div>

| Class | Radius |
|-------|--------|
| `.rounded-none` | 0 |
| `.rounded-sm` | 4px |
| `.rounded` | 8px |
| `.rounded-lg` | 12px |
| `.rounded-full` | 9999px |

---

## Shadow Utilities

<div class="flex gap-4 mb-4">
  <div class="bg-surface p-4 shadow-none">none</div>
  <div class="bg-surface p-4 shadow-sm">sm</div>
  <div class="bg-surface p-4 shadow">default</div>
  <div class="bg-surface p-4 shadow-md">md</div>
  <div class="bg-surface p-4 shadow-lg">lg</div>
</div>

| Class | Shadow |
|-------|--------|
| `.shadow-none` | None |
| `.shadow-sm` | Small |
| `.shadow` | Default |
| `.shadow-md` | Medium |
| `.shadow-lg` | Large |

---

## Position Utilities

| Class | Position |
|-------|----------|
| `.static` | static |
| `.relative` | relative |
| `.absolute` | absolute |
| `.fixed` | fixed |
| `.sticky` | sticky |

### Position Values

`.top-0`, `.right-0`, `.bottom-0`, `.left-0`, `.inset-0`

---

## Display Utilities

| Class | Display |
|-------|---------|
| `.block` | block |
| `.inline-block` | inline-block |
| `.inline` | inline |
| `.hidden` | none |
| `.flex` | flex |
| `.inline-flex` | inline-flex |
| `.grid` | grid |
| `.inline-grid` | inline-grid |

---

## Size Utilities

### Width

| Class | Width |
|-------|-------|
| `.w-full` | 100% |
| `.w-auto` | auto |
| `.w-screen` | 100vw |
| `.w-min` | min-content |
| `.w-max` | max-content |
| `.w-fit` | fit-content |

### Height

| Class | Height |
|-------|--------|
| `.h-full` | 100% |
| `.h-auto` | auto |
| `.h-screen` | 100vh |
| `.h-min` | min-content |
| `.h-max` | max-content |
| `.h-fit` | fit-content |

### Min/Max

| Class | Effect |
|-------|--------|
| `.min-h-0` | min-height: 0 |
| `.min-h-full` | min-height: 100% |
| `.min-h-screen` | min-height: 100vh |
| `.max-w-none` | max-width: none |
| `.max-w-prose` | max-width: 65ch |
| `.max-w-full` | max-width: 100% |

---

## Overflow Utilities

| Class | Overflow |
|-------|----------|
| `.overflow-auto` | auto |
| `.overflow-hidden` | hidden |
| `.overflow-visible` | visible |
| `.overflow-scroll` | scroll |
| `.overflow-x-auto` | x: auto |
| `.overflow-y-auto` | y: auto |
| `.overflow-x-hidden` | x: hidden |
| `.overflow-y-hidden` | y: hidden |

---

## Z-Index Utilities

| Class | Z-Index |
|-------|---------|
| `.z-0` | 0 |
| `.z-10` | 10 |
| `.z-20` | 20 |
| `.z-30` | 30 |
| `.z-40` | 40 |
| `.z-50` | 50 |

---

## Visibility Utilities

| Class | Effect |
|-------|--------|
| `.visible` | visibility: visible |
| `.invisible` | visibility: hidden |
| `.opacity-0` | opacity: 0 |
| `.opacity-25` | opacity: 0.25 |
| `.opacity-50` | opacity: 0.5 |
| `.opacity-75` | opacity: 0.75 |
| `.opacity-100` | opacity: 1 |

---

## Cursor Utilities

| Class | Cursor |
|-------|--------|
| `.cursor-pointer` | pointer |
| `.cursor-default` | default |
| `.cursor-not-allowed` | not-allowed |
| `.cursor-grab` | grab |
| `.cursor-grabbing` | grabbing |

---

## Transition Utilities

```html
<button class="transition">Smooth transitions</button>
<button class="transition duration-fast">Fast (0.1s)</button>
<button class="transition duration-normal">Normal (0.15s)</button>
<button class="transition duration-slow">Slow (0.3s)</button>
<button class="transition-none">No transition</button>
```

---

## Accessibility

### Reduced Motion

Rico automatically respects `prefers-reduced-motion`:

```css
@media (prefers-reduced-motion: reduce) {
  * {
    animation-duration: 0.01ms !important;
    transition-duration: 0.01ms !important;
  }
}
```

### High Contrast Mode

Automatically adjusts when `prefers-contrast: more` is set.

### Screen Reader Only

```html
<span class="sr-only">Only visible to screen readers</span>
```

### Focus States

All interactive elements have visible focus indicators using the brand color.

---

## CSS Custom Properties Reference

### Spacing

| Property | Value |
|----------|-------|
| `--space-0` | 0 |
| `--space-1` | 4px |
| `--space-2` | 8px |
| `--space-3` | 12px |
| `--space-4` | 16px |
| `--space-5` | 20px |
| `--space-6` | 24px |
| `--space-7` | 28px |
| `--space-8` | 32px |
| `--space-10` | 40px |
| `--space-12` | 48px |
| `--space-16` | 64px |

### Typography

| Property | Value |
|----------|-------|
| `--font-family` | Nunito, system-ui, ... |
| `--fs-sm` | 0.875rem |
| `--fs-base` | 1rem |
| `--fs-lg` | 1.25rem |
| `--fs-xl` | 1.5rem |
| `--fs-2xl` | 2rem |
| `--fw-thin` | 300 |
| `--fw-normal` | 400 |
| `--fw-bold` | 700 |
| `--lh-tight` | 1.2 |
| `--lh-normal` | 1.4 |
| `--lh-relaxed` | 1.6 |
| `--prose-width` | 65ch |

### Border Radius

| Property | Value |
|----------|-------|
| `--radius-sm` | 4px |
| `--radius-md` | 8px |
| `--radius-lg` | 12px |
| `--radius-full` | 9999px |

### Shadows

| Property | Value |
|----------|-------|
| `--shadow-1` | 0 1px 2px ... |
| `--shadow-2` | 0 2px 4px ... |
| `--shadow-3` | 0 4px 8px ... |
| `--shadow-4` | 0 8px 16px ... |

### Transitions

| Property | Value |
|----------|-------|
| `--transition-fast` | 0.1s ease |
| `--transition-normal` | 0.15s ease |
| `--transition-slow` | 0.3s ease |

### Breakpoints

| Property | Value |
|----------|-------|
| `--bp-sm` | 640px |
| `--bp-md` | 768px |
| `--bp-lg` | 1024px |
| `--bp-xl` | 1280px |
| `--bp-2xl` | 1536px |

---

## Low Specificity

Rico uses `:where()` for most styles, giving them zero specificity. This makes it easy to override any default styles without fighting specificity wars:

```css
/* Your custom styles easily override Rico defaults */
button {
  background-color: red; /* Works without !important */
}
```
