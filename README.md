# desafio1fca
Primeiro Desafio do Programa Full Cycle de Aceleração: Edição Docker
# Instruções de uso:
* git clone https://github.com/alvieirajr/desafio1fca.git
* cd desafio1fca
* chmod +x ./run.sh 
* ./run.sh
* Abrir [localhost:8080](http://localhost:8080)
# Considerações:
É disponibilizado também o script ./stop.sh que para automaticamente todos os containers levantados pelo ./run.sh. Para utilizar basta:
* chmod +x ./stop.sh 
* ./stop.sh
# Recurso de espera:
Você pode alterar o ./run.sh de forma que sejam executados somente o servidor nodejs e o nginx para que seja possível visualizar a pagina customizada de espera por container. 

```
#docker run -d --network=$DOCKER_NET --name=$DOCKER_MYSQL_CONTAINER_NAME --hostname $MYSQL_HOST -e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD -e MYSQL_DATABASE=$MYSQL_DATABASE -e MYSQL_USER=$MYSQL_USER -e MYSQL_PASSWORD=$MYSQL_PASSWORD alvieirajr/desafio1fca-mysql
docker run -d --network=$DOCKER_NET --name=$DOCKER_NODEJS_CONTAINER_NAME --hostname $NODEJS_HOST -e MYSQL_PORT=$MYSQL_PORT -e NODEJS_PORT=$NODEJS_PORT -e MYSQL_HOST=$MYSQL_HOST -e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD -e MYSQL_DATABASE=$MYSQL_DATABASE -e MYSQL_USER=$MYSQL_USER -e MYSQL_PASSWORD=$MYSQL_PASSWORD alvieirajr/desafio1fca-nodejs
docker run -d --network=$DOCKER_NET --name=$DOCKER_NGINX_CONTAINER_NAME --hostname $NGINX_HOST -p 8080:80 -e NODEJS_HOST=$NODEJS_HOST -e NGINX_HOST=$NGINX_HOST -e NODEJS_PORT=$NODEJS_PORT alvieirajr/desafio1fca-nginx
```
A pagina de espera é exibida para o usuário enquanto o banco MySQL não estiver ativo. Quando o MySQL subir automaticamente a pagina atualizará e carregará a lista de cursos pedidos no desafio.

![image](https://user-images.githubusercontent.com/5341637/116031983-36ee5a80-a635-11eb-812f-a59691f750e5.png)
# Evidência:

![image](https://user-images.githubusercontent.com/5341637/116032952-eaa41a00-a636-11eb-8a31-970dcb053aad.png)
