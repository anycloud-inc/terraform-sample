# terraform-sample

1. GCPから権限のあるサービスアカウントのアカウントキーを取得して、フォルダ内に配置
2. main.tf内でインスタンスを立ち上げるプロジェクト名やアカウントキーのパス、立ち上げるインスタンス名などを設定
3. ```cp terraform/sample.tfvars terraform/prod.tfvars```
4. prod.tfvars内でDBユーザー名、パスワードを環境変数として設定
5. ```terraform init```
6. ```terraform plan -var-file=prod.tfvars -out=tfplan```
7. ```terraform apply "tfplan"```