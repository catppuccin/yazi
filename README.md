<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for <a href="https://yazi-rs.github.io">Yazi</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
	<a href="https://github.com/catppuccin/yazi/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/yazi?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/yazi/issues"><img src="https://img.shields.io/github/issues/catppuccin/yazi?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/yazi/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/yazi?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
	<img src="assets/previews/preview.webp"/>
</p>

## Previews

<details>
<summary>🌻 Latte</summary>
<img src="assets/previews/latte.webp"/>
</details>
<details>
<summary>🪴 Frappé</summary>
<img src="assets/previews/frappe.webp"/>
</details>
<details>
<summary>🌺 Macchiato</summary>
<img src="assets/previews/macchiato.webp"/>
</details>
<details>
<summary>🌿 Mocha</summary>
<img src="assets/previews/mocha.webp"/>
</details>

## Usage

1. Copy the theme file of your choice from `themes/` to your [Yazi configuration directory](https://yazi-rs.github.io/docs/configuration/overview) with the filename `theme.toml`.
2. For Catppuccin-themed syntax highlighting in the preview pane:
   - Download the `.tmTheme` file of your choice from [catppuccin/bat](https://github.com/catppuccin/bat).
   - Replace the path of `syntect_theme` (line 32) with the path of your downloaded `.tmTheme` file.

## Contributing

To contribute to this port you will need the following dependencies installed:

- [Whiskers](https://github.com/catppuccin/whiskers)
- [Deno](https://docs.deno.com/runtime/manual/getting_started/installation)

Edit `yazi.tera` to make changes to the theme. Run `just build` to build the output themes in `themes/`.

To update the icons data, you will additionally need [Lua](https://lua.org/start.html), [LuaRocks](https://luarocks.org/), and the [`dkjson` LuaRocks module](https://luarocks.org/modules/dhkolf/dkjson). Run `just icons` to fetch and process the data from [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons).

## 💝 Thanks to

- [uncenter](https://github.com/uncenter)

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
