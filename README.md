[![CircleCI](https://circleci.com/gh/asalfo/microservices-k8s/tree/master.svg?style=svg)](https://circleci.com/gh/asalfo/microservices-k8s/tree/master)

## Project Overview

In this project, we will  operationalize a Machine Learning Microservice API.
Given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls.

### Project Tasks

* Test project code using linting
* Deploy your containerized application using Docker and make a prediction
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Configure CircleCI.
---

## Files description
* app.py: application main file.
* requirements.txt: Descibes all dependencies required by the application.
* Dockerfile: contains all the commands that should be  called on the command line to assemble an image with   
  all dependencies needed for application.
* Makefile: Tasks build script using make utility.
* run_docker.sh : script (command -line step) for running docker container.
* upload_docker.sh: Shell script to upload docker image to registry
* run_kubernetes.sh : shell script for running a docker container in k8s with minikube and kubectl.
* model_data : data used to train the ML model_data
* .circleci/config.yml: circleci build configuration file.

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
