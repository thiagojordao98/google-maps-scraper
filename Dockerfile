# Imagem oficial do Puppeteer já com Chromium configurado
FROM ghcr.io/puppeteer/puppeteer:22.8.2

# Configura diretório de trabalho
WORKDIR /app

# Copia os arquivos do projeto
COPY . .

# Instala as dependências (usa o Chromium que já vem na imagem)
RUN npm install

# Expõe a porta da API
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
