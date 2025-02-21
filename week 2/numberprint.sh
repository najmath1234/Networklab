
#!/bin/bash
a=10
echo"print the numbers from 10 to 100"
until [ $a -ge 101 ];
do
	echo "$a"
	a=` expr $a + 10 `
done
