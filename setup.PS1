pip install spleeter
Install-Module -Name 7Zip4Powershell -Force
wget https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-full-shared.7z -O ~/Documents/ffmpeg.7z
$source = Convert-Path ~/Documents/ffmpeg.7z
$dest = Convert-Path ~/Documents/ex_ffmpeg
Expand-7Zip -ArchiveFileName $source -TargetPath $dest
rm ~/Documents/ffmpeg.7z
$ffmpegpath = ";" 
$ffmpegpath += Convert-Path ~/Documents/ex_ffmpeg/ffmpeg-4.3.1-2020-11-19-full_build-shared/bin
$oldSystemPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine")
$oldSystemPath += $ffmpegPath
[System.Environment]::SetEnvironmentVariable("Path", $oldSystemPath, "Machine")
