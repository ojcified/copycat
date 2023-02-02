From ubuntu
RUN useradd -ms /bin/bash copycat
WORKDIR /home/copycat/
ADD copycat.sh ./
RUN chown copycat:copycat copycat.sh
RUN chmod +x ./copycat.sh
ENTRYPOINT ./copycat.sh
