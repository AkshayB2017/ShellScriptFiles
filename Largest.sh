read a b c
if [[ $a == 0 || $b == 0 || $c == 0 ]]; then
    echo "command line arguments are missing"
elif [[ $a == $b && $b == $c ]]; then
    echo "All the three numbers are equal"
elif [[  $a == $b && $b > $c  ||  $b == $c && $c > $a ||  $a == $c && $a > $b  ]]; then
    echo "I cannot figure out which number is biggest"
else
    if [[ $a > $b && $a > $c ]]; then 
        echo "$a is Biggest number"
    elif [[ $b > $a && $b > $c ]]; then
        echo "$b is Biggest number"
    else
        echo "$c is Biggest number"
    fi
fi
