#! /bin/bash
echo "enter the word below:"
read word
result="sdcv -n -u 朗道英汉字典5.0 $word"
echo `$result`
