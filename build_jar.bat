@echo off
javac -Xlint:unchecked src/*.java src/sql/*.java src/cli/*.java src/forms/*.java
if not exist build/utilx mkdir build/utilx
xcopy /Q /E /Y src\*.class build\utilx\
jar cvf utilx.jar -C build/ .
if exist D:\ownCloud\Documents\School\Java\bin\ xcopy /Q /Y utilx.jar D:\ownCloud\Documents\School\Java\bin\
@pause