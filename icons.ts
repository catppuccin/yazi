import { closest } from "ctpvert";
import { type ColorName, flavorEntries, flavors } from "@catppuccin/palette";
import { stringify } from "smol-toml";

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

type IconEntry = {
  name: string;
  text: string;
  fg_dark: string;
  fg_light: string;
};

for (const [identifier] of flavorEntries) {
  const output = {
    icon: {
      files: [] as IconEntry[],
      exts: [] as IconEntry[],
    },
  };

  const addIcons = (
    icons: Record<string, { color: string; icon: string }>,
    output: IconEntry[],
  ) => {
    for (const [key, { color, icon }] of Object.entries(icons)) {
      const match = closest(color);
      const fg =
        flavors[identifier].colors[match[identifier].name as ColorName].hex;
      output.push({
        name: key,
        text: icon,
        fg_dark: fg,
        fg_light: fg,
      });
    }
  };

  addIcons(icons_by_filename, output.icon.files);
  addIcons(icons_by_file_extension, output.icon.exts);

  const dist = `themes/${identifier}.toml`;
  const theme = await Deno.readTextFile(dist);
  await Deno.writeTextFile(
    dist,
    theme + "\n" + stringify(output),
  );
}
