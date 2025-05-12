# This script runs prepdocs.py without relying on a virtual environment

Write-Host 'Running "prepdocs.py" without virtual environment'

$pythonPath = "python"  # Use the system-wide Python installation

$cwd = (Get-Location)

Individual calls for each subfolder under data
$dataArg1 = "`"$cwd/data/2024-MDX/*`""
$argumentList1 = "./app/backend/prepdocs.py $dataArg1 --category 2024MDX --verbose"
Write-Host "Executing: $argumentList1"
Start-Process -FilePath $pythonPath -ArgumentList $argumentList1 -Wait -NoNewWindow

$dataArg2 = "`"$cwd/data/2024-RDX/*`""
$argumentList2 = "./app/backend/prepdocs.py $dataArg2 --category 2024RDX --verbose"
Write-Host "Executing: $argumentList2"
Start-Process -FilePath $pythonPath -ArgumentList $argumentList2 -Wait -NoNewWindow

$dataArg3 = "`"$cwd/data/2025-MDX/*`""
$argumentList3 = "./app/backend/prepdocs.py $dataArg3 --category 2025MDX --verbose"
Write-Host "Executing: $argumentList3"
Start-Process -FilePath $pythonPath -ArgumentList $argumentList3 -Wait -NoNewWindow

$dataArg4 = "`"$cwd/data/2025-RDX/*`""
$argumentList4 = "./app/backend/prepdocs.py $dataArg4 --category 2025RDX --verbose"  
Write-Host "Executing: $argumentList4"
Start-Process -FilePath $pythonPath -ArgumentList $argumentList4 -Wait -NoNewWindow

$dataArg5 = "`"$cwd/data/EV-Charging/*`""
$argumentList5 = "./app/backend/prepdocs.py $dataArg5 --category EV --verbose"
Write-Host "Executing: $argumentList5"
Start-Process -FilePath $pythonPath -ArgumentList $argumentList5 -Wait -NoNewWindow

$dataArg6 = "`"$cwd/data/faqs/*`""
$argumentList6 = "./app/backend/prepdocs.py $dataArg6 --category FAQ --verbose"
Write-Host "Executing: $argumentList6"
Start-Process -FilePath $pythonPath -ArgumentList $argumentList6 -Wait -NoNewWindow

# $dataArg7 = "`"$cwd/data/2024-ZDX/*`""
# $argumentList7 = "./app/backend/prepdocs.py $dataArg7 --category 2024ZDX --verbose"
# Write-Host "Executing: $argumentList7"
# Start-Process -FilePath $pythonPath -ArgumentList $argumentList7 -Wait -NoNewWindow