#
# Copyright (c) 2006-2010 Trusted Logic S.A.
# All Rights Reserved.
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; either version 2 of
# the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston,
# MA 02111-1307 USA
#

ifeq ($(CONFIG_TF_DRIVER_DEBUG_SUPPORT),y)
	EXTRA_CFLAGS += -O0 -DDEBUG -D_DEBUG
else
	EXTRA_CFLAGS += -DNDEBUG
endif

EXTRA_CFLAGS += -DLINUX
EXTRA_CFLAGS += -Wundef
EXTRA_CFLAGS += -Wno-unused-parameter -Wsign-compare -Wstrict-prototypes -fno-strict-aliasing
EXTRA_CFLAGS += -DSMODULE_SMC_OMAP3XXX_POWER_MANAGEMENT
EXTRA_CFLAGS += -DCOMPILE_AS_LINUX_MODULE

ifeq ($(CONFIG_DYNAMIC_SDP_STORAGE_ALLOC),y)
	EXTRA_CFLAGS += -DSMC_EARLY_INIT
endif
ifeq ($(CONFIG_SMC_KERNEL_CRYPTO),y)
	EXTRA_CFLAGS += -DSMC_CRYPTO_KERNEL
endif

ifdef S_VERSION_BUILD
EXTRA_CFLAGS += -DS_VERSION_BUILD=$(S_VERSION_BUILD)
endif

smc_driver-objs += scxlnx_util.o
smc_driver-objs += scxlnx_conn.o
smc_driver-objs += scxlnx_device.o
smc_driver-objs += scxlnx_sm_comm.o
smc_driver-objs += scx_public_crypto.o
smc_driver-objs += scx_public_crypto_Digest.o
smc_driver-objs += scx_public_crypto_AES.o
smc_driver-objs += scx_public_crypto_DES.o
smc_driver-objs += scx_public_dma.o
smc_driver-objs += bridge_pub2sec.o

obj-$(CONFIG_SECURITY_MIDDLEWARE_COMPONENT) += smc_driver.o

