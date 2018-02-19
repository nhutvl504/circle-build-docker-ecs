FROM microsoft/dotnet:latest

RUN apt-get update
RUN apt-get install -y nginx
RUN dotnet --version

RUN ls -lsa
RUN git clone https://github.com/nhutvl504/eShopOnWeb.git
RUN cd eShopOnWeb/src/Web/
RUN ls -lsa
RUN dotnet restore 
RUN dotnet publish --configuration Release --output bin
