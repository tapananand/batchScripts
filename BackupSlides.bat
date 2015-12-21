set currDir=%~dp0
set logFileDirectoryPath=%currDir%Logs\
set timestamp=%date:~4,2%-%date:~7,2%-%date:~10,4%-%time%

set timestamp=%timestamp::=-%
set timestamp=%timestamp:~0,-3%

set logFilePath=%logFileDirectoryPath%%timestamp%.log

echo d | xcopy C:\LearntSlides C:\Users\taanand\OneDrive\Learning\LearntSlides /S /E /Y > %logFilePath%
