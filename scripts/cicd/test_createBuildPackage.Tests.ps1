param ( 
        [ValidateNotNullOrEmpty()]
        [string]$installCFGJsonFilePath 
      ) 

BeforeAll  {
    # This will bring the function from the main file back to scope.
        
        . $PSScriptRoot\getSupportedOS.ps1
    }

Describe 'createBuildPackage' {
   
    It 'check folder structure' {


        $supportedOs.Count | Should -Be "4"

    }

}