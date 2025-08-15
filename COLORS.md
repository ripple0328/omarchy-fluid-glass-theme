# Fluid Glass Color Palette

This document outlines the color palette used throughout the Fluid Glass theme for consistency and customization purposes.

## Primary Colors

| Color | Hex Code | Usage |
|-------|----------|--------|
| Primary Background | `#0F0F14` | Main background color |
| Primary Foreground | `#F8FAFC` | Main text color |
| Secondary Foreground | `#CBD5E1` | Secondary text, icons |

## Glass Effects

| Color | Hex/RGBA | Usage |
|-------|----------|--------|
| Glass Background | `rgba(255, 255, 255, 0.08)` | Semi-transparent backgrounds |
| Glass Surface | `rgba(255, 255, 255, 0.12)` | Elevated surfaces |
| Glass Border | `rgba(255, 255, 255, 0.2)` | Subtle borders |

## Accent Colors

| Color | Hex Code | Usage |
|-------|----------|--------|
| Sky Blue | `#0EA5E9` | Primary accent, links, highlights |
| Cyan | `#06B6D4` | Secondary accent, info states |
| Emerald | `#10B981` | Success states, positive actions |
| Amber | `#F59E0B` | Warning states, caution |
| Red | `#EF4444` | Error states, destructive actions |
| Purple | `#8B5CF6` | Special highlights, keywords |

## Semantic Colors

| Color | Hex/RGBA | Usage |
|-------|----------|--------|
| Selection | `rgba(14, 165, 233, 0.3)` | Selected items, active states |
| Visual | `rgba(6, 182, 212, 0.3)` | Visual selections |
| Comment | `#64748B` | Comments, disabled text |
| Border | `#475569` | Standard borders, dividers |

## Terminal Colors

### Normal Colors
- Black: `#1E293B`
- Red: `#EF4444`
- Green: `#10B981`
- Yellow: `#F59E0B`
- Blue: `#0EA5E9`
- Magenta: `#8B5CF6`
- Cyan: `#06B6D4`
- White: `#F8FAFC`

### Bright Colors
- Bright Black: `#475569`
- Bright Red: `#F87171`
- Bright Green: `#34D399`
- Bright Yellow: `#FBBF24`
- Bright Blue: `#38BDF8`
- Bright Magenta: `#A78BFA`
- Bright Cyan: `#22D3EE`
- Bright White: `#FFFFFF`

## Design Principles

### Transparency
- Use transparency to create depth and layering
- Background elements: 5-15% opacity
- Interactive elements: 8-20% opacity
- Always maintain readability

### Contrast
- Ensure sufficient contrast for accessibility
- Primary text: High contrast white (`#F8FAFC`)
- Secondary text: Medium contrast gray (`#CBD5E1`)
- Disabled text: Low contrast gray (`#64748B`)

### Color Temperature
- Cool color palette inspired by glass and ice
- Blues and cyans for primary accents
- Warm colors reserved for warnings and errors
- Neutral grays for structure and hierarchy

## Customization

To modify the theme colors:

1. **Terminal**: Edit `alacritty.toml`
2. **UI Elements**: Edit respective CSS files (`waybar.css`, `walker.css`, etc.)
3. **Editor**: Edit `neovim.lua`
4. **System**: Edit `hyprland.conf` for window decorations

Maintain the glass aesthetic by:
- Using semi-transparent backgrounds
- Keeping consistent accent colors
- Preserving high contrast for text
- Using blur effects where supported