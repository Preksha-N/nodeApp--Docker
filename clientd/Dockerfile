FROM centos:7
RUN yum -y install epel-release
RUN yum -y update

RUN yum -y install git
RUN yum -y install nginx
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash \
&& . ~/.nvm/nvm.sh \
&& nvm install v16.0.0 \
&& nvm alias default v16.0.0

ENV NVM_DIR="/root/.nvm"
ENV NODE_VERSION="v16.0.0"

ENV PATH="$NVM_DIR/versions/node/$NODE_VERSION/bin:$PATH"
COPY ./default.conf /etc/nginx/conf.d/default.conf
RUN git clone https://github.com/maheshgradious/nodejs_client
WORKDIR /nodejs_client
RUN npm install
RUN npm run build
RUN cp -r ./build/ /usr/share/nginx/html/
ADD main.e1bfeb91.js /usr/share/nginx/html/build/static/js/main.e1bfeb91.js 

CMD ["nginx", "-g daemon off;"]

