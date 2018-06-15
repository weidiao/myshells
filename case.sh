#!/bin/bash
for i in $*;do
	case $i in
		[0-9]*)echo "$i is a integer";;
		[a-zA-Z]*)echo "$i is word";;
		*)echo "i don't konw"
	esac
done

echo "===============;;& === self and ?========="
case "1" in
    1)
        echo '1'
        ;;&
    2)
        echo '2'
        ;;
    3)
        echo '3'
        ;;
    ?)
        echo '?'
        ;;
    *)
        echo '*'
        ;;
esac

echo "================;&===self and next========="
case "1" in
    1)
        echo '1'
        ;&
    2)
        echo '2'
        ;;
    3)
        echo '3'
        ;;
    ?)
        echo '?'
        ;;
    *)
        echo '*'
        ;;
esac

