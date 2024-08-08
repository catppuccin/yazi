<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for <a href="https://github.com/imsi32/yatline.yazi">Yatline</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
	<a href="https://github.com/imsi32/yatline-catppuccin.yazi/stargazers"><img src="https://img.shields.io/github/stars/imsi32/yatline-catppuccin.yazi?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/imsi32/yatline-catppuccin.yazi/issues"><img src="https://img.shields.io/github/issues/imsi32/yatline-catppuccin.yazi?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/imsi32/yatline-catppuccin.yazi/contributors"><img src="https://img.shields.io/github/contributors/imsi32/yatline-catppuccin.yazi?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
	<img src="assets/preview.webp"/>
</p>

## Previews

<details>
<summary>🌻 Latte</summary>
  	<img src="assets/latte.webp"/>
</details>
<details>
<summary>🪴 Frappé</summary>
    	<img src="assets/frappe.webp"/>
</details>
<details>
<summary>🌺 Macchiato</summary>
    	<img src="assets/macchiato.webp"/>
</details>
<details>
<summary>🌿 Mocha</summary>
    	<img src="assets/mocha.webp"/>
</details>


## Installation

### General
1) Download the `yatline-catppuccin.yazi` directory.
2) Open the plugins directory of Yazi. (In Linux: `~/.config/yazi/plugins`)
3) Copy `yatline-catppuccin.yazi` directory into `plugins` directory.
4) Create `init.lua` file in the main Yazi config directory.
5) Follow the usage steps.

## Usage
Copy the following config to the `init.lua` file.
``` lua
local catppuccin_theme = require("yatline-catppuccin"):setup("mocha") -- or "latte" | "frappe" | "macchiato"
```
Then use the `theme` variable in Yatline config's theme paramater.
``` lua
require("yatline"):setup({
-- ===

	theme = catppuccin_theme,

-- ===
})
```

## Supported Plugins
- [yatline.yazi](https://github.com/imsi32/yatline.yazi)
- [yatline-githead.yazi](https://github.com/imsi32/yatline-githead.yazi)

## 💝 Thanks to

- [imsi32](https://github.com/imsi32)

&nbsp;

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
	Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
</p>

<p align="center">
	<a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
