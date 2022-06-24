::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBpHWRbTAE+1EbsQ5+n//NaBo1sUV+0xNobY1dQ=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErTXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIROw5GDCCNK2W2CbQY7fqb
::eg0/rx1wNQPfEVWB+kM9LVsJDCWRKXn6IroL5uT07u6CsC0=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQIEIBJHDA2RfGr6C7AY4em76+WQrEESVeY6as/M0r2NKKAE5VfvZtY6325S2NIYQR9Ubl7raAk5uWtF+iScONKIpg3kB0yFqgsxCWx11SOWzC4vY50I
::dhA7uBVwLU+EWHiX4VBQ
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBpHWRbTAE+/Fb4I5/jH7vmGsUwOGucnfe8=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
for /f "tokens=6 delims=[]. " %%i in ('ver') do set build=%%i
set PATH=%PATH%;"%cd%\bin"

:Asur_MENU
cls
set "choice="
cls
mkdir "%UserProfile%/videos/cdncache"
cls
mode con cols=115 lines=40
echo                                            Asur Downloader                        
echo                   _______________________________________________________________
echo                  ^|                                                               ^|
echo                  ^|[32m      [0] Check Link                                           [0m^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|[32m      [1] Protected Downloader(DRM)                            [0m^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|[32m      [2] Unprotected Downloader                               [0m^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|[32m      [3] Youtube Downloader                                   [0m^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|[32m      [4] Zoom video Downloader                                [0m^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|[32m      [5] GDrive File Handle(Download, Upload, Delete)         [0m^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|[32m      [6] Spotify Downloader (Hi-fi or 320 kbps with lyrics)   [0m^|
echo                  ^|[32m         (Only for youtube music available countries)          [0m^|
echo                  ^|[32m         (Other users, use a vpn)                              [0m^|
echo                  ^|[32m      [7] Deezer Music Downlaoder                              [0m^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|[32m      [8] Download Manager(Torrent also)                       [0m^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|[32m      [#] Update                                               [0m^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|[36m      [a] Read it          [b] Requirments        [c] Quit     [0m^|
echo                  ^|                                                               ^|
echo                  ^|_______________________________________________________________^|
echo.
echo.
echo.
echo [1mEnter choice [0/1/2/3/4/5/6/7/8/#/*/-/10/a/b/c][0m
set /p choice="Choice: "
echo.
if /I "[%choice%]"=="[0]" goto :Chec
if /I "[%choice%]"=="[1]" goto :Drm
if /I "[%choice%]"=="[2]" goto :Unp
if /I "[%choice%]"=="[3]" goto :yt
if /I "[%choice%]"=="[4]" goto :zd
if /I "[%choice%]"=="[5]" goto :gd
if /I "[%choice%]"=="[6]" goto :spotd
if /I "[%choice%]"=="[7]" goto :dfi
if /I "[%choice%]"=="[8]" goto :torrent
if /I "[%choice%]"=="[#]" goto :upyt
if /I "[%choice%]"=="[a]" goto :rs
if /I "[%choice%]"=="[b]" goto :sp
echo.
if /I "[%choice%]"=="[c]" goto :EOF
goto :Asur_MENU

:Chec
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|                        Check link                          ^|
echo                   ^|____________________________________________________________^|
echo.
set /p check1=Enter url here :
yt-dlp --list-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --no-check-certificate -F %check1%
echo a - Go to Main Menu
echo b - Exit
set /p choice="Choice: "
if /I "[%choice%]"=="[a]" goto :Asur_MENU
echo.
if /I "[%choice%]"=="[b]"goto :EOF
goto :Asur_MENU

:Drm
cls
mode con cols=115 lines=40
echo                                           Protected Downloader         
echo                  __________________________________________________________________
echo                  ^|                                                                ^|
echo                  ^|[32m                                                                [0m^|
echo                  ^|[32m      [+] MPD Link DRM both files which have correct file type  [0m^|
echo                  ^|[32m               [1]   (Not cenc)      [2]    (cenc)              [0m^|
echo                  ^|[32m                                                                [0m^|
echo                  ^|[32m      [+] MPD Link DRM both files which have video file type    [0m^|
echo                  ^|[32m               [3]   (Not cenc)      [4]    (cenc)              [0m^|
echo                  ^|[32m                                                                [0m^|
echo                  ^|[32m      [5] MP4 Link DRM both files which have correct file type  [0m^|
echo                  ^|[32m                                                                [0m^|
echo                  ^|[32m      [6] MP4 Link DRM both files which have video file type    [0m^|
echo                  ^|[32m                                                                [0m^|
echo                  ^|[32m      [+] Protected only Audio file download                    [0m^|
echo                  ^|[32m               [7]   (not cenc)      [8]     (cenc)             [0m^|
echo                  ^|[32m                                                                [0m^|
echo                  ^|[32m      [+] Protected only Vide0 download                         [0m^|
echo                  ^|[32m               [9]   (not cenc)      [10]    (cenc)             [0m^|
echo                  ^|      ___________________________________________________       ^|
echo                  ^|                                                                ^|
echo                  ^|[36m      [a] Go back                                               [0m^|
echo                  ^|                                                                ^|
echo                  ^|_______________________________________________________________ ^|
echo.
echo.
echo [1mEnter choice [1/2/3/4/5/6/7/8/9/10/a/][0m
set /p ch="Choice:"
echo.
if /I "[%ch%]"=="[1]" goto :mpd1
if /I "[%ch%]"=="[2]" goto :mpd1c
if /I "[%ch%]"=="[3]" goto :mpd2
if /I "[%ch%]"=="[4]" goto :mp41
if /I "[%ch%]"=="[5]" goto :mp41c
if /I "[%ch%]"=="[6]" goto :mp42
if /I "[%ch%]"=="[7]" goto :mpanc12
if /I "[%ch%]"=="[8]" goto :mpac12
if /I "[%ch%]"=="[9]" goto :mpvnc12
if /I "[%ch%]"=="[10]" goto :mpvc12
echo.
if /I "[%ch%]"=="[a]" goto :Asur_MENU

:mpanc12
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|         Protected only audio file download (not cenc)      ^|
echo                   ^|____________________________________________________________^|
echo.
echo [32m*For several sources, The both files key is hex key[0m
echo.
set /p mpd=Enter url here :
set /p hex=Enter audio Key:
set /p name=Output video name:
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --no-check-certificate -F %mpd%
set /p ad=Enter audio id here :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o "%UserProfile%/videos/cdncache/encrypted_audio.m4a" --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %ad% %mpd%
ffmpeg -hide_banner -t duration -decryption_key %hex% -i "%UserProfile%/videos/cdncache/encrypted_audio.m4a" -codec copy "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
move %UserProfile%/videos/cdncache/decrypted_audio.m4a" "%UserProfile%/downloads"
ren "%UserProfile%/downloads/decrypted_audio.m4a" "%UserProfile%/downloads/%name%.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_audio.m4a"
echo [32mIf the audio is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo __________________________________________________________________________________________________
echo 1 - Download Another one.
echo 2 - Go Back to "Protected Video Downloader"
echo 3 - Bo back to "Main Menu"
echo 4 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3/4][0m
set /p ch="Choice :"
if /I "[%ch%]"=="[1]" goto :mpanc12
if /I "[%ch%]"=="[2]" goto :Drm
if /I "[%ch%]"=="[3]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[4]" goto :EOF

:mpac12
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|         Protected only audio file download (cenc)          ^|
echo                   ^|____________________________________________________________^|
echo.
echo [32m*For several sources, The both files key is hex key                                                      [0m
set /p mpd=Enter url here :
set /p kid=Enter kid key: 
set /p hex=Enter hex Key:
set /p name=Output video name:
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --no-check-certificate -F %mpd%
set /p ad=Enter audio id here :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o "%UserProfile%/videos/cdncache/encrypted_audio.m4a" --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %ad% %mpd%
mp4decrypt --key %kid%:%hex% "%UserProfile%/videos/cdncache/encrypted_audio.m4a" "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
move %UserProfile%/videos/cdncache/decrypted_audio.m4a" "%UserProfile%/downloads"
ren "%UserProfile%/downloads/decrypted_audio.m4a" "%UserProfile%/downloads/%name%.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_audio.m4a"
echo [32mIf the audio is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo __________________________________________________________________________________________________
echo 1 - Download Another one.
echo 2 - Go Back to "Protected Video Downloader"
echo 3 - Bo back to "Main Menu"
echo 4 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3/4][0m
set /p ch="Choice :"
if /I "[%ch%]"=="[1]" goto :mpac12
if /I "[%ch%]"=="[2]" goto :Drm
if /I "[%ch%]"=="[3]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[4]" goto :EOF

:mpvnc12
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|         Protected only video file download (not cenc)      ^|
echo                   ^|____________________________________________________________^|
echo.
echo [32m*For several sources, The both files key is hex key                                                      [0m
set /p mpd=Enter url here :
set /p hex=Enter video Key:
set /p name=Output video name:
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --no-check-certificate -F %mpd%
set /p vd=Enter video id here :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o "%UserProfile%/videos/cdncache/encrypted_video.mp4" --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %vd% %mpd%
ffmpeg -hide_banner -t duration -decryption_key %hex% -i "%UserProfile%/videos/cdncache/encrypted_video.mp4" -codec copy "%UserProfile%/videos/cdncache/decrypted_video.mp4"
move %UserProfile%/videos/cdncache/decrypted_audio.m4a" "%UserProfile%/downloads"
ren "%UserProfile%/downloads/decrypted_video.mp4" "%UserProfile%/downloads/%name%.mp4"
del /f "%UserProfile%/videos/cdncache/encrypted_video.mp4"
echo [32mIf the video is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo __________________________________________________________________________________________________
echo 1 - Download Another one.
echo 2 - Go Back to "Protected Video Downloader"
echo 3 - Bo back to "Main Menu"
echo 4 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3/4][0m
set /p ch="Choice :"
if /I "[%ch%]"=="[1]" goto :mpvnc12
if /I "[%ch%]"=="[2]" goto :Drm
if /I "[%ch%]"=="[3]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[4]" goto :EOF

:mpvc12
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|         Protected only video file download (cenc)          ^|
echo                   ^|____________________________________________________________^|
echo.
echo [32m*For several sources, The both files key is hex key                                                      [0m
set /p mpd=Enter url here :
set /p kid=Enter kid key: 
set /p hex=Enter hex Key:
set /p name=Output video name:
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --no-check-certificate -F %mpd%
set /p vd=Enter video id here :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o "%UserProfile%/videos/cdncache/encrypted_video.mp4" --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %vd% %mpd%
mp4decrypt --key %kid%:%hex% "%UserProfile%/videos/cdncache/encrypted_audio.mp4" "%UserProfile%/videos/cdncache/decrypted_video.mp4"
move %UserProfile%/videos/cdncache/decrypted_audio.mp4" "%UserProfile%/downloads"
ren "%UserProfile%/downloads/decrypted_audio.mp4" "%UserProfile%/downloads/%name%.mp4"
del /f "%UserProfile%/videos/cdncache/encrypted_audio.mp4"
echo [32mIf the video is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo __________________________________________________________________________________________________
echo 1 - Download Another one.
echo 2 - Go Back to "Protected Video Downloader"
echo 3 - Bo back to "Main Menu"
echo 4 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3/4][0m
set /p ch="Choice :"
if /I "[%ch%]"=="[1]" goto :mpvc12
if /I "[%ch%]"=="[2]" goto :Drm
if /I "[%ch%]"=="[3]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[4]" goto :EOF



:mpd1c
cls
mode con cols=115 lines=40
echo                   __________________________________________________________________
echo                  ^|                                                                 ^|
echo                  ^|MPD Link DRM  files which have audio and video file types (cenc) ^|
echo                  ^|_________________________________________________________________^|
echo.                           
echo [32m* For fore several sources, The both files key is hex key                                                        [0m
set /p mpd=Enter url here :
set /p kid=Enter kid key: 
set /p hex=Enter hex Key:
set /p name=Output video name:
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --no-check-certificate -F %mpd%
set /p vd=Enter video id here :
set /p ad=Enter audio id here :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o "%UserProfile%/videos/cdncache/encrypted_video.mp4" --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %vd% %mpd%
cd
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o "%UserProfile%/videos/cdncache/encrypted_audio.m4a" --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %ad% %mpd%                                              [0m
mp4decrypt --key %kid%:%hex% "%UserProfile%/videos/cdncache/encrypted_video.mp4" "%UserProfile%/videos/cdncache/decrypted_video.mp4"
mp4decrypt --key %kid%:%hex% "%UserProfile%/videos/cdncache/encrypted_audio.m4a" "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
ffmpeg -hide_banner -t duration -i "%UserProfile%/videos/cdncache/decrypted_video.mp4" -i "%UserProfile%/videos/cdncache/decrypted_audio.m4a" -y -acodec copy -vcodec copy "%UserProfile%/videos/cdncache/output.mp4"
move %UserProfile%/videos/cdncache/output.mp4 "%UserProfile%/downloads"
ren "%UserProfile%/downloads/output.mp4" "%UserProfile%/downloads/%name%.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_video.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_audio.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_video.mp4"
echo [32mIf the video is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo __________________________________________________________________________________________________
echo 1 - Download Another one.
echo 2 - Go Back to "Protected Video Downloader"
echo 3 - Bo back to "Main Menu"
echo 4 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3/4][0m
set /p ch="Choice :"
if /I "[%ch%]"=="[1]" goto :mpd1c
if /I "[%ch%]"=="[2]" goto :Drm
if /I "[%ch%]"=="[3]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[4]" goto :EOF

:mpd1
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|  MPD Link DRM  files which have audio and video file types ^|
echo                   ^|____________________________________________________________^|
echo.
echo [32m*For several sources, The both files key is hex key                                                      [0m
set /p mpd=Enter url here :
set /p kid=Enter video key: 
set /p hex=Enter audio Key:
set /p name=Output video name:
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --no-check-certificate -F %mpd%
set /p vd=Enter video id here :
set /p ad=Enter audio id here :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o "%UserProfile%/videos/cdncache/encrypted_video.mp4" --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %vd% %mpd%
cd
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o "%UserProfile%/videos/cdncache/encrypted_audio.m4a" --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %ad% %mpd%
ffmpeg -hide_banner -t duration -decryption_key %kid% -i "%UserProfile%/videos/cdncache/encrypted_video.mp4" -codec copy "%UserProfile%/videos/cdncache/decrypted_video.mp4"
ffmpeg -hide_banner -t duration -decryption_key %hex% -i "%UserProfile%/videos/cdncache/encrypted_audio.m4a" -codec copy "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
ffmpeg -hide_banner -t duration -i "%UserProfile%/videos/cdncache/decrypted_video.mp4" -i "%UserProfile%/videos/cdncache/decrypted_audio.m4a" -y -acodec copy -vcodec copy "%UserProfile%/videos/cdncache/output.mp4"
move %UserProfile%/videos/cdncache/output.mp4 "%UserProfile%/downloads"
ren "%UserProfile%/downloads/output.mp4" "%UserProfile%/downloads/%name%.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_video.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_audio.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_video.mp4"
echo [32mIf the video is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo __________________________________________________________________________________________________
echo 1 - Download Another one.
echo 2 - Go Back to "Protected Video Downloader"
echo 3 - Bo back to "Main Menu"
echo 4 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3/4][0m
set /p ch="Choice :"
if /I "[%ch%]"=="[1]" goto :mpd1
if /I "[%ch%]"=="[2]" goto :Drm
if /I "[%ch%]"=="[3]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[4]" goto :EOF

:mpd2
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|      MPD Link DRM both files which have video file type    ^|
echo                   ^|____________________________________________________________^|
echo.
echo [32m* You can fine these informations by extension                                                      [0m
set /p mpd=Enter mpd url here :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --no-check-certificate -F %mpd%
set /p vd=Enter video here :
set /p ad=Enter audio here :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o "%UserProfile%/videos/cdncache/encrypted_video.mp4" --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %vd% %mpd%
cd
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o "%UserProfile%/videos/cdncache/encrypted_audio.mp4" --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %ad% %mpd%
set /p kid=Enter kid key: 
set /p hex=Enter hex Key:
mp4decrypt --key %kid%:%hex% "%UserProfile%/videos/cdncache/encrypted_video.mp4" "%UserProfile%/videos/cdncache/decrypted_video.mp4"
mp4decrypt --key %kid%:%hex% "%UserProfile%/videos/cdncache/encrypted_audio.mp4" "%UserProfile%/videos/cdncache/decrypted_audio1.mp4"
echo [32m* You can use low bit rate to speed up (kbs)                                                        
echo *                  8   16  32   64   128     256    320                                             
echo *                  low quality  normal     high quality                                             
echo *                  High speed   normal      low speed  [0m                                             
set /p bit=Enter bit rate of sound:
ffmpeg -hide_banner -t duration -i "%UserProfile%/videos/cdncache/decrypted_audio1.mp4" -vn -ar 44100 -ac 2 -b:a %bit%k "%UserProfile%/videos/cdncache/decrypted_audio.mp3"
ffmpeg -hide_banner -t duration -i "%UserProfile%/videos/cdncache/decrypted_video.mp4"-i "%UserProfile%/videos/cdncache/decrypted_audio.mp3" -y -acodec copy -vcodec copy "%UserProfile%/videos/cdncache/output.mp4"
move "%UserProfile%/videos/cdncache/output.mp4" "%UserProfile%/downloads"
set /p name= Change the name of video:
ren "%UserProfile%/downloads/output.mp4" "%UserProfile%/downloads/%name%.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_video.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
del /f "%UserProfile%/videos/cdncache/decrypted_audio1.mp4"
del /f "%UserProfile%/videos/cdncache/encrypted_audio.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_video.mp4"
echo [32mIf the video is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo __________________________________________________________________________________________________
echo 1 - Download Another one.
echo 2 - Go Back to "Protected Video Downloader"
echo 3 - Bo back to "Main Menu"
echo 4 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3/4][0m
set /p ch="Choice :"
if /I "[%ch%]"=="[1]" goto :mpd2
if /I "[%ch%]"=="[2]" goto :Drm
if /I "[%ch%]"=="[3]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[4]" goto :EOF

:mp41c
cls
mode con cols=115 lines=40
echo                  _____________________________________________________________________
echo                ^|                                                                     ^|
echo                ^|MP4 Link DRM both files which have video and audio file types (cenc0)^|
echo                ^|_____________________________________________________________________^|
echo.
echo [32m* If you know your audiourl,you can direct input it.                                                
echo * You can fine these informations by extension   
echo [32m*For many sources, The both files key is hex key   [0m                                              
set /p vd=Enter video url here :
set /p ad=Enter audio url here :                                              
set /p kid=Enter video key: 
set /p hex=Enter audio Key:
set /p name= output video name :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --no-check-certificate -F %vd%
set /p id1=Enter id here :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o "%UserProfile%/videos/cdncache/encrypted_video.mp4" --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %id1% %vd%
cd
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --no-check-certificate -F %ad%
set /p id2=Enter id here :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o "%UserProfile%/videos/cdncache/encrypted_audio.m4a" --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %id2% %ad%
mp4decrypt --key %kid%:%hex% "%UserProfile%/videos/cdncache/encrypted_video.mp4" "%UserProfile%/videos/cdncache/decrypted_video.mp4"
mp4decrypt --key %kid%:%hex% "%UserProfile%/videos/cdncache/encrypted_audio.mp4" "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
ffmpeg -hide_banner -t duration -i "%UserProfile%/videos/cdncache/decrypted_video.mp4" -i "%UserProfile%/videos/cdncache/decrypted_audio.m4a" -y -acodec copy -vcodec copy "%UserProfile%/videos/cdncache/output.mp4"
move "%UserProfile%/videos/cdncache/output.mp4" "%UserProfile%/downloads"
ren "%UserProfile%/downloads/output.mp4" "%UserProfile%/downloads/%name%.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_video.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_audio.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_video.mp4"
echo [32mIf the video is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo __________________________________________________________________________________________________
echo 1 - Download Another one.
echo 2 - Go Back to "Protected Video Downloader"
echo 3 - Bo back to "Main Menu"
echo 4 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3/4][0m
set /p ch="Choice :"
if /I "[%ch%]"=="[1]" goto :mp41
if /I "[%ch%]"=="[2]" goto :Drm
if /I "[%ch%]"=="[3]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[4]" goto :EOF


:mp41
cls
mode con cols=115 lines=40
echo                    ______________________________________________________________
echo                  ^|                                                              ^|
echo                  ^|MP4 Link DRM both files which have video and audio file types ^|
echo                  ^|___________  _________________________________________________^|
echo.
echo [32m* If you know your audiourl,you can direct input it.                                                
echo * You can fine these informations by extension   
echo [32m*For many sources, The both files key is hex key   [0m                                              
set /p vd=Enter video url here :
set /p ad=Enter audio url here :                                              
set /p kid=Enter video key: 
set /p hex=Enter audio Key:
set /p name= output video name :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --no-check-certificate -F %vd%
set /p id1=Enter id here :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o "%UserProfile%/videos/cdncache/encrypted_video.mp4" --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %id1% %vd%
cd
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --no-check-certificate -F %ad%
set /p id2=Enter id here :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o "%UserProfile%/videos/cdncache/encrypted_audio.m4a" --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %id2% %ad%
ffmpeg -hide_banner -t duration -decryption_key %kid% -i "%UserProfile%/videos/cdncache/encrypted_video.mp4" -codec copy "%UserProfile%/videos/cdncache/decrypted_video.mp4"
ffmpeg -hide_banner -t duration -decryption_key %hex% -i "%UserProfile%/videos/cdncache/encrypted_audio.m4a" -codec copy "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
ffmpeg -hide_banner -t duration -i "%UserProfile%/videos/cdncache/decrypted_video.mp4" -i "%UserProfile%/videos/cdncache/decrypted_audio.m4a" -y -acodec copy -vcodec copy "%UserProfile%/videos/cdncache/output.mp4"
move "%UserProfile%/videos/cdncache/output.mp4" "%UserProfile%/downloads"
ren "%UserProfile%/downloads/output.mp4" "%UserProfile%/downloads/%name%.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_video.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_audio.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_video.mp4"
echo [32mIf the video is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo __________________________________________________________________________________________________
echo 1 - Download Another one.
echo 2 - Go Back to "Protected Video Downloader"
echo 3 - Bo back to "Main Menu"
echo 4 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3/4][0m
set /p ch="Choice :"
if /I "[%ch%]"=="[1]" goto :mp41
if /I "[%ch%]"=="[2]" goto :Drm
if /I "[%ch%]"=="[3]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[4]" goto :EOF

:mp42
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|       MP4 Link DRM both files which have video file type   ^|
echo                   ^|____________________________________________________________^|
echo.
echo [32m* When link is audiourl, you input videourl with .mp4                                               
echo * When link is videourl, you input audiourl with .m4a                                               
echo * You can fine decryption keys by extensions   [0m                                               
set /p vd=Enter video url here :
set /p ad=Enter audio url here :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --no-check-certificate -F %vd%
set /p id1=Enter id here :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o "%UserProfile%/videos/cdncache/encrypted_video.mp4" --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %id1% %vd%
cd
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --no-check-certificate -F %ad%
set /p id2=Enter id here :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o "%UserProfile%/videos/cdncache/encrypted_audio.mp4" --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %id2% %ad%
set /p kid=Enter kid key: 
set /p hex=Enter hex Key:
mp4decrypt --key %kid%:%hex% "%UserProfile%/videos/cdncache/encrypted_video.mp4" "%UserProfile%/videos/cdncache/decrypted_video.mp4"
mp4decrypt --key %kid%:%hex% "%UserProfile%/videos/cdncache/encrypted_audio.mp4" "%UserProfile%/videos/cdncache/decrypted_audio1.mp4"
echo [32m* You can use low bit rate to speed up (kbs)                                                        
echo *                  8   16  32   64   128     256    320                                             
echo *                  low quality  normal     high quality                                             
echo *                  High speed   normal      low speed      [0m                                         
set /p bit=Enter bit rate of sound:
ffmpeg -hide_banner -t duration -i "%UserProfile%/videos/cdncache/decrypted_audio1.mp4" -vn -ar 44100 -ac 2 -b:a %bit%k "%UserProfile%/videos/cdncache/decrypted_audio.mp3"
ffmpeg -hide_banner -t duration -i "%UserProfile%/videos/cdncache/decrypted_video.mp4" -i "%UserProfile%/videos/cdncache/decrypted_audio.mp3" -y -acodec copy -vcodec copy "%UserProfile%/videos/cdncache/output.mp4"
move %UserProfile%/videos/cdncache/output.mp4 "%UserProfile%/downloads"
set /p name= Change the name of video:
ren %UserProfile%/downloads/output.mp4 "%UserProfile%/downloads/%name%.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_video.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
del /f "%UserProfile%/videos/cdncache/decrypted_audio1.mp4"
del /f "%UserProfile%/videos/cdncache/encrypted_audio.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_video.mp4"
echo [32mIf the video is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo __________________________________________________________________________________________________
echo 1 - Download Another one.
echo 2 - Go Back to "Protected Video Downloader"
echo 3 - Bo back to "Main Menu"
echo 4 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3/4][0m
set /p ch="Choice :"
if /I "[%ch%]"=="[1]" goto :mp42
if /I "[%ch%]"=="[2]" goto :Drm
if /I "[%ch%]"=="[3]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[4]" goto :EOF




:Unp
cls
mode con cols=115 lines=40
echo                                         Unprotected Downloader                       
echo                   _______________________________________________________________
echo                  ^|                                                               ^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|[32m      [1] Direct Download                                      [0m^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|[32m      [2] Advanced Download                                    [0m^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|[32m      [3] Download Audio                                       [0m^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|[36m      [a] Go back                                              [0m^|
echo                  ^|_______________________________________________________________^|
echo.
echo.
echo [1mEnter choice [1/2/3/a][0m
set /p ch="Choice:"
echo.
if /I "[%ch%]"=="[1]" goto :dsv
if /I "[%ch%]"=="[2]" goto :dsad
if /I "[%ch%]"=="[3]" goto :dsa
echo.
if /I "[%ch%]"=="[a]" goto :Asur_MENU

:dsv
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|                        Direct Download                     ^|
echo                   ^|____________________________________________________________^|
echo.
set /p yt1=Enter url here :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --no-check-certificate -F %yt1%
set /p vd=Enter id :
set /p reu=Enter name :
set /p ty=Enter the file type wich shows with id :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o "%UserProfile%/downloads/%reu%.%ty%" --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %vd% %yt1%
echo [32mIf the video is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo __________________________________________________________________________________________________
echo 1 - Download Another one.
echo 2 - Go Back to "Unprotected Video Downloader"
echo 3 - Bo back to "Main Menu"
echo 4 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3/4][0m
set /p ch="Choice :"
if /I "[%ch%]"=="[1]" goto :dsv
if /I "[%ch%]"=="[2]" goto :unp
if /I "[%ch%]"=="[3]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[4]" goto :EOF

:dsad
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|                   Advanced Video Downloader                ^|
echo                   ^|____________________________________________________________^|
echo __________________________________________________________________________________________________
echo 1 - Both Files as vid. type
echo 2 - Both files as correct type
echo 3 - Go back
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3][0m
set /p ch="Choice:"
if /I "[%ch%]"=="[1]" goto :vid
if /I "[%ch%]"=="[2]" goto :cor
if /I "[%ch%]"=="[3]" goto :Unp

:vid
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|            Both files which have video file type           ^|
echo                   ^|____________________________________________________________^|
echo.
cd %UserProfile%/videos/cdncache/
set /p mpdr=Enter url here :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --no-check-certificate -F %mpdr%
set /p vdr=Enter video here :
set /p vdr1=Enter video type:
set /p adr=Enter audio here :
set /p adr1=Enter audio type:
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o %UserProfile%/videos/cdncache/ev.%vdr1% --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %vdr% %mpdr%
cd
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o %UserProfile%/videos/cdncache/ea.%adr1% --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %adr% %mpdr%
echo * You can use low bit rate to speed up (kbs)                                                        
echo *                  8   16  32   64   128     256    320                                            
echo *                  low quality  normal     high quality                                             
echo *                  High speed   normal      low speed  [0m                                           
set /p bit=Enter bit rate of sound:
ffmpeg -hide_banner -t duration -i %UserProfile%/videos/cdncache/ea.%adr1% -vn -ar 44100 -ac 2 -b:a %bit%k %UserProfile%/videos/cdncache/ea1.mp3
ffmpeg -hide_banner -t duration -i %UserProfile%/videos/cdncache/ev.%vdr1% -i %UserProfile%/videos/cdncache/ea1.mp3 -y -acodec copy -vcodec copy %UserProfile%/videos/cdncache/output1.mp4
move %UserProfile%/videos/cdncache/output1.mp4 "%UserProfile%/downloads"
set /p name= Change the name of video:
ren %UserProfile%/downloads/output1.mp4 "%UserProfile%/downloads/%name%.mp4"
del /f %UserProfile%/videos/cdncache/ea.%adr1%
del /f %UserProfile%/videos/cdncache/ev.%vdr1% 
del /f %UserProfile%/videos/cdncache/ea1.mp3
del /f %UserProfile%/videos/cdncache/output1.mp4
echo [32mIf the video is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo __________________________________________________________________________________________________
echo 1 - Download Another one.
echo 2 - Go Back to "Unprotected Video Downloader"
echo 3 - Bo back to "Main Menu"
echo 4 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3/4][0m
set /p ch="Choice :"
if /I "[%ch%]"=="[1]" goto :vid
if /I "[%ch%]"=="[2]" goto :Unp
if /I "[%ch%]"=="[3]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[4]" goto :EOF


:cor
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|       The Files which have audio and video file types      ^|
echo                   ^|____________________________________________________________^|
echo.
cd %UserProfile%/videos/cdncache/
set /p mpd4=Enter url here :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --no-check-certificate -F %mpd4%
set /p vd=Enter video id here :
set /p vd1=Enter video type   :
set /p ad=Enter audio id here :
set /p ad1=Enter audio type   :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o %UserProfile%/videos/cdncache/ev.%vd1% --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %vd% %mpd4%
cd
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o %UserProfile%/videos/cdncache/ea.%ad1% --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %ad% %mpd4%
ffmpeg -hide_banner -t duration -i %UserProfile%/videos/cdncache/ev.%vd1% -i %UserProfile%/videos/cdncache/ea.%ad1% -y -acodec copy -vcodec copy %UserProfile%/videos/cdncache/output.mp4
move %UserProfile%/videos/cdncache/output.mp4 "%UserProfile%/downloads"
set /p name= Change the name of video:
ren %UserProfile%/videos/cdncache/output.mp4 "%UserProfile%/downloads/%name%.mp4"
del /f %UserProfile%/videos/cdncache/ea.%ad1%
del /f %UserProfile%/videos/cdncache/ev.%vd1% 
del /f %UserProfile%/videos/cdncache/output.mp4
echo [32mIf the video is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo __________________________________________________________________________________________________
echo 1 - Download Another one.
echo 2 - Go Back to "Unprotected Video Downloader"
echo 3 - Bo back to "Main Menu"
echo 4 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3/4][0m
set /p ch="Choice :"
if /I "[%ch%]"=="[1]" goto :cor
if /I "[%ch%]"=="[2]" goto :Unp
if /I "[%ch%]"=="[3]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[4]" goto :EOF

:dsa
cls
cd %UserProfile%/videos/cdncache/
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|                       Audio Downloader                     ^|
echo                   ^|____________________________________________________________^|
echo.
set /p ytn=Enter url here :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --no-check-certificate -F %ytn%
echo  [32m* Enter ID as .m4a ID Which have highest size                                                         
echo  * Audio Qualities                                                                                     
echo  *   32  64  128  256  320   [0m                                                                                           
set /p vdme=Enter id            :
set /p q8=Enter sound quality :
set /p n9=Enter a name        :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o %UserProfile%/videos/cdncache/a2e.m4a --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %vdme% %ytn%
ffmpeg -hide_banner -t duration -i %UserProfile%/videos/cdncache/a2e.m4a -ar 44100 -ac 2 -b:a %q8%k "%UserProfile%/downloads/%n9%.mp3"
del /f %UserProfile%/videos/cdncache/a2e.m4a
echo [32mIf the video is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo __________________________________________________________________________________________________
echo 1 - Download Another one.
echo 2 - Go Back to "Unprotected Video Downloader"
echo 3 - Bo back to "Main Menu"
echo 4 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3/4][0m
set /p ch="Choice :"
if /I "[%ch%]"=="[1]" goto :dsa
if /I "[%ch%]"=="[2]" goto :Unp
if /I "[%ch%]"=="[3]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[4]" goto :EOF

:yt
cls
mode con cols=115 lines=40
echo                                          Youtube Downloader                       
echo                   _______________________________________________________________
echo                  ^|                                                               ^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|[32m      [1] Youtube Direct Download                              [0m^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|[32m      [2] Youtube Advanced Download                            [0m^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|[32m      [3] Youtube Audio Download                               [0m^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|[32m      [4] Youtube Playlist Download                            [0m^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|[36m      [a] Go back                                              [0m^|
echo                  ^|_______________________________________________________________^|
echo.
echo.
echo [1mEnter choice [1/2/3/4/a][0m
set /p ch="Choice:"
if /I "[%ch%]"=="[1]" goto :ytv
if /I "[%ch%]"=="[2]" goto :ytad
if /I "[%ch%]"=="[3]" goto :yta
if /I "[%ch%]"=="[4]" goto :ytp
echo.
if /I "[%ch%]"=="[a]" goto :Asur_MENU

:ytv
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|                    Youtube Direct Download                 ^|
echo                   ^|____________________________________________________________^|
echo.
set /p yt1=Enter url here :
cd %UserProfile%/downloads
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --no-check-certificate -F %yt1%
echo  [32m*Right corner of the chart you can see "More" and "Info" rows.The More row shows the quality of video 
echo  *You can enter a ID Which have a space on INFO row. When you enter other one, you can see errors in it
echo  *For easy to download video use this numbers as id                                                    
echo  * 144p - 17                                                                                           
echo  * 360p - 18                                                                                      
echo  * 720p - 22                                                                                         
echo  *To download other quality video , go to Youtube Advance Download        [0m                             
set /p vd=Enter id :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --no-warnings --external-downloader aria2c --allow-unplayable-formats --no-check-certificate --console-title -f %vd% %yt1%
echo [32mIf the video is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo __________________________________________________________________________________________________
echo 1 - Download Another one.
echo 2 - Go Back to "Youtube Downloader"
echo 3 - Bo back to "Main Menu"
echo 4 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3/4][0m
set /p ch="Choice :"
if /I "[%ch%]"=="[1]" goto :ytv
if /I "[%ch%]"=="[2]" goto :yt
if /I "[%ch%]"=="[3]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[4]" goto :EOF

:ytad
cls
echo [31mYou can do it with Unportected Advanced Downloader[0m
echo 1 - Go to it
echo 2 - Go back to "Youtube Downloader"
echo 3 - Go back to "Main Menu"
echo 4 - To Exit
set /p ch="Choice :"
if /I "[%ch%]"=="[1]" goto :dsad
if /I "[%ch%]"=="[2]" goto :yt
if /I "[%ch%]"=="[3]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[4]" goto :EOF

:yta
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|                    Youtube Audio Download                  ^|
echo                   ^|____________________________________________________________^|
echo.
cd %UserProfile%/downloads
set /p yt2=Enter url here :
echo [32m *Below you can see the file types which are best [0m
echo [32m      aac flac mp3 m4a opus vorbis wav            [0m
set /p yt3=Enter file type :
echo [32m *Insert a value between                                 [0m
echo [32m     0 (better) and 9 (worse)                            [0m
echo [32m  for VBR or a specific bitrate like 128K (default 5)    [0m
set /p yt4=Enter quality of audio :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --no-warnings --no-check-certificate -x --audio-format %yt3% --audio-quality %yt4% --external-downloader aria2c --add-metadata --embed-thumbnail --parse-metadata FROM:TO %yt2%
cd ..
echo __________________________________________________________________________________________________
echo 1 - Download Another one.
echo 2 - Go Back to "Youtube Downloader"
echo 3 - Bo back to "Main Menu"
echo 4 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3/4][0m
set /p ch="Choice :"
if /I "[%ch%]"=="[1]" goto :yta
if /I "[%ch%]"=="[2]" goto :yt
if /I "[%ch%]"=="[3]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[4]" goto :EOF

:ytp
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|                  YoutubePlaylist Download                  ^|
echo                   ^|____________________________________________________________^|
echo.
set /p yt5=Enter url here :
set /p vdnm=Enter a name for folder :
mkdir "%UserProfile%/downloads/%vdnm%"
echo
cd "%UserProfile%/downloads/%vdnm%"
echo Select quality ( select id - 17 or 18 or 22)
echo  * 144p - 17            
echo  * 360p - 18          
echo  * 720p - 22 [0m        
set /p vd=Enter id :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --no-warnings --external-downloader aria2c --console-title -f %vd% %yt5%
echo [32mIf the video is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo __________________________________________________________________________________________________
echo 1 - Download Another one.
echo 2 - Go Back to "Youtube Downloader"
echo 3 - Bo back to "Main Menu"
echo 4 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3/4][0m
set /p ch="Choice :"
if /I "[%ch%]"=="[1]" goto :ytp
if /I "[%ch%]"=="[2]" goto :yt
if /I "[%ch%]"=="[3]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[4]" goto :EOF

:zd
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|                    Zoom Video Downloader                   ^|
echo                   ^|____________________________________________________________^|
echo.
set /p yt1=Enter url here :
set /p ytw=Enter passcode :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title --external-downloader aria2c --no-warnings --allow-unplayable-formats --video-password %ytw% --no-check-certificate -F %yt1%
set /p vd=Enter id :
set /p reu=Enter name :
set /p ty=Enter the file type wich shows with id :
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -o "%UserProfile%/downloads/%reu%.%ty%" --no-warnings --external-downloader aria2c --allow-unplayable-formats --video-password %ytw% --no-check-certificate --console-title -F %vd% %yt1%
echo [32mIf the video is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo __________________________________________________________________________________________________
echo 1 - Download Another one.
echo 2 - Go Back
echo 3 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3][0m
set /p ch="Choice:"
if /I "[%ch%]"=="[1]" goto :zd
echo.
if /I "[%ch%]"=="[2]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[3]" goto :EOF

:torrent
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|                     Download Manager                       ^|
echo                   ^|____________________________________________________________^|
echo.
echo You can download any file by that ( Torrent Also )
set /p rt="Enter url:"
aria2c -d "%UserProfile%/downloads" %rt%
echo If the files is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above
echo __________________________________________________________________________________________________
echo 1 - Download Another one.
echo 2 - Go Back
echo 3 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3][0m
set /p ch="Choice:"
if /I "[%ch%]"=="[1]" goto :torrent
if /I "[%ch%]"=="[2]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[3]" goto :EOF

:gd
cls
mode con cols=115 lines=40
echo                                            Gdrive File Handle                       
echo                   _______________________________________________________________
echo                  ^|Before you use this, you must sign in to gdrive                ^|
echo                  ^|[32m      [0] Sign in                                              [0m^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|[32m      [1] Download a file                                      [0m^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|[32m      [2] Upload a file                                        [0m^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|[32m      [3] Detele a file                                        [0m^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|[36m      [a] Go back                 [b] Quit                     [0m^|
echo                  ^|                                                               ^|
echo                  ^|_______________________________________________________________^|
echo.
echo.
echo.
echo [1mEnter choice [0/1/2/3/a/b][0m
set /p choice="Choice: "
echo.
if /I "[%choice%]"=="[0]" goto :gsi
if /I "[%choice%]"=="[1]" goto :gdfile
if /I "[%choice%]"=="[2]" goto :gufile
if /I "[%choice%]"=="[3]" goto :gdelfile
if /I "[%choice%]"=="[a]" goto :Asur_MENU
echo.
if /I "[%choice%]"=="[b]" goto :EOF
goto :Asur_MENU

:gsi
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|                     Sign in to Gdrive                      ^|
echo                   ^|____________________________________________________________^|
gdrive list
echo Now you are signed to authorize your gdrive. Now you can upload, downlaod, delete any file by that.
pause
goto :gd

:gdfile
cls
mode con cols=115 lines=32
echo                              ____________________________________________________________
echo                            ^|                                                            ^|
echo                            ^|                 Gdrive - Download a file                   ^|
echo                            ^|____________________________________________________________^|
echo.
gdrive list
echo.
echo "Copy the id of a file, which wanted to download & paste below"
set /p gdf="Enter file id:"
gdrive download %gdf% --path "%UserProfile%/downloads" --force
echo.
echo "Your file downloaded. If you get any error, follow code & solve your problem."
echo __________________________________________________________________________________________________
echo 1 - Download another one.
echo 2 - Go Back
echo 3 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3][0m
set /p ch="Choice:"
if /I "[%ch%]"=="[1]" goto :gdfile
if /I "[%ch%]"=="[2]" goto :gd
echo.
if /I "[%ch%]"=="[3]" goto :EOF

:gufile
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|                  Gdrive - Upload a file                    ^|
echo                   ^|____________________________________________________________^|
echo.
echo Select the file which you want to upload
    set cmd=Add-Type -AssemblyName System.Windows.Forms;$f=new-object                 Windows.Forms.OpenFileDialog;$f.InitialDirectory=        [environment]::GetFolderPath('Desktop');$f.Filter='All Files(*.*)^|*.*';$f.Multiselect=$true;[void]$f.ShowDialog();if($f.Multiselect)        {$f.FileNames}else{$f.FileName}
    set pwshcmd=powershell -noprofile -command "&{%cmd%}"
    for /f "tokens=* delims=" %%I in ('%pwshcmd%') do call :sum "%%I" ret
    :sum [mud] [ret]
    echo "%~1"
    set FileName=%FileName% "%~1"
    set ret=%FileName%

gdrive upload %ret%
echo.
echo "Your file uploaded. If you get any error, follow code & solve your problem."
echo __________________________________________________________________________________________________
echo 1 - Upload another one.
echo 2 - Go Back
echo 3 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3][0m
set /p ch="Choice:"
if /I "[%ch%]"=="[1]" goto :gufile
if /I "[%ch%]"=="[2]" goto :gd
echo.
if /I "[%ch%]"=="[3]" goto :EOF

:gdelfile
cls
mode con cols=115 lines=32
echo                              ____________________________________________________________
echo                            ^|                                                            ^|
echo                            ^|                  Gdrive - Delete a file                    ^|
echo                            ^|____________________________________________________________^|
echo.
gdrive list
echo.
echo "Copy the id of a file, which wanted to delete & paste below"
set /p gdf="Enter file id:"
gdrive delete %gdf%
echo.
echo " Your file deleted. If you get any error, follow code & solve your problem."
echo __________________________________________________________________________________________________
echo 1 - Delete another one.
echo 2 - Go Back
echo 3 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3][0m
set /p ch="Choice:"
if /I "[%ch%]"=="[1]" goto :gdelfile
if /I "[%ch%]"=="[2]" goto :gd
echo.
if /I "[%ch%]"=="[3]" goto :EOF

:spotd
cls
mode con cols=115 lines=40
echo                                          Spotify Downlaoder                     
echo                   _______________________________________________________________
echo [32m "Enter url as spotify tracks/albums/playlists/artists url." [0m
set /p spt="Enter url here:"
set /p spe="Enter file format (mp3/flac) :"
spotdl %spt% --output-format %spe% -o "%UserProfile%/downloads"
echo " Your song downloaded successfully"
del "%UserProfile%/downloads/.spotdl-cache"
echo " If you get any error, follow code & solve your problem."
echo __________________________________________________________________________________________________
echo 1 - Download another one.
echo 2 - Go Back
echo 3 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3][0m
set /p ch="Choice:"
if /I "[%ch%]"=="[1]" goto :spotd
if /I "[%ch%]"=="[2]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[3]" goto :EOF

:upyt
cls
mode con cols=115 lines=32
echo                              ____________________________________________________________
echo                            ^|                                                            ^|
echo                            ^|                            Update                          ^|
echo                            ^|____________________________________________________________^|
yt-dlp --write-sub --youtube-skip-dash-manifest --no-wait-for-video --progress --console-title -U --progress
d-fi -U
echo __________________________________________________________________________________________________
echo 1 - Update again
echo 2 - Go Back
echo 3 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2/3][0m
set /p ch="Choice:"
if /I "[%ch%]"=="[1]" goto :upyt
if /I "[%ch%]"=="[2]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[3]" goto :EOF

:sp
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|                         Requirments                        ^|
echo                   ^|____________________________________________________________^|
echo.
echo !!!Setup  !!!
echo # Reuirments
echo python ffmpeg yt-dlp --write-sub aria2c youtube-dl spot-dl
echo You must manually install python and spotdl in order to use spotify downloader.
pause.
echo __________________________________________________________________________________________________
echo 1 - Go Back
echo 2 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2][0m
set /p ch="Choice:"
if /I "[%ch%]"=="[1]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[2]" goto :EOF

:rs
cls
mode con cols=115 lines=40
echo                    ____________________________________________________________
echo                   ^|                                                            ^|
echo                   ^|                           Read It                          ^|
echo                   ^|____________________________________________________________^|
echo.
echo ## Legal Notice
echo Educational purposes only. Downloading DRM'ed materials may violate their Terms of Service.
echo If you enjoyed using the script, a star or a follow will be highly appreciated! 😎
echo (Spotify Downloader)In some countries , this one isn't work . When you face it,use a vpn software.
echo ## For more help refer below link
echo https://github.com/Asur2-5356202/AsurDownloader/wiki
pause.
echo __________________________________________________________________________________________________
echo 1 - Go Back
echo 2 - exit
echo __________________________________________________________________________________________________
echo.
echo [1mEnter choice [1/2][0m
set /p ch="Choice:"
if /I "[%ch%]"=="[1]" goto :Asur_MENU
echo.
if /I "[%ch%]"=="[2]" goto :EOF


:dfi
cls
mode con cols=115 lines=40
echo                                            Deezer Downloader                       
echo                   _______________________________________________________________
echo                  ^|Before you use this, you must enter your arl                   ^|
echo                  ^|[32m      [0] arl                                                  [0m^|
echo                  ^|[32m                                                               [0m^|
echo                  ^|[32m      [1] Download a song                                      [0m^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|[36m      [a] Go back                 [b] Quit                     [0m^|
echo                  ^|                                                               ^|
echo                  ^|_______________________________________________________________^|
echo.
echo.
echo.
echo [1mEnter choice [0/1/a/b][0m
set /p choice="Choice: "
echo.
if /I "[%choice%]"=="[0]" goto :darl
if /I "[%choice%]"=="[1]" goto :dfid
if /I "[%choice%]"=="[a]" goto :Asur_MENU
echo.
if /I "[%choice%]"=="[b]" goto :EOF
goto :Asur_MENU

:darl
cls
mode con cols=115 lines=40
echo " Didn't now about deezer arl? Refer below link"
echo https://github.com/Asur2-5356202/AsurDownloader/wiki
set /p arl="Enter your deezer-arl here: "
d-fi -a %arl%
pause.
goto :dfi

:dfid
cls
mode con cols=115 lines=40
d-fi
pause.
goto :dfi

