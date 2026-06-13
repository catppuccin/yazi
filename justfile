_default:
  @just --list

build:
  #!/usr/bin/env bash
  whiskers yazi.tera
  deno task icons
