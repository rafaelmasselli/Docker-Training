<h1>Mysql em sistema docker</h1>

#### Iniciando o projeto

```bash
docker compose up
```

#### Entrando no mysql

```bash
docker exec -it [id do container] bash
root@container_id:/# mysql -uroot -p
Enter password: RootPassword
```
