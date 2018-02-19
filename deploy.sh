#!/usr/bin/env bash

cd ./eShopOnWeb/src/Web
dotnet dotnet restore
dotnet publish --configuration Release --output bin
echo done
