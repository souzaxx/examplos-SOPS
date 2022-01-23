# Exemplo com terraform!

Primeiro, coloque sua chave PGP em .sops.yaml

Execute:

``` bash
sops -e -i demo-secret.enc.json
terraform init
terraform plan
```