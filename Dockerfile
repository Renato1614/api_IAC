FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env
WORKDIR /app

# Copiar arquivos do projeto e restaurar dependências
COPY *.csproj ./
RUN dotnet restore

# Copiar todo o conteúdo do diretório atual para o diretório de trabalho
COPY . ./

# Publicar o aplicativo
RUN dotnet publish -c Release -o out

# Build da imagem final
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build-env /app/out .


# Expor a porta HTTPS
EXPOSE 443
EXPOSE 80

# Comando de entrada para iniciar o aplicativo
ENTRYPOINT ["dotnet", "api.dll"]
