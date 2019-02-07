# Get results of a folder, just output name and file sizes
# This use case is for me when I do the podcasts. I need to put the file size into the XML for client side displaying.

$boxName = $env:COMPUTERNAME
$searchPath = 'F:\backlog_tC_eps\*'
# Search path for all .avi files in and below target search folder.
$buildSearchStr = Get-ChildItem $($searchPath) -Recurse -Force -Include *.mp3 -ErrorAction SilentlyContinue
# This is an echo of direct outputted folder contents. Commented out since only for test
#$buildSearchStr

# Construct filtered output with only FileName and File Length outputting. 
$filterOutputSet = $buildSearchStr | Select name, length
$filterOutputSet

# I re-use previous scripts for various tasks. I find this helps me learn processes and coding in powershell, WAAAAY easier.