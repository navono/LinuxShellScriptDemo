# Usage: gawk -F: -f script2.gawk /etc/passwd
{print $1 "'s home directory is " $6}
