#!/usr/bin/env sh

set -e

M2_HOME="${HOME}/.m2"
M2_CACHE="`pwd`/maven"
[[ -d "${M2_CACHE}" && ! -d "${M2_HOME}" ]] && ln -s "${M2_CACHE}" "${M2_HOME}"

cd spring-petclinic-microservices

./mvnw clean test