# terraform-examples

To initialize backend run
```
terraform init
```

You can optionally provide the name of the AWS profile used to store the
state file in S3 and (optionally) write the state locks in DynamoDB:
```
terraform init -backend-config="profile=<profile_name>"
```
