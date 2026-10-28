# nodaysidle Royal Red — Omarchy Theme

> *"High-velocity F1 telemetry cockpit: engineered for relentless shipping."*

A high-octane dark telemetry theme for **Omarchy / Hyprland**, custom-tailored for the **nodaysidle** ecosystem and tuned specifically for the **32" Samsung Odyssey G5 (2560×1440 @ 120Hz)** on Intel Arc / Wayland.

Rooted in the visual DNA of Scuderia Rosso Corsa, Formula 1 pit wall timing screens, and the `F1-nodaysidle` telemetry project, it replaces mundane desktops with an aggressive, adrenaline-fueled racing cockpit designed for sharp focus and zero compromise.

---

## Design System & Color Tokens

Anchored in an obsidian asphalt tarmac ground with high-velocity Scuderia red and racing yellow telemetry accents:

| Token | Hex | Role in Ecosystem |
| :--- | :--- | :--- |
| **Asphalt Tarmac** | `#0D080A` | Primary pitch background (zero distraction, pure contrast) |
| **Exhaust Void** | `#040203` | Sunken containers, tooltips, and lock screen ground |
| **Cockpit Raised** | `#171013` | Elevated card surfaces and active tab acrylic |
| **Scuderia Red** | `#FF2A42` | Primary alert & active accent (borders, active buttons, alerts) |
| **Telemetry Gold** | `#FFB703` | Sector times, cursor highlights, urgent warning signals |
| **Track Yellow** | `#FFE600` | Hover cursor glow, DRS status, maximum urgency |
| **Telemetry Cyan** | `#00E5FF` | Intermediate sector timings, speed trap telemetry |
| **Titanium White** | `#F3EFF1` | High-legibility typography (JetBrains Mono Nerd Font) |
| **Carbon Slate** | `#806B70` | Hairline borders, secondary metadata, comments |

---

## Key Architectural Features

### 1. High-Velocity Scuderia Gradient Borders
A razor 2px active border angled at 135° combining **Scuderia Red (`#FF2A42`)**, **Deep Burgundy Black Cherry (`#7A0B18`)**, and a **Telemetry Gold tip (`#FFB703`)**. Fires crisply on window focus without continuous redraw cycles to preserve cool thermals.

### 2. Snug 6px Track Curvature
Features an aggressive, purpose-driven curvature profile (`rounding = 6`, `power = 2.0`) and tight gaps (`gaps_in = 4`, `gaps_out = 8`) that simulate the snug fit of a Formula 1 carbon monocoque.

### 3. Foot Terminal Cockpit
Tuned with an obsidian tarmac background (`#0D080A`), blazing Scuderia red beam cursor (`#FF2A42`), and titanium white typography with saturated track ANSI syntax highlighting.

### 4. Bespoke Top Menu Bar Surfaces
`shell.toml` configures an authentic F1 pit wall telemetry console:
- **Tarmac Acrylic Surface**: `background = "#0D080A"` with `alpha = 0.94`
- **Scuderia Active Badges**: Active workspaces and urgent notifications pop in high-intensity Scuderia Red (`#FF2A42`)
- **Track Yellow Telemetry Hover**: Controls glow into warning yellow (`#FFE600`) upon cursor hover

### 5. Curated 2560×1440 120Hz Wallpapers
Includes 4 bespoke wallpapers at native 2560×1440:
- `00-nodaysidle-lv-monogram-royal-red.png`: Luxury LV-style NODAYSIDLE monogram in dark Rosso Corsa.
- `00-nodaysidle-multicolor-royal-red.png`: Vibrant multi-color royal red monogram weave.
- `01-scuderia-pitwall-telemetry.png`: F1 pit wall telemetry grid with timing sectors (`S1: 19.412 PURPLE | DELTA -0.342s`) and aerodynamic speed streaks.
- `02-scuderia-dark-monolith.png`: Radial dark studio vignette with 13,500 RPM tachometer arc and bold Scuderia typography.

---

## Installation & Activation

### 1. Register the Theme
Run the installer from within the theme repository:

```bash
chmod +x install uninstall hooks/nodaysidle-royal-red
./install
```

### 2. Activate with Omarchy
```bash
omarchy theme set nodaysidle-royal-red
```

### 3. Cycle Wallpapers
```bash
omarchy theme bg next
```

---

## File Architecture

```
omarchy-theme-nodaysidle-royal-red/
├── colors.toml               # Master color tokens for Omarchy templates
├── hyprland.lua              # 135° Scuderia/gold gradient, 6px track rounding, 140ms snap
├── shell.toml                # Quickshell pit wall bar, controls, popups, and OSD
├── foot.ini                  # Foot terminal palette & cursor definition
├── btop.theme                # Telemetry skin for system monitoring
├── preview.png               # 2560×1440 preview render for Omarchy theme picker
├── install / uninstall       # Symlink & hook registration scripts
├── hooks/
│   └── nodaysidle-royal-red  # Omarchy theme-set lifecycle hook
└── backgrounds/              # High-resolution 2560×1440 wallpapers
    ├── 00-nodaysidle-lv-monogram-royal-red.png
    ├── 00-nodaysidle-multicolor-royal-red.png
    ├── 01-scuderia-pitwall-telemetry.png
    └── 02-scuderia-dark-monolith.png
```

---

## Built for NODAYSIDLE
Part of the [nodaysidle](https://github.com/nodaysidle) workspace — relentless shipping, zero compromise.
