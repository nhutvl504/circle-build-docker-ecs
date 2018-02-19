FROM microsoft/dotnet:latest

WORKDIR /app

# Copy csproj and restore as distinct layers
COPY eShopOnWeb/src/Web/*.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY eShopOnWeb/src/Web/ ./
RUN dotnet publish -c Release -o out
