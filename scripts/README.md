# scripts for manual deploys as an alternative if github actions is having issues

## Create new aws iam user
./create_user.sh username  

Edit newly created users/username.yaml file to add groups.  
Add new non-existing groups in the groups.yaml file.  
Then deploy updates using the below steps.  

### Deployment of any groups or user changes.
./deploy_user.sh username

### Deployment of only groups changes
./deploy_user.sh groups

### Destroy
./destroy.sh username
