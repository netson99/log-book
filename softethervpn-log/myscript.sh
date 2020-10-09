vpncmddir="/home/vpsop/src/vpnclient"
alias vpn-status="cd $vpncmddir && ./vpncmd /client localhost /cmd accountstatusget"
alias vpn-connect="cd $vpncmddir && ./vpncmd /client localhost /cmd accountconnect"
alias vpn-disc="cd $vpncmddir && ./vpncmd /client localhost /cmd accountdisconnect"
alias vpn-list="cd $vpncmddir && ./vpncmd /client localhost /cmd accountlist"
alias vpn-cmd="cd $vpncmddir && ./vpncmd /client localhost /cmd"

alias rsync-vfat="rsync -P --modify-window=1"
alias rsync-reg="rsync -av -P"

alias fixterm='reset; stty sane; tput rs1; clear; echo -e "\033c"'

alias systemctl-user="systemctl --user"

#Functions
	# Loop a command and show the output in vim
	loop() {
		echo ":cq to quit\n" > /tmp/log/output 
		fc -ln -1 > /tmp/log/program
		while true; do
			cat /tmp/log/program >> /tmp/log/output ;
			$(cat /tmp/log/program) |& tee -a /tmp/log/output ;
			echo '\n' >> /tmp/log/output
			vim + /tmp/log/output || break;
			rm -rf /tmp/log/output
		done;
	}

 	# Custom cd
 	c() {
 		cd $1;
 		ls;
 	}
 	alias cd="c"



# For vim mappings: 
	stty -ixon


