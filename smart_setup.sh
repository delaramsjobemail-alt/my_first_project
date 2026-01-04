#!/bin/bash
echo "Enter project name:"
read PROJ
if [ -d "$PROJ" ]; then
    echo "Error: Directory $PROJ already exists!"
else
    mkdir $PROJ
    cd $PROJ
    mkdir web api db
    touch web/index.html api/app.js db/schema.sql
    echo "Success! Structure created inside $PROJ."
    tree
fi
