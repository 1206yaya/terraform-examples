
# -backend-config: バックエンド設定を外部ファイル（dev.s3.tfbackend）から読み込む
initdev:
	terraform init -backend-config="dev.s3.tfbackend" -migrate-state

plandev:
	terraform plan -out="dev_plan"

applydev:
	terraform apply dev_plan

initprod:
	terraform init -backend-config="prod.s3.tfbackend" -migrate-state

planprod:
	terraform plan -out="prod_plan"

applyprod:
	terraform apply prod_plan

# コマンドからも設定できる
init:
	terraform init -backend-config=region=eu-west-1 -migrate-state


destroy:
	terraform destroy -auto-approve