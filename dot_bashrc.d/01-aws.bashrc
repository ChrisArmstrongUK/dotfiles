###############################################################################

if ! command -v aws_completer >/dev/null 2>&1; then
  echo 'Missing from PATH ["aws_completer"]'
else
  complete -C 'aws_completer' aws
fi

###############################################################################

