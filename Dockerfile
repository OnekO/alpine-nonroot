FROM alpine:latest

ARG USER=oneko
ENV HOME /home/$USER
RUN adduser -D $USER
USER $USER
WORKDIR $HOME

CMD echo "Running with user $(whoami)"
