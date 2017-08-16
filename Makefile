# top level makefile to build SITL for primary vehicle targets. 
# Useful for static analysis tools

all: sitl

sitl: TARGET=sitl
sitl: plane copter rover sub antennatracker hab

linux: TARGET=linux
linux: plane copter rover sub antennatracker hab

clean: TARGET=clean
clean: plane copter rover sub antennatracker hab

.PHONY: plane copter rover sub antennatracker hab

plane:
	$(MAKE) -C ArduPlane $(TARGET)

copter:
	$(MAKE) -C ArduCopter $(TARGET)

rover:
	$(MAKE) -C APMrover2 $(TARGET)

sub:
	$(MAKE) -C ArduSub $(TARGET)

antennatracker:
	$(MAKE) -C AntennaTracker $(TARGET)
	
hab:
	$(MAKE) -C ArduHAB $(TARGET)
