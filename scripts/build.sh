#!/bin/bash
# Ejecutar mvn clean install una sola vez
echo "Ejecutando mvn clean install..."
mvn clean install
# Compilar SCSS a CSS
echo "Compilando SCSS a CSS..."
sass ./src/main/resources/static/scss/style.scss ./src/main/resources/static/css/style.css
# Comprobar si la carpeta 'scss' ya fue eliminada antes de continuar
if [ -d "./target/classes/static/scss" ]; then
    echo "Eliminando la carpeta scss dentro de target..."
    rm -rf ./target/classes/static/scss
else
    echo "La carpeta scss ya fue eliminada o no existe en target."
fi



