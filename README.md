Para gerar uma nova imagem é necessário rodar o comando (substituindo `<version>` pela versão do PHP especificada no Dockerfile)

```shell
docker build -t rafaelss/stargrid-php:<version> .
```

E para mandar a imagem para o repositório:

```shell
docker push rafaelss/stargrid-php:<version>
```
