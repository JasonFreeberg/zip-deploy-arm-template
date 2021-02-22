#!/bin/sh

az deployment group create --resource-group freebergDemo --template-file template.json --parameters @parameters.json
