#!/usr/bin/env sh
dotnet --version
cd ./eShopOnWeb/src/Web
dotnet dotnet restore
dotnet publish --configuration Release --output bin
echo done
