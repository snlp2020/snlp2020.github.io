#!/bin/bash

slides=(introduction math-refresher probability-refresher \
    information-theory ml-intro classification ml-evaluation\
)
notes=(intro math-overview probability-overview \
    information-theory ml-basics classification ml-eval\
)

echo ${slides[@]}
echo ${slides[1]}

for i in ${!slides[@]}; do
    if [[ -r ../notes/chapters/${notes[$i]}.pdf ]];then
        cp ../notes/chapters/${notes[$i]}.pdf notes/${slides[$i]}-notes.pdf 
    fi
    cp ../slides/${slides[$i]}.pdf slides/
    cp ../slides/${slides[$i]}-handout.pdf slides/
done
