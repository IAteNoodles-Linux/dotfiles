function repeatTime
set count $argv[3]
set counter 0
while true
termdown $argv[1] && toastify send $argv[1]+" Timer is over!!!!"
sleep $argv[2]
if test $counter -ge $count
toastify send "Done!!!"
break
end
toastify send $argv[1]+" Restarting!!!"
set counter (math $counter+1)
end
end
