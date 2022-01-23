# Exemplo do arquivo .sops.yaml

campo `encrypted_regex` procura por keys dentro do arquivo e irá encriptar apenas os valores que dão
match com a key no regex

``` bash
# Coloque sua finger print dentro do campo pgp do .sops.yaml
sops -e -i values.yaml
cat values.yaml # Verifique que apenas alguns campos foram encriptados!
```