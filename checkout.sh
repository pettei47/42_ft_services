ESC=$(printf '\033')
branch=$(git branch | ed -n -e 's/^\* \(.*\)/\1/p')
today=$(date "+%Y_%m_%d_%H_%M_%S")

if [ -n "$1" ]; then
	target_branch="${today}_${USER}_$1"
else
	target_branch="${today}_${USER}"
fi
if [ $branch = "main" ]; then
	echo "${ESC}[32m>git pull${ESC}[m"
	git pull
	echo "${ESC}[32m>git pull checkout -b ${target_branch}${ESC}[m"
	git checkout -b ${target_branch}
else
	echo "you are not in main\\nbut in $branch"
fi
