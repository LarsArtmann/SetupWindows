function ShowFileExtensions()
{
    ##http://superuser.com/questions/666891/script-to-set-hide-file-extensions
    Push-Location
    Set-Location HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
    Set-ItemProperty . HideFileExt "0"
    Pop-Location
    Stop-Process -processName: Explorer -force # This will restart the Explorer service to make this work.
}

function crypto()
{
	##WARNING: Your Bitlocker PIN needs to be a 6-20 chars long string only containing numbers
	$SecureString = ConvertTo-SecureString "YOUR_BITLOCKER_PASSWORD" -AsPlainText -Force
	Enable-BitLocker -MountPoint "C:" -EncryptionMethod XtsAes256 -UsedSpaceOnly -Pin $SecureString -TPMandPinProtector
}

function Install()
{
	choco install spotify -y
	choco install anydesk.install -y
	choco install jetbrainstoolbox -y
	choco install discord -y
	choco install git -y
	choco install notepadplusplus.install -y
	choco install nodejs.install -y
	choco install googlechrome -y
	choco install chrome-remote-desktop-chrome -y
	choco install keepass -y
	choco install google-drive-file-stream -y
	##choco install gcloudsdk -y
	choco install gradle -y
	choco install signal -y
	choco install signalbackup-tools -y
	choco install 7zip -y
	choco install openaudible -y
	choco install kotlinc -y
	choco install obs-studio -y
	choco install obs-virtualcam -y
	choco install tor-browser -y
	choco install multimc -y
	choco install adoptopenjdkjre -y
	choco install liberica17jre -y 
	choco install dotnet -y
	choco install dotnet-sdk -y
	choco install dotnetcore-sdk -y
	choco install azure-cli -y
	choco install dotnetcore-aspnetruntime -y
	choco install duplicati -y
	##clickup
	##notion

	#Google Cloud SDK
	(New-Object Net.WebClient).DownloadFile("https://dl.google.com/dl/cloudsdk/channels/rapid/GoogleCloudSDKInstaller.exe", "$env:Temp\GoogleCloudSDKInstaller.exe")
	& $env:Temp\GoogleCloudSDKInstaller.exe

	npm install -g firebase-tools -y
	npm install -g node-gyp -y
	npm install -g gulp-cli -y

}

function Git()
{
	git config --global user.name "Lars Artman"
	git config --global user.email "git@lars.software"
}


function Init()
{
	gcloud init
	firebase login
}

Install
Git
Init