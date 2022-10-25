#a imagem que usaremos de base
FROM node
#informar o diretório padrão
WORKDIR / 
#variaveis de ambiente durante o build do Dockerfile
ARG PORT=3000
#variavel de ambiente da aplicação
ENV PORT=$PORT
#deixar a porta visivel
EXPOSE $PORT
#copiar os arquivos do terminal para a imagem que estamos criando
COPY ./ .
#comando em bash para pré inicializar a aplicação
RUN npm install
#executa o comando para iniciar a aplicação
ENTRYPOINT npm start
#fim
