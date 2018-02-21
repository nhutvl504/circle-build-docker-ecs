FROM microsoft/dotnet:latest
#Install nginx
RUN \
  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
chown -R www-data:www-data /var/lib/nginx
WORKDIR /app
RUN curl https://raw.githubusercontent.com/silinternational/ecs-deploy/master/ecs-deploy | tee -a /usr/bin/ecs-deploy
RUN chmod +x /usr/bin/ecs-deploy
# Copy csproj and restore as distinct layers
COPY eShopOnWeb/src/ ./
RUN cd Web && dotnet restore
# Copy everything else and build
COPY eShopOnWeb/src/ ./
RUN cd Web && dotnet publish -c Release -o out
