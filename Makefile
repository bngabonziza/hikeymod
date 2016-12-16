#obj-m += hello-1.o
#obj-m += hello-2.o
#obj-m += hello-3.o
#obj-m += hello-4.o
#obj-m += hello-5.o
#obj-m += startstop.o
#startstop-objs := start.o stop.o
#obj-m += chardev.o
#obj-m += procfs1.o
#obj-m += procfs2.o
#obj-m += procfs3.o
#obj-m += procfs4.o
#obj-m += syscall.o
#obj-m += sleep.o
#obj-m += sched.o
#obj-m += intrpt.o

ARCH=arm64
COMPILER=/media/bn/backup/hikey_debian_intros/toolchains/aarch64/bin/aarch64-linux-gnu-
obj-m += hello-2.o
KERNELDIR := /media/bn/backup/hikey_debian_intros/linux/
PWD := $(shell pwd)

all:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) ARCH=$(ARCH) CROSS_COMPILE=$(COMPILER) modules

clean:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) ARCH=$(ARCH) clean
