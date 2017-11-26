FROM tomcat

RUN apt-get update && apt-get -y install git
RUN adduser developer --ingroup adm --disabled-password
RUN adduser developer sudo && sh -c "echo 'username ALL=NOPASSWD: ALL' >> /etc/sudoers"
RUN git clone https://github.com/Linuxbrew/brew.git /usr/local/linuxbrew
RUN chmod 777 -R /usr/local/linuxbrew/
ENV PATH="/usr/local/linuxbrew/bin:$PATH"
ENV MANPATH="$(brew --prefix)/share/man:$MANPATH"
ENV INFOPATH="$(brew --prefix)/share/info:$INFOPATH"
#RUN su developer /usr/local/linuxbrew/bin/brew
RUN apt-get -y install gcc
RUN su developer /usr/local/linuxbrew/bin/brew install npm
RUN npm install gitbook -g


CMD /usr/local/tomcat/bin/startup.sh && tail -f /usr/local/tomcat/logs/catalina.out