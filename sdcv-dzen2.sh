#! /bin/bash
word=`xsel -o`
result1="sdcv -n -u 朗道英汉字典5.0 $word"
result2="sdcv -n -u 牛津英汉双解美化版 $word"

# use notify-send
notify-send "result is:" "`$result1`"
# use dzen2
#( $result2; sleep 15;) | dzen2 -e 'onstart=uncollapse,scrollhome;button1=exit;button4=scrollup;button5=scrolldown;' -l 19 -w 450 -fn 'WenQuanYi Zen Hei-11'

# write the word to a file
#path=`dirname $0` 
#echo $word >> $path/NewWords

