REM win7 required, download junction.exe at http://technet.microsoft.com/en-us/sysinternals/bb896768
REM run as admin
fsutil hardlink create %USERPROFILE%\_vimrc %USERPROFILE%\.vim\vimrc
fsutil hardlink create %USERPROFILE%\_gvimrc %USERPROFILE%\.vim\win_gvimrc
junction -q %USERPROFILE%\vimfiles %USERPROFILE%\.vim
cd %USERPROFILE%\.vim
REM set path=%path%;C:\git\bin
git submodule update --init
echo "Installation finished"
pause
