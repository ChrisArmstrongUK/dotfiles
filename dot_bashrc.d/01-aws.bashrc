###############################################################################

if ! command -v aws_completer >/dev/null 2>&1; then
  gum log --structured --level error --prefix ~/.bashrc.d/01-aws.bashrc "Missing from PATH" arg aws_completer
else
  complete -C 'aws_completer' aws
fi

###############################################################################

