###############################################################################

if ! command -v chezmoi >/dev/null 2>&1; then
  gum log --structured --level error --prefix ~/.bashrc.d/01-chezmoi.bashrc "Missing from PATH" arg chezmoi
else
  eval -- "$(chezmoi completion bash)"

  chezmoi verify
  if [[ "${?}" != "0" ]]; then
    gum log --structured --level warn --prefix ~/.bashrc.d/01-chezmoi.bashrc "Chezmoi targets do not match their target state"
    chezmoi status
  fi
fi

###############################################################################

