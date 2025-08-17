###############################################################################

if ! command -v starship >/dev/null 2>&1; then
  gum log --structured --level error --prefix ~/.bashrc.d/99-starship.bashrc "Missing from PATH" arg starship
else
  eval -- "$(starship init bash --print-full-init)"
fi

###############################################################################

