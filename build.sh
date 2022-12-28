#!bash

docker build -t dev --build-arg USER=$USER .
docker run -it -d --name dev --hostname dev-container -v $HOME:/home/$USER dev
