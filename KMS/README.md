# AWS KMS como chave

``` bash
aws kms create-key
# Copie o ARN da sua chave recem criada!
sops -i -e --kms <ARN> application-a.yaml
# Adicione a chave GPG como uma forma de backup
sops -r -i --add-pgp <Finger-print>
sops -d application-a.yaml # Para verificar o valor do arquivo
sops -d --extract '["CLIENT_TOKEN"] application-a.yaml # Para extrair apenas um campo do arquivo
aws kms schedule-key-deletion --key-id <ARN> --pending-window-in-days 7 # Remova a chave do KMS
```
