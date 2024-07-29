_default:
  @just --list

icons:
  #!/usr/bin/env bash
  data=$(curl https://raw.githubusercontent.com/nvim-tree/nvim-web-devicons/master/lua/nvim-web-devicons/icons-default.lua | sed 's/return {/local tbl = {/g')
  script="$data
  print(require('dkjson').encode(tbl, { indent = false }))"
  echo "$script" | lua > icons.json

build:
  #!/usr/bin/env bash
  whiskers yazi.tera
  deno task icons
