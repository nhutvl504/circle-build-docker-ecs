FROM microsoft/dotnet:latest

WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

RUN cd /eShopOnWeb/src/Web/ && dotnet restore

# Copy everything else and build
COPY eShopOnWeb/src/ ./
RUN dotnet publish -c Release -o out
