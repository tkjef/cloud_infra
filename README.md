# Infrastructure

## IAM
### Create new user 
[job](https://github.com/ProScore-ai/infrastructure/actions/workflows/create_user.yaml)

### Deploy groups or user changes
[job](https://github.com/ProScore-ai/infrastructure/actions/workflows/deploy_user.yaml)

### Deploy only groups changes
[job](https://github.com/ProScore-ai/infrastructure/actions/workflows/deploy_user.yaml)
Run with username: groups

### Deploy policy updates
[job](https://github.com/ProScore-ai/infrastructure/actions/workflows/deploy_policy.yaml)

## RDS
### Deploy rds pg instance in <env>-<region>-pg naming convention: prod-uw2-pg
[job](https://github.com/ProScore-ai/infrastructure/actions/workflows/deploy_rds.yaml)

## Alarms
### Deploy any cloudwatch alarms, new or updates.
[job](https://github.com/ProScore-ai/infrastructure/actions/workflows/deploy_alarms.yaml)
