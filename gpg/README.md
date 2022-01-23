# GPG como chave

``` Bash
gpg --full-gen-key 
gpg -k # Copie o finger print da sua chave
gpg -e -r <Finger print> application-a.yaml
cat application-a.yaml.gpg # Arquivo enteiramente encriptografado
# Já com o SOPS
sops -e -p <Finger print> application-a.yaml > application-a.enc.yaml
sops -e -p <Finger print> -i application-a.yaml # -i faz com que o arquivo seja sobrescrito
sops -d -p <Finger print> application-a.enc.yaml
```
