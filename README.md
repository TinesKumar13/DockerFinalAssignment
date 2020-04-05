# Learn Blockchains by Building One

[![Build Status](https://travis-ci.org/dvf/blockchain.svg?branch=master)](https://travis-ci.org/dvf/blockchain)

This is the source code for my post on [Building a Blockchain](https://medium.com/p/117428612f46). 

## Question 1

1. Clone the repository into your local drive
2. Change directory to DockerFinalAssignment
3. Enter Docker swarm mode
4. Build the image
5. Run the container
6. Create the service
```
$  git clone https://github.com/TinesKumar13/DockerFinalAssignment
$  cd DockerFinalAssignment
$  docker swarm init --advertise-addr $(hostname -i)
$  docker image build -t blockchain .
$  docker container run -d -p 80:5000 --name=blockchain blockchain
$  docker service create --name blockchain blockchain



``` 
## Question 2
1. We seem to have the errors on the testfile given.
2. Docker documentation when the Docker Engine runs in swarm mode, manager nodes implement the Raft Consensus Algorithm to manage the global cluster state. This is defined as to make sure all the manager nodes that are in charge of managing and scheduling tasks in cluster are storing the same consistent state. This means that in case of any failure, any other manager node can pick up the tasks and restore the services to a stable state.
3. Add the worker nodes with the join token obtained from docker swarm init --advertise-addr $(hostname -i)
4. Scale the service to 3 services.
5. Run the container.
6. Create the service.
7. Check the scaled services.


```
$  docker service scale blockchain=3
$  docker service ps blockchain




``` 
## Question 3
1. Error in testfile provided. 
2. We monitored the blockchain service performance using docker stats command
```
$  docker stats





``` 
## Question 4
1. We tweaked the pre-existing Dockerfile to get a base image with lesser size and used pip caching ( --no-cache-dir )
2. We monitored the blockchain service performance using docker stats command
3. We chnaged the pre-existing dockerfile with edit at FROM python:3.7.2-alpine3.8 and added the no cache piping before requirements.txt
4. The final image build was smaller (90.6mb) compared to the previous one (106mb)
```
$  vi Dockerfile
$  docker image build -t blockchain .





``` 
## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

