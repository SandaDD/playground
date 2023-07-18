param ( [Parameter(Mandatory=$true)]
        [string]$installCFGJsonFilePath
      ) 

BeforeAll  {
        
        . $PSScriptRoot\getSupportedOS.ps1
    }

Describe 'createBuildPackage' {
   
    It 'check folder structure' {


        $supportedOs.Count | Should -Be "3"

    }

}