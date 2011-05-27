#! /bin/bash 
for day in 27 28
do
    for page in 4 5
    do
        curl -o 4月$day日版$page.jpg http://paper.people.com.cn/rmrb/page/2010-04/$day/0$page/yw"$page"b4"$day"b_b.jpg
    done
done
