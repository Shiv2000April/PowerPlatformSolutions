# Authenticate to Target environment (UAT or PROD)
pac auth clear
pac auth create --environment https://orgc388d7c8.crm.dynamics.com/

# Pack the solution as MANAGED
pac solution pack `
  --folder ./Solutions/DeploymentSolution `
  --zipfile ./DeploymentSolution_managed.zip `
  --packagetype Managed

# Import the managed solution into the target environment
pac solution import `
  --path ./DeploymentSolution_managed.zip `
  --publishchanges
