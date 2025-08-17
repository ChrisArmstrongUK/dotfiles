###############################################################################

if ! command -v starship >/dev/null 2>&1; then
  echo 'Missing from PATH ["starship"]'
else
  eval -- "$(starship init bash --print-full-init)"
fi

###############################################################################

