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
Você pode alterar o ./run.sh de forma que sejam executados somente o servidor nodejs e o nginx para que seja possível visualizar a pagina de espera. A pagina de espera é exibida para o usuário enquanto o banco MySQL não estiver ativo. Quando o MySQL subir automaticamente a pagina atualizará e carregará a lista de cursos pedidos no desafio.
