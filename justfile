_default:
  @just --list

build:
  #!/usr/bin/env bash
  whiskers yazi.tera
  # Fetch file associations, colors, icons.
  data="$(curl https://raw.githubusercontent.com/nvim-tree/nvim-web-devicons/master/lua/nvim-web-devicons/icons-default.lua | sed 's/return {/local tbl = {/g')"
  # Create a script that ends with the contents of it being printed as JSON.
  script="$data
  print(require('dkjson').encode(tbl, { indent = false }))"
  # Run the Deno script to find the closest matching colors and write the files.
  deno task icons $(echo "$script" | lua)
