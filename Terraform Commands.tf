1. terraform --version   - To verify the terraform version 
2. tfswitch  - To switch version from one version to another version 
3. terraform init - initilize the working directory and download the plugins from remote server  
4. terraform validate - validate the configuration files
5. terraform plan - it shows what resources are being to create 
6. aws config - configure aws account
7. terraform apply  - apply the planned changes 
8. terraform apply -auto-approve   - it won't ask user confirmation for configurations
9. export TF_VAR_vpcname=Myvpc   - To setup Env variable linux , if it windows (set - X) 
10. terraform import - 
11. terraform workspace list   - to show the terraform workspaces information
12. terraform workspace new workspace name - create new workspace 
13. terraform workspace select workspacename - switch workspace 
14. terraform workspace delete workspacename - delete workspace 
15. terraform state list - show list of resources avalilable 
16. terraform state pull - pull the configurations from remote 
17. terraform state rm resource name - delete resource from state file 
18. TF_LOG  - enable detailed log 
19. 