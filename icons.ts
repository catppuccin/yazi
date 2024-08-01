import { closest } from "ctpvert";
import { type ColorName, flavorEntries, flavors } from "@catppuccin/palette";

const { icons_by_filename, icons_by_file_extension } = JSON.parse(
  await Deno.readTextFile("./icons.json"),
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
  let output = "[icon]\n\n";

  const addIcons = (
    icons: Record<string, { color: string; icon: string }>,
    name: string,
  ) => {
    output += `${name} = [\n`;
    for (const [key, { color, icon }] of Object.entries(icons)) {
      const match = closest(color);
      const fg =
        flavors[identifier].colors[match[identifier].name as ColorName].hex;
      output +=
        `  { name = "${key}", text = "${icon}", fg_dark = "${fg}", fg_light = "${fg}" },\n`;
    }
    output += "]\n";
  };

  addIcons(icons_by_filename, "files");
  addIcons(icons_by_file_extension, "exts");

  const dist = `themes/${identifier}.toml`;
  const theme = await Deno.readTextFile(dist);
  await Deno.writeTextFile(
    dist,
    theme + "\n" + output,
  );
}
