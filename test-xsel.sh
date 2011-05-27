#! /bin/bash
word=`xsel -o`
result="sdcv -n -u 朗道英汉字典5.0 $word"
#message="`result`"
notify-send  "`$result`"
#dzen2 -e 'onstart=uncollapse,scrollhome;button1=exit;button4=scrollup;button5=scrolldown;'
      -l 10 -fn 'WenQuanYi Zen Hei-11'
      -title-name "result is:"
      -slave-name "`$result`"

