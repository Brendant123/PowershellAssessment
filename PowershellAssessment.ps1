function Get-FirstRecurringChar{
    [CmdletBinding()]
    param (
        [Parameter()]
        [String]
        $inputString
    )
    $array = [System.Collections.ArrayList]::new()
    foreach ($char in $inputString.ToCharArray()){
        if ($char -in $array){
            return $char
        } else {
            [void]$array.Add($char)
        }
    }
}

$test = "abcdedcba"
Get-FirstRecurringChar -inputString $test