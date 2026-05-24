#!/bin/bash
 BINDIR=$(dirname "$(readlink -fn "$0")")
 cd "$BINDIR"
screen -d -m -S mc jdk-25.0.3_9-jre/bin/java -Dfml.ignorePatchDiscrepancies=true -Dfml.ignoreInvalidMinecraftCertificates=true -DIReallyKnowWhatIAmDoingISwear -jar minecraft_server.jar 
#--forceUpgrade
