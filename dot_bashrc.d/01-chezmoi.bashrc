###############################################################################

if ! command -v chezmoi >/dev/null 2>&1; then
  echo 'Missing from PATH ["chezmoi"]'
else
  eval -- "$(chezmoi completion bash)"
fi

###############################################################################

