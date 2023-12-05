﻿<#
 .Synopsis
  Checks if the default app management policy is enabled.

 .Description
  GET /policies/defaultAppManagementPolicy

 .Example
  Test-MtAppManagementPolicyEnabled
#>

Function Test-MtAppManagementPolicyEnabled {
  [CmdletBinding()]
  [OutputType([bool])]
  param()

  $result = Invoke-MgGraphRequest -Uri "https://graph.microsoft.com/beta/policies/defaultAppManagementPolicy"
  return $result.isEnabled -eq 'True'

}