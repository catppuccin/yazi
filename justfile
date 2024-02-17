# Print out all recipes when running `just`
_default:
    @just --list

output := "themes"
whiskers_cmd := "whiskers"

# Create the output directory
setup:
    mkdir -p {{output}}

# Remove all files in the output directory
clean:
    rm -fv {{output}}/*.md

# Generate a single flavor, e.g. "mocha"
gen flavor:
  @{{whiskers_cmd}} yazi.hbs {{flavor}} -o {{output}}/{{flavor}}.toml

# Generate all four flavors
all: setup (gen "latte") (gen "frappe") (gen "macchiato") (gen "mocha")
