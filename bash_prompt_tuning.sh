#Replace example.com with your own domain
#Put this file in /etc/profile.d for system wide config. You can do this with ansible in this way for example:
#ansible -i inventory/hosts all -m copy -a "src=bash_prompt_tuning.sh dest=/etc/profile.d/ owner=root group=root mode=0644"

if hostname -f | grep -q '\.prd\.example\.com\.py'; then
  _COLOR=31  # red
elif hostname -f | grep -q '\.infra\.example\.com\.py'; then
  _COLOR=33  # yellow
else
  _COLOR=36  # cyan
fi

PS1="\[\033[01;${_COLOR}m\]\u@$(hostname -f|sed 's/\.example\.com\.py//')\[\033[01;34m\] \w #\[\033[00m\] "
