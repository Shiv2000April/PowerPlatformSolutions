# Authenticate to Target environment (UAT or PROD)
pac auth create --url https://orgc388d7c8.crm.dynamics.com/

# OPTIONAL: Update the environment variable value here if needed
# You can use PowerShell to search/replace inside the EnvironmentVariableValues.xml
# or simply edit it manually before this script runs.

# Pack the solution as MANAGED
pac solution pack `
  --folder ./Solutions/DeploymentSolution `
  --zipfile ./DeploymentSolution_managed.zip `
  --packagetype Managed

# Import the managed solution into the target environment
pac solution import `
  --path ./DeploymentSolution_managed.zip `
  --publishchanges
