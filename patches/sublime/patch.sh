file="/etc/hosts"
if [[ ! -f $file ]]
then
	echo "$file does not exist."
	touch a.txt
fi
declare -a remote_hosts=('license.sublimehq.com' '45.55.255.55' '45.55.41.223')

for host in "${remote_hosts[@]}"
do
	exists=$(cat $file | grep $host)
	if [[ ! -z $exists ]]
	then
		echo "host route already exists - $host"
	else
		echo "Applying patch to $host"
		echo "127.0.0.1 $host" >> $file
	fi
done

echo "Patch completed."
