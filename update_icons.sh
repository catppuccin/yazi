#!/usr/bin/env bash
icons_by_filename=$(curl -L https://github.com/nvim-tree/nvim-web-devicons/raw/master/lua/nvim-web-devicons/default/icons_by_filename.lua | sed 's/return {/local tbl = {/g')
icons_by_file_extension=$(curl -L https://github.com/nvim-tree/nvim-web-devicons/raw/master/lua/nvim-web-devicons/default/icons_by_file_extension.lua | sed 's/return {/local tbl = {/g')

lua_to_json() {
  script="$1
print(require('dkjson').encode(tbl, { indent = false }))"
  echo "$script" | lua
}

icons_by_filename_json=$(lua_to_json "$icons_by_filename")
icons_by_file_extension_json=$(lua_to_json "$icons_by_file_extension")
jq -c -n \
--argjson icons_by_filename "$icons_by_filename_json" \
--argjson icons_by_file_extension "$icons_by_file_extension_json" \
'{icons_by_filename: $icons_by_filename, icons_by_file_extension: $icons_by_file_extension}' > icons.json
