#! /bin/bash

for LINE in `grep "^* Total:" 4.dat`
do
	if [[ $LINE == "P="* ]];then
	p=${LINE:0:6}
fi
	if [[ $LINE == "R="* ]];then
	r=${LINE:0:6}
fi
	if [[ $LINE == "F="* ]];then
	f=${LINE:0:6}
fi

	if [[ $p == "P="*  &&  $r == "R="*  &&  $f == "F="* ]];then
	echo -n $p
	echo -n " "
	echo -n $r
	echo -n " "
	echo -n $f
	echo -n ""
	p=""
	r=""
	f=""
fi	
done

#end
