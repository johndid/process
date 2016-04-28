#!/usr/bin/env bash
a="$(cat $1 | cut -d '-' -f 2 | tr -ds ' ' "\n" | sort)";
days="";
hours="";
weeks="";
months="";
years="";

for exp in ${a[@]};do
    tmp=$(echo $exp | awk '{print substr($0,1,length-1)}');
    case "${exp: -1}" in
	d)
	    let "days += tmp";
	    ;;
	h)
	    let "hours += tmp";
	    ;;
	w)
	    let "weeks += tmp";
	    ;;
	m)
	    let "months += tmp";
	    ;;
	y)
	    let "years += tmp";
	    ;;
	*)
	    echo "I dunno: -> ${exp} <-";
	    ;;
    esac
done;

echo "project total: h:$hours, d:$days, w:$weeks, m:$months, y:$years";
exit 0;
