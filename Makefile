#!/usr/bin/make -f

SHELL := /bin/bash


image:
	docker build -t phlax/docker-in-docker context

hub-image:
	docker push phlax/docker-in-docker
