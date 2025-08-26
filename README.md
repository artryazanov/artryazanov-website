# Artem Ryazanov - Personal Website

A multilingual personal website with a neon retro sci-fi design and an alternative beach theme, featuring interactive elements and automatic language detection.

Visit the live website: [www.artryazanov.com](https://www.artryazanov.com)

[![Website Preview](logo-240x240.png)](https://www.artryazanov.com)

## Features

- **Dual Theme Design**:
  - Dark Theme: Neon retro sci-fi design with dark background and glowing neon elements
  - Light Theme: Beach-inspired design with warm colors and wave animations
  - Theme persistence using localStorage
  - Automatic system theme preference detection
- **Responsive Layout**: Fully responsive design that works on all devices
- **Multilingual Support**: Available in 6 languages with automatic language detection
- **Interactive Elements**:
  - Star animation background (transforms to beach elements in light theme)
  - Glitch effect on profile picture click
  - Hover animations on all interactive elements
  - Theme toggle with sun/moon icons
- **Project Showcase**: Displays personal projects with descriptions and links
- **SSI Partials**: Shared CSS and JavaScript are included via Nginx SSI to avoid duplication across pages

## Technologies Used

- HTML5
- CSS3 (with CSS Variables, Animations, and Transitions)
- JavaScript (Vanilla)
  - LocalStorage for theme persistence
  - Media queries for system theme detection
- Google Fonts (Orbitron, Roboto, Pacifico, Montserrat, Open Sans, Cairo, Noto Sans SC, Sarabun)
- Font Awesome Icons
- SVG for background patterns
- Nginx Server-Side Includes (SSI) for partials

## Server-Side Includes (SSI)

This site uses Nginx Server-Side Includes (SSI) to share common code between pages.

- Shared CSS is included in each language page via an SSI directive in the <head>:

```html
<!--# include virtual="/_partials/style.shtml" -->
```

- Shared JavaScript is included at the end of the body:

```html
<!--# include virtual="/_partials/script.shtml" -->
```

- Nginx must have SSI enabled for HTML:

```nginx
ssi on;
ssi_types text/html;
```

## Project Structure

- `index.html` - Main entry point with language detection and redirection
- `index_en.html` - English version
- `index_ru.html` - Russian version
- `index_th.html` - Thai version
- `index_zh.html` - Chinese version
- `index_es.html` - Spanish version
- `index_ar.html` - Arabic version (with RTL support)
- `_partials/style.shtml` - Shared stylesheet included in each page via SSI
- `_partials/script.shtml` - Shared JavaScript included in each page via SSI
- `logo-300x300.png` - Profile picture
- Various favicon files for different platforms

## Language Support

The website automatically detects the user's browser language and redirects to the appropriate language version. Currently supported languages:

- English (EN)
- Russian (RU)
- Thai (TH)
- Chinese (中文)
- Spanish (ES)
- Arabic (AR)—with Right-to-Left (RTL) support

Users can manually switch between languages using the language switcher in the top-right corner (top-left for Arabic).

## Theme Support

The website features two distinct themes:

1. **Dark Theme (Default)**: A neon retro sci-fi design with:
   - Dark background with grid pattern
   - Neon blue and purple accents
   - Glowing text effects
   - Twinkling star animation

2. **Light Theme**: A beach-inspired design with:
   - Warm sand background with wave patterns
   - Coral and teal accents
   - Soft shadows and rounded elements
   - Floating beach elements animation

The theme system includes:
- Theme toggle button in the top-left corner
- Theme persistence using localStorage
- System theme preference detection
- Smooth transitions between themes

## Installation and Usage

1. Clone or download this repository
2. Open `index.html` in your web browser
3. The site will automatically redirect to the appropriate language version based on your browser settings

To see SSI includes (style.shtml and script.shtml) rendered, serve the site via Nginx with SSI enabled (ssi on; ssi_types text/html;) or any SSI-enabled server. Opening HTML files directly via file:// will not process SSI directives.

## Customization

### Changing Personal Information

Edit the following sections in each language file:

- Profile picture: Replace `logo-300x300.png` with your own image
- Name: Update the `<h1 class="name">` element
- Bio: Update the `<p class="bio">` element
- Social links: Modify the links in the `<div class="social-links">` section
- Projects: Edit the project cards in the `<div class="projects">` section

### Modifying the Design

- Color scheme: Update the CSS variables in the `:root` selector
- Fonts: Change the Google Fonts import and update the font-family properties
- Background: Modify the SVG pattern in the `body::before` CSS rule
- Themes: Adjust the theme-specific styles in the CSS

### Adding New Languages

To add a new language:

1. Create a copy of `index_en.html` and name it `index_XX.html` (where XX is the language code)
2. Update the `lang` attribute in the `<html>` tag
3. Translate all text content
4. Add the language to the switcher in all HTML files
5. Update the language detection script in `index.html`

## Credits

- Fonts: [Google Fonts](https://fonts.google.com/)
- Icons: [Font Awesome](https://fontawesome.com/)
- Design inspiration: Neon retro sci-fi aesthetics and beach themes

## License

© 2025 Artem Ryazanov. All rights reserved.