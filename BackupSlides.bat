@echo off

:: %~dp0 is the directory containing this batch script and ends with a backslash.
set currDir=%~dp0

:: The path to the Logs direcory which should be in the same directory as this script
set logFileDirectoryPath=%currDir%Logs\

:: Creating Name for the Logfile using the current time and date
:: %date% gives output on my machine in the following format: Wed 12/23/2015
:: TODO - Make this machine independent...
:: Extracting a date/time in the following form: mm-dd-yyyy-time
set timestamp=%date:~4,2%-%date:~7,2%-%date:~10,4%-%time%

:: The time above was of the form hh:mm:ss.hs => The time is in 24 hours and hs is hundredths of second
:: Removing the colons (not allowed in a file name) and stripping the hs part.
set timestamp=%timestamp::=-%
set timestamp=%timestamp:~0,-3%

:: The final pathname of the log file
:: TODO - Currently the script is dependent on the path heirarchy on target machine. Make it indpendent of it (e.g. use command line arguments)
set logFilePath=%logFileDirectoryPath%%timestamp%.log

:: Copy the files and redirect the output of the command to the log file named above (the file is created)
:: echo d - a fix for the prompt that comes sometimes in xcopy asking if the destination is a file or directory.
echo d | xcopy C:\LearntSlides C:\Users\taanand\OneDrive\Learning\LearntSlides /S /E /Y > %logFilePath%
