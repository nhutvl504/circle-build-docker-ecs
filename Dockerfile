FROM microsoft/dotnet:latest

WORKDIR /app

# Copy csproj and restore as distinct layers
COPY eShopOnWeb/src/ ./
RUN cd Web && dotnet restore
# Copy everything else and build
COPY eShopOnWeb/src/ ./
RUN cd Web && dotnet publish -c Release -o out
