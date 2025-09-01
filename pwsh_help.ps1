#if you want to check any services you can get help 
Get-Help *service*
Get-Help Get-Service

#Example 1: Get all services on the computer
Get-Service

#Example 2: Get services that begin with a search string
Get-Service "wmi*"

# Example 3: Display services that include a search string
Get-Service -DisplayName "*network*"

# Example 4: Get services that begin with a search string and an exclusion
Get-Service -Name "win*" -Exclude "WinRM"

# Example 5: Display services that are currently active
Get-Service | Where-Object {$_.Status -eq "Running"}

# Example 6: List the services on the computer that have dependent services
Get-Service | Where-Object {$_.DependentServices} |
    Format-List -Property Name, DependentServices, @{
        Label="NoOfDependentServices"
        Expression={$_.DependentServices.Count}
    }


# Example 7: Sort services by property value
Get-Service "s*" | Sort-Object Status

# Example 8: Get the dependent services of a service
Get-Service "WinRM" -RequiredServices

# Example 9: Get a service through the pipeline operator
"WinRM" | Get-Service

get-help *user*
get-help Get-LocalUser

# Example 1: Get an account by using its name
Get-LocalUser -Name "AdminContoso02"

# Example 2: Get an account that is connected to a Microsoft account
Get-LocalUser -Name "MicrosoftAccount\username@Outlook.com"

# Example 3: Get an account that has the specified SID
Get-LocalUser -SID S-1-5-21-9526073513-1762370368-3942940353-500