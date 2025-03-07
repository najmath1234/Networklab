
#!/bin/bash

read -p "Enter a string: " str
rev_str=$(echo "$str" | rev)

if [ "$str" == "$rev_str" ]; then
    echo "Palindrome"
else
    echo "Not Palindrome"
fi

