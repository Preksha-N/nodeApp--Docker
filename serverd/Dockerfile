FROM centos:7
RUN yum -y install epel-release
RUN yum -y update
RUN yum -y install git
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash\
&& . ~/.nvm/nvm.sh \
&& nvm install v16.0.0 \
&& nvm alias default v16.0.0
ENV NVM_DIR="/root/.nvm"
ENV NODE_VERSION="v16.0.0"
ENV PATH="$NVM_DIR/versions/node/$NODE_VERSION/bin:$PATH"
RUN git clone https://github.com/maheshgradious/nodejs_server
WORKDIR /nodejs_server
COPY ./app.js ./app.js
RUN npm install
CMD ["npm", "run", "start"]

