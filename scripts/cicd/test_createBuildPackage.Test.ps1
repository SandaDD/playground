param ( [Parameter(Mandatory=$true)]
        [string]$installCFGJsonFilePath
      ) 

Describe 'createBuildPackage' {
    BeforeAll  {
        
        . $PSScriptRoot\getSupportedOS.ps1
    }
    It 'check folder structure' {


        $supportedOs.Count | Should Be "3"

    }

}