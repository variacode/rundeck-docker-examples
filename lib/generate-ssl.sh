#!/usr/bin/env bash

## Adding ssl support ##################################
keytool -keystore etc/keystore \
        -alias rundeckssl \
        -genkey -keyalg RSA \
        -keypass adminadmin \
        -storepass adminadmin < docker-lib/keytool_input

cp etc/keystore etc/truststore
########################################################