#!/bin/sh


POSTGRES_DB=opennsa
POSTGRES_USER=opennsa
POSTGRES_PASSWORD=$(openssl rand -base64 18)

SCHEMA_FILE=$PWD/datafiles/schema.sql

OPENNSA_CONF_LOC=$PWD/config
OPENNSA_TAC_LOC=$PWD/opennsa-docker.tac


