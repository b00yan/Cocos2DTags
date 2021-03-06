#!/bin/bash

echo "start generating tags for cocos2d-x & cocos2d-html"

#Todo determin whether exsits exuberant ctags and jsctags.

baseDirForScriptSelf=$(cd "$(dirname "$0")"; pwd)
echo "full path to currently executed script is : ${baseDirForScriptSelf}"

cd ${baseDirForScriptSelf}

ls

#generate tags for cocos2d-html, with jsctags(comes from jsdoctor)
echo "generate tags for cocos2d-html"
cd cocos2d-html5
echo "generate tags for cocos2d"
cd cocos2d
jsctags .
cd ..
echo "generate tags for box2d"
cd box2d
jsctags .
cd ..
echo "generate tags for chipmunk"
cd chipmunk
jsctags .
cd ..
echo "generate tags for CocosDenshion"
cd CocosDenshion
jsctags .
cd ..
echo "generate tags for extensions"
cd extensions
jsctags .
cd ..
cd .. #back to root dir

#generate tags for cocos2d-x, with exuberant ctags 5.8 and above 
echo "generate tags for cocos2d-x"
cd cocos2d-x
echo "generate tags for cocos2d"
cd cocos2dx
ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
cd ..
echo "generate tags for box2d"
cd Box2D
ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
cd ..
echo "generate tags for chipmunk"
cd chipmunk
ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
cd ..
echo "generate tags for CocosDenshion"
cd CocosDenshion
ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
cd ..
echo "generate tags for extensions"
cd extensions
ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
cd ..
cd .. #back to root dir

#generate opencv tags
echo "generate tags for opencv2.4.2"
cd opencv
ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
cd ..
cd ..  #back to root dir


