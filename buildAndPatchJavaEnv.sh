#!/usr/bin/env bash
gradle clean
gradle build
tar -xf build/distributions/CICFlowMeter-4.0.tar -C build/tmp
sed -i "s/DEFAULT_JVM_OPTS='\"-Djava.library.path=..\/lib\/native\"'/DEFAULT_JVM_OPTS='\"-Djava.library.path=\$APP_HOME\/lib\/native\"'/g" build/tmp/CICFlowMeter-4.0/bin/CICFlowMeter
rm build/distributions/CICFlowMeter-4.0.tar
tar -cf build/distributions/CICFlowMeter-4.0-patched.tar -C build/tmp CICFlowMeter-4.0
