export TERM=linux
export TERMINFO=/etc/terminfo
export HOME=/mnt/sdcard

# Android only has one user which is root. If not root, then the permissions are set on the application like for an example the terminal emulator.
# So in case it's not root, we just assign the name "user".
if [[ ${EUID} == 0 ]]; then
	export USER="root"

else
	export USER="user"
fi

alias sh="bash"
alias su="su -c bash"
alias ls="ls -p"

if [ ! -z "$PS1" ]; then
	# check the window size after each command and, if necessary,
	# update the values of LINES and COLUMNS.
	shopt -s checkwinsize

	# set variable identifying the chroot you work in (used in the prompt below)
	if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
	    debian_chroot=$(cat /etc/debian_chroot)
	fi

	if [ -z "$HOSTNAME" ]; then
		export HOSTNAME="localhost"
	fi

	# set a fancy prompt (non-color, overwrite the one in /etc/profile)
	PS1='${debian_chroot:+($debian_chroot)}$USER@\h:\W\$ '
fi

if [ -e /data/.bashrc ]; then
	. /data/.bashrc
fi
