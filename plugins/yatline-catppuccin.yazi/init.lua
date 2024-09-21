--==================--
-- Catppuccin Theme --
--==================--

local latte_palette = {
  rosewater = "#dc8a78",
  flamingo = "#dd7878",
  pink = "#ea76cb",
  mauve = "#8839ef",
  red = "#d20f39",
  maroon = "#e64553",
  peach = "#fe640b",
  yellow = "#df8e1d",
  green = "#40a02b",
  teal = "#179299",
  sky = "#04a5e5",
  sapphire = "#209fb5",
  blue = "#1e66f5",
  lavender = "#7287fd",
  text = "#4c4f69",
  subtext1 = "#5c5f77",
  subtext0 = "#6c6f85",
  overlay2 = "#7c7f93",
  overlay1 = "#8c8fa1",
  overlay0 = "#9ca0b0",
  surface2 = "#acb0be",
  surface1 = "#bcc0cc",
  surface0 = "#ccd0da",
  base = "#eff1f5",
  mantle = "#e6e9ef",
  crust = "#dce0e8",
}

local frappe_palette = {
  rosewater = "#f2d5cf",
  flamingo = "#eebebe",
  pink = "#f4b8e4",
  mauve = "#ca9ee6",
  red = "#e78284",
  maroon = "#ea999c",
  peach = "#ef9f76",
  yellow = "#e5c890",
  green = "#a6d189",
  teal = "#81c8be",
  sky = "#99d1db",
  sapphire = "#85c1dc",
  blue = "#8caaee",
  lavender = "#babbf1",
  text = "#c6d0f5",
  subtext1 = "#b5bfe2",
  subtext0 = "#a5adce",
  overlay2 = "#949cbb",
  overlay1 = "#838ba7",
  overlay0 = "#737994",
  surface2 = "#626880",
  surface1 = "#51576d",
  surface0 = "#414559",
  base = "#303446",
  mantle = "#292c3c",
  crust = "#232634",
}

local macchiato_palette = {
    rosewater = "#f4dbd6",
    flamingo = "#f0c6c6",
    pink = "#f5bde6",
    mauve = "#c6a0f6",
    red = "#ed8796",
    maroon = "#ee99a0",
    peach = "#f5a97f",
    yellow = "#eed49f",
    green = "#a6da95",
    teal = "#8bd5ca",
    sky = "#91d7e3",
    sapphire = "#7dc4e4",
    blue = "#8aadf4",
    lavender = "#b7bdf8",
    text = "#cad3f5",
    subtext1 = "#b8c0e0",
    subtext0 = "#a5adcb",
    overlay2 = "#939ab7",
    overlay1 = "#8087a2",
    overlay0 = "#6e738d",
    surface2 = "#5b6078",
    surface1 = "#494d64",
    surface0 = "#363a4f",
    base = "#24273a",
    mantle = "#1e2030",
    crust = "#181926",
}

local mocha_palette = {
    rosewater = "#f5e0dc",
    flamingo = "#f2cdcd",
    pink = "#f5c2e7",
    mauve = "#cba6f7",
    red = "#f38ba8",
    maroon = "#eba0ac",
    peach = "#fab387",
    yellow = "#f9e2af",
    green = "#a6e3a1",
    teal = "#94e2d5",
    sky = "#89dceb",
    sapphire = "#74c7ec",
    blue = "#89b4fa",
    lavender = "#b4befe",
    text = "#cdd6f4",
    subtext1 = "#bac2de",
    subtext0 = "#a6adc8",
    overlay2 = "#9399b2",
    overlay1 = "#7f849c",
    overlay0 = "#6c7086",
    surface2 = "#585b70",
    surface1 = "#45475a",
    surface0 = "#313244",
    base = "#1e1e2e",
    mantle = "#181825",
    crust = "#11111b",
}

--- Gets the Catppuccin theme.
--- @param flavor string Flavor of the theme: "latte", "frappe", "macchiato" or "mocha".
--- @return table theme Used in Yatline.
local function catppuccin_theme(flavor)
  local catppuccin_palette
  if flavor == "latte" then
    catppuccin_palette = latte_palette
  elseif flavor == "frappe" then
    catppuccin_palette = frappe_palette
  elseif flavor == "macchiato" then
    catppuccin_palette = macchiato_palette
  else
    catppuccin_palette = mocha_palette
  end

  return {
    -- yatline
    section_separator_open = "",
    section_separator_close = "",

    inverse_separator_open = "",
    inverse_separator_close = "",

    part_separator_open = "",
    part_separator_close = "",

    style_a = {
      fg = catppuccin_palette.mantle,
      bg_mode = {
        normal = catppuccin_palette.blue,
        select = catppuccin_palette.mauve,
        un_set = catppuccin_palette.red
      }
    },
    style_b = { bg = catppuccin_palette.surface0, fg = catppuccin_palette.text },
    style_c = { bg = catppuccin_palette.mantle, fg = catppuccin_palette.text },

    permissions_t_fg = catppuccin_palette.green,
    permissions_r_fg = catppuccin_palette.yellow,
    permissions_w_fg = catppuccin_palette.red,
    permissions_x_fg = catppuccin_palette.sky,
    permissions_s_fg = catppuccin_palette.lavender,

    selected = { icon = "󰻭", fg = catppuccin_palette.yellow },
    copied = { icon = "", fg = catppuccin_palette.green },
    cut = { icon = "", fg = catppuccin_palette.red },

    total = { icon = "", fg = catppuccin_palette.yellow },
    succ = { icon = "", fg = catppuccin_palette.green },
    fail = { icon = "", fg = catppuccin_palette.red },
    found = { icon = "", fg = catppuccin_palette.blue },
    processed = { icon = "", fg = catppuccin_palette.green },

    -- yatline-githead
    prefix_color = catppuccin_palette.subtext0,
    branch_color = catppuccin_palette.sapphire,
    commit_color = catppuccin_palette.mauve,
    behind_color = catppuccin_palette.flamingo,
    ahead_color = catppuccin_palette.lavender,
    stashes_color = catppuccin_palette.pink,
    state_color = catppuccin_palette.maroon,
    staged_color = catppuccin_palette.yellow,
    unstaged_color = catppuccin_palette.peach,
    untracked_color = catppuccin_palette.teal,
  }
end

return { setup = function(_, args)
  args = args or "mocha"

  return catppuccin_theme(args)
end }
