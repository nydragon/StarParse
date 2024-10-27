#! /bin/bash

cd "$(dirname "$0")"
/usr/lib/jvm/java-17-openjdk/bin/java -jar starparse-client.jar >/dev/null 2>&1 & disown
