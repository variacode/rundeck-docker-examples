## Tutorial rundeck docker examples

Este es un ejemplo completo de rundeck en docker. Contiene los siguentes servicios:

* rundeck 
* base de datos mysq
* servicio storage para guardar logs (minio)

## Como iniciarlo

```bash
docker-compose build
docker-compose up -d

```


## Revisar logs

```bash
docker-compose logs

```

## Parar Servicio

```bash
docker-compose down

```

## URLs

* Rundeck: https://localhost:4447
* Minio: http://localhost:9000

