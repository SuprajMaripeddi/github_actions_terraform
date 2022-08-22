ARG JDK_VERSION=12
FROM openjdk
ARG SERVICE_PORT="8080"
ENV WORKDIR=/workspaces/tlx-ui
RUN echo "supraj"
RUN yum -y install https://packages.endpointdev.com/rhel/7/os/x86_64/endpoint-repo-1.9-1.x86_64.rpm \
  && sed -i 's/endpoint.com/endpointdev.com/g' /etc/yum.repos.d/endpoint.repo
RUN yum install git python3 jq -y && pip3 install awscli && git --version && java -version && python3 -V && aws --version
RUN curl -sL -o nodejs_repo_14.sh https://rpm.nodesource.com/setup_14.x && bash ./nodejs_repo_14.sh
RUN yum install -y nodejs && node --version
RUN npm install -g semantic-release @semantic-release/changelog @semantic-release/commit-analyzer @semantic-release/exec semantic-release/git semantic-release/release-notes-generator
RUN curl -sL https://dl.yarnpkg.com/rpm/yarn.repo -o /etc/yum.repos.d/yarn.repo
RUN yum install -y yarn wget gtk2-devel gtk3-devel libnotify-devel GConf2 nss libXScrnSaver alsa-lib
#RUN wget http://vault.centos.org/6.2/os/x86_64/Packages/xorg-x11-server-Xvfb-1.10.4-6.el6.x86_64.rpm && yum -y localinstall xorg-x11-server-Xvfb-1.10.4-6.el6.x86_64.rpm
#RUN yum -y update && npm config -g set user $(whoami) && npm config set timeout 6000000 && npm install -g "cypress@9.7.0"   && cypress verify && cypress version && ls -la /root   && chmod 755 /root  && node -p 'module.paths' && echo  " node version:    $(node -v) \n"     "npm version:     $(npm -v) \n" 
CMD tail -f /dev/null
