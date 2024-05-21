#! /bin/bash

# cd /path/to/this/StarParse/starparse-client/build/
/usr/lib/jvm/java-17-openjdk/bin/java --module-path /usr/lib/jvm/java-17-openjdk/lib/javafx.base.jar:/usr/lib/jvm/java-17-openjdk/lib/javafx.controls.jar:/usr/lib/jvm/java-17-openjdk/lib/javafx.fxml.jar:/usr/lib/jvm/java-17-openjdk/lib/javafx.graphics.jar:/usr/lib/jvm/java-17-openjdk/lib/javafx.media.jar --add-modules ALL-MODULE-PATH -jar starparse-client-1.0.jar >/dev/null 2>&1 & disown
