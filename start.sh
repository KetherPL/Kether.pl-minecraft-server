#!/bin/bash
 BINDIR=$(dirname "$(readlink -fn "$0")")
 cd "$BINDIR"
/lib/jvm/java-24-jdk/bin/java -XX:-UseAdaptiveSizePolicy -Xmn128M -XX:+UseNUMA -XX:MaxTenuringThreshold=15 -XX:MaxGCPauseMillis=30 -XX:GCPauseIntervalMillis=150 -XX:-UseGCOverheadLimit -XX:SurvivorRatio=8 -XX:TargetSurvivorRatio=90 -XX:MaxTenuringThreshold=15 -Dfml.ignorePatchDiscrepancies=true -Dfml.ignoreInvalidMinecraftCertificates=true -XX:+UseCompressedOops -XX:+OptimizeStringConcat -XX:ReservedCodeCacheSize=2048m -XX:+UseCodeCacheFlushing -XX:SoftRefLRUPolicyMSPerMB=10000 -XX:ParallelGCThreads=4 -DIReallyKnowWhatIAmDoingISwear -jar minecraft_server.jar 
#--forceUpgrade
