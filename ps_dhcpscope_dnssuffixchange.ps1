# PowerShell script to change the DNS suffixes that match a certain pattern (clients.??.mydomain.com)
# to a new desired value and invoke a failover replication to also set the new DNS suffix to the partner server.

$dhcpsrv1 = "your dns server"
$dnsdomain = "the dns suffix which you want to set"

Import-Module DhcpServer
$scopes = Get-DhcpServerv4Scope -ComputerName $dhcpsrv1

foreach ($scope in $scopes) {
        $dhcpdnsoption = Get-DhcpServerv4OptionValue -ComputerName $dhcpsrv1 -ScopeId $scope.ScopeId -OptionId 15
        
        if ($dhcpdnsoption.Value -match "clients\...\.mydomain.com") {
            Write-Output "Setting Option 15 for Scope " + $scope.ScopeId.ToString() + " to " + $dnsdomain
            Set-DhcpServerv4OptionValue -ComputerName $dhcpsrv1 -ScopeId $scope.ScopeId -DnsDomain $dnsdomain
            Write-Output "Invoking Failover replication"
            Invoke-DhcpServerv4FailoverReplication -ComputerName $dhcpsrv1 -ScopeId $scope.ScopeId -Force
        }
}
