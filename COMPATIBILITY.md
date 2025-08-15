# Hyprland 0.50.1 Compatibility Fixes

This document outlines all compatibility fixes made for Hyprland 0.50.1 and other components.

## Fixed Configuration Issues

### 1. Alacritty Terminal (`alacritty.toml`)

**Issue**: RGBA hex colors with alpha channels not supported
```toml
# ❌ Old (causes error)
background = "#0EA5E94D"

# ✅ Fixed
background = "#1E3A8A"
```

**Solution**: Replaced RGBA hex format with solid hex colors. Transparency is handled by the window opacity setting instead.

### 2. Hyprland Window Manager (`hyprland.conf`)

#### A. Shadow Configuration Syntax Change

**Issue**: `drop_shadow` and related options deprecated in Hyprland 0.50.x
```conf
# ❌ Old syntax (causes "does not exist" error)
decoration {
    drop_shadow = true
    shadow_range = 20
    shadow_render_power = 3
    col.shadow = rgba(0, 0, 0, 0.3)
    col.shadow_inactive = rgba(0, 0, 0, 0.1)
}

# ✅ New syntax
decoration {
    shadow {
        enabled = true
        range = 20
        render_power = 3
        color = rgba(0, 0, 0, 0.3)
        color_inactive = rgba(0, 0, 0, 0.1)
    }
}
```

#### B. RGBA Color Format

**Issue**: Hex RGBA format not accepted
```conf
# ❌ Old (causes error)
col.border_active = rgba(0EA5E9FF)
col.border_inactive = rgba(FFFFFF33)

# ✅ Fixed
col.border_active = rgba(14, 165, 233, 1.0)
col.border_inactive = rgba(255, 255, 255, 0.2)
```

#### C. Deprecated Blur Options

**Issue**: `new_optimizations` option removed
```conf
# ❌ Old (causes "does not exist" error)
blur {
    new_optimizations = true
}

# ✅ Fixed (removed completely)
blur {
    enabled = true
    size = 8
    passes = 3
}
```

#### D. Border Configuration Location

**Issue**: Border colors and sizes belong in `general` section, not `decoration`
```conf
# ❌ Wrong location (causes errors)
decoration {
    col.border_active = rgba(14, 165, 233, 1.0)
    col.border_inactive = rgba(255, 255, 255, 0.2)
    border_size = 1
}

# ✅ Correct location
general {
    border_size = 1
    col.active_border = rgba(14, 165, 233, 1.0) rgba(6, 182, 212, 1.0) 45deg
    col.inactive_border = rgba(255, 255, 255, 0.1)
}
```

#### E. Workspace Configuration

**Issue**: Invalid workspace rule properties
```conf
# ❌ Old (invalid properties)
workspace = special:scratchpad, gapsout:60, gapsin:20, bordersize:2, border:true, shadow:true

# ✅ Fixed (valid properties only)
workspace = special:scratchpad, gapsout:60, gapsin:20, bordersize:2
```

## Version Compatibility

- **Hyprland**: 0.50.1+ (tested)
- **Alacritty**: Latest stable
- **Waybar**: Latest stable
- **Other components**: No breaking changes

## Testing

All configurations have been tested with:
- Hyprland 0.50.1
- Successful `hyprctl reload` without errors
- All deprecated options removed or updated

## Common Errors Fixed

1. `config option <decoration:drop_shadow> does not exist`
2. `config option <decoration:shadow_range> does not exist`  
3. `config option <blur:new_optimizations> does not exist`
4. `config option <decoration:col.border_active> does not exist`
5. `config option <decoration:border_size> does not exist`
6. `config option <workspace:border> does not exist`
7. `config option <workspace:shadow> does not exist`
8. `failed to parse color #0EA5E94D` in Alacritty

## Future Updates

If you encounter new "does not exist" errors with future Hyprland updates:

1. Check the [Hyprland Wiki](https://wiki.hypr.land/Configuring/Variables/) for current syntax
2. Look for deprecation notices in release notes
3. Test configuration with `hyprctl reload` before applying

This theme is designed to be forward-compatible and will be updated as needed for future Hyprland releases.