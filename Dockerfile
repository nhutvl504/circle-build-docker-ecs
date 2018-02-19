FROM microsoft/dotnet:latest

WORKDIR /app
RUN curl https://raw.githubusercontent.com/silinternational/ecs-deploy/master/ecs-deploy | sudo tee -a /usr/bin/ecs-deploy
RUN sudo chmod +x /usr/bin/ecs-deploy
# Copy csproj and restore as distinct layers
COPY eShopOnWeb/src/ ./
RUN cd Web && dotnet restore
# Copy everything else and build
COPY eShopOnWeb/src/ ./
RUN cd Web && dotnet publish -c Release -o out
