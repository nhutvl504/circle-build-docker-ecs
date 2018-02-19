FROM microsoft/dotnet:latest

RUN apt-get update
RUN apt-get install -y nginx
RUN dotnet --version

RUN ln -lsa
RUN cd eShopOnWeb/src/Web/
RUN ls -lsa
RUN dotnet restore 
RUN dotnet publish --configuration Release --output bin
