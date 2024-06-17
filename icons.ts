import { closest } from "ctpvert";
import { type ColorName, flavorEntries, flavors } from "@catppuccin/palette";

const { icons_by_filename, icons_by_file_extension } = JSON.parse(
  Deno.args.join("")!,
) as Record<
  string,
  Record<
    string,
    {
      name: string;
      icon: string;
      cterm_color: string;
      color: string;
    }
  >
>;

for (const [identifier] of flavorEntries) {
  let output = `[icon]\nprepend_rules = [\n`;

  for (
    const [filename, { color, icon }] of Object.entries(icons_by_filename)
      .sort(([a], [b]) => a < b ? -1 : a > b ? 1 : 0)
  ) {
    const match = closest(color);
    output += `	{ name = "${filename}", text = "${icon}", fg = "${
      flavors[identifier].colors[match[identifier].name as ColorName].hex
    }" },\n`;
  }

  for (
    const [ext, { color, icon }] of Object.entries(icons_by_file_extension)
      .sort(([a], [b]) => a < b ? -1 : a > b ? 1 : 0)
  ) {
    const match = closest(color);
    output += `	{ name = "*.${ext}", text = "${icon}", fg = "${
      flavors[identifier].colors[match[identifier].name as ColorName].hex
    }" },\n`;
  }

  output += "]\n";

  const theme = await Deno.readTextFile(`themes/${identifier}/theme.toml`);
  await Deno.writeTextFile(
    `themes/${identifier}/theme-with-icons.toml`,
    theme + "\n" + output,
  );
}
