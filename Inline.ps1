Args:     -templateOutput '$(templateOutput)'
Script:

Param(
  [string]$templateOutput
)

$functionAppName = ($templateOutput | ConvertFrom-Json).functionAppName.value

Write-Output ("##vso[task.setvariable variable=functionAppName;]$functionAppName")
