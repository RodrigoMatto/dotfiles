#Put this file in /etc/profile.d for system wide config
# User specific aliases and functions
if hostname -f | grep -q '\.prd\.example\.com\.py'; then
  _COLOR=31  # red
elif hostname -f | grep -q '\.infra\.example\.com\.py'; then
  _COLOR=33  # yellow
else
  _COLOR=36  # cyan
fi

PS1="\[\033[01;${_COLOR}m\]\u@$(hostname -f|sed 's/\.example\.com\.py//')\[\033[01;34m\] \w #\[\033[00m\] "
