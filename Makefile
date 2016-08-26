obj-m += rmsr.o

.PHONY: clean all

all: rmsr.ko

rmsr.ko: rmsr.c
	 make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) modules

clean:
	 make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) clean
