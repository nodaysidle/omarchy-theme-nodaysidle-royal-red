-- nodaysidle Royal Red — Hyprland Configuration (Lua)
-- F1 Pit Wall Telemetry & Scuderia Monogram
-- Fast, aggressive, sharp 6px curvature with 140ms snappy telemetry animations

local active_border_color = {
  colors = {
    "rgb(ff2a42)", -- Scuderia Red
    "rgb(7a0b18)", -- Deep Burgundy Black Cherry
    "rgb(ffb703)", -- Telemetry Gold
  },
  angle = 135,
}

local inactive_border_color = {
  colors = {
    "rgb(2b1216)", -- Dark Carbon Crimson
    "rgb(0d080a)", -- Tarmac Pitch Black
  },
  angle = 135,
}

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
    gaps_in = 4,
    gaps_out = { top = 2, right = 8, bottom = 8, left = 8 },
    border_size = 2,
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
      border_locked_active = active_border_color,
      border_locked_inactive = inactive_border_color,
    },

    groupbar = {
      col = {
        active = "rgba(255, 42, 66, 0.35)",
        inactive = "rgba(13, 8, 10, 0.75)",
      },
      text_color = "rgb(ffffff)",
      text_color_inactive = "rgba(163, 146, 150, 0.7)",
      blur = false,
      gradient_rounding = 4,
    },
  },

  decoration = {
    rounding = 6,
    rounding_power = 2.0,

    active_opacity = 1.0,
    inactive_opacity = 1.0,

    dim_inactive = true,
    dim_strength = 0.20,
    dim_special = 0.35,

    blur = { enabled = false },
    glow = { enabled = false },
    shadow = { enabled = false },
  },
})

-- ── F1 Telemetry Snap Bezier ──
hl.curve("scuderiaSnap", { type = "bezier", points = { { 0.05, 0.90 }, { 0.10, 1.05 } } })

hl.animation({ leaf = "borderangle", enabled = false })
hl.animation({
  leaf = "windows",
  enabled = true,
  speed = 2.5,
  bezier = "scuderiaSnap",
})

hl.animation({ leaf = "layersIn", enabled = true, speed = 2.2, bezier = "scuderiaSnap", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.8, bezier = "scuderiaSnap", style = "fade" })

o.window({ tag = "terminal" }, { tag = "-default-opacity", opacity = "1.0 1.0" })
o.window({ tag = "default-opacity" }, { opacity = "1.0 1.0" })
o.window({ tag = "chromium-based-browser" }, { opacity = "1.0 1.0" })
o.window({ tag = "firefox-based-browser" }, { opacity = "1.0 1.0" })

hl.layer_rule({ match = { namespace = "^(omarchy-bar|omarchy-notifications|omarchy-osd|omarchy-reminders)$" }, blur = false })

hl.env("XCURSOR_THEME", "Omarchy-Royal-Red")
hl.env("HYPRCURSOR_THEME", "Omarchy-Royal-Red")
