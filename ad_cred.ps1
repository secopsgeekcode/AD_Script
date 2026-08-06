cls

#Import the usernames and passwords from a CSV saved on your desktop
$loggedinuser = $env:username
$testcsv= Import-Csv -Path "C:\Users\rlwatson\Creds\combos.csv"
 
#Initialize the username and password field before running the test and loop through all values
foreach($test in $testcsv){
$users= $test.Username
$passwords= $test.Password
 
#Authentication Function
Function Test-ADAuthentication {
    param($username,$password)
    (new-object directoryservices.directoryentry "",$username,$password).psbase.name -ne $null    
 
                                 }
                                 
                                                                 
#Loop through the users in the list
foreach ($user in $users) {
 
#Loop through the passwords provided
    foreach($pwd in $passwords){} 
 
#For Each User and Password attempt to authenticate and show the result
 
Write-Host "$user authenticated" | Test-ADAuthentication $user $pwd
                               
 
}
}

pause

#Access Verify
