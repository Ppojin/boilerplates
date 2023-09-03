#!/bin/bash
minikube delete || echo $?
./minikube-start.sh
