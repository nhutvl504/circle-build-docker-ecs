FROM microsoft/dotnet:latest

RUN cd ~
RUN ls -lsa
RUN mkdir project && cd project
RUN git clone https://github.com/nhutvl504/eShopOnWeb.git
RUN cd eShopOnWeb/src/Web/
RUN ls -lsa
RUN dotnet restore 
RUN dotnet publish --configuration Release --output bin
