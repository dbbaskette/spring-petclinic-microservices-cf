#!/usr/bin/env sh

echo "Beginning build"

set -e

echo "Setting maven cache"

M2_HOME="${HOME}/.m2"
M2_CACHE="`pwd`/maven"
[[ -d "${M2_CACHE}" && ! -d "${M2_HOME}" ]] && ln -s "${M2_CACHE}" "${M2_HOME}"

echo "Building JARs"

cd spring-petclinic-microservices
./mvnw clean package -DskipTests=true
cd ..

echo "Saving artifacts"

cp spring-petclinic-microservices/*/target/*.jar artifacts/.