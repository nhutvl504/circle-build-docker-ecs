FROM microsoft/dotnet:latest

RUN apt-get update
RUN apt-get install -y nginx
RUN dotnet --version
