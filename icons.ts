import { closest } from "ctpvert";
import { type ColorName, flavorEntries, flavors } from "@catppuccin/palette";
import { stringify } from "smol-toml";

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
  const output: {
    "icon": Record<
      "files" | "exts",
      Array<{ name: string; text: string; fg_dark: string; fg_light: string }>
    >;
  } = {
    icon: {
      files: [],
      exts: [],
    },
  };

  for (
    const [filename, { color, icon }] of Object.entries(icons_by_filename)
  ) {
    const match = closest(color);
    const fg =
      flavors[identifier].colors[match[identifier].name as ColorName].hex;
    output.icon.files.push({
      name: filename,
      text: icon,
      fg_dark: fg,
      fg_light: fg,
    });
  }

  for (
    const [ext, { color, icon }] of Object.entries(icons_by_file_extension)
  ) {
    const match = closest(color);
    const fg =
      flavors[identifier].colors[match[identifier].name as ColorName].hex;
    output.icon.exts.push({
      name: ext,
      text: icon,
      fg_dark: fg,
      fg_light: fg,
    });
  }

  const dist = `themes/${identifier}.toml`;
  const theme = await Deno.readTextFile(dist);
  await Deno.writeTextFile(
    dist,
    theme + "\n" + stringify(output),
  );
}
