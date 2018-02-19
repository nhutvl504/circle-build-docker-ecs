#!/usr/bin/env bash
dotnet --version
cd ./eShopOnWeb/src/Web
dotnet dotnet restore
dotnet publish --configuration Release --output bin
echo done
