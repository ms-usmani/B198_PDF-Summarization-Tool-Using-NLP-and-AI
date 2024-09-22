@echo off
cd /d %userprofile%
cmd /k pip install google-generativeai pypdf2 dotenv nltk sumy flask lxml os-sys

exit