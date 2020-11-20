brname () {
	branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
	if [ -n "$branch" ]; then
		echo " $branch"
	else
		echo ""
	fi
}

PS1="[\u@\h \W\$(brname)]$ "
