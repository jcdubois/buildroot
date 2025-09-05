################################################################################
# sockperf
################################################################################

SOCKPERF_VERSION = 3.10
SOCKPERF_SITE = https://github.com/Mellanox/sockperf/archive/refs/tags
SOCKPERF_SOURCE = $(SOCKPERF_VERSION).tar.gz
SOCKPERF_LICENSE = BSD-3-Clause
SOCKPERF_LICENSE_FILES = LICENSE

# sockperf uses autogen.sh to generate configure
define SOCKPERF_RUN_AUTOGEN
    cd $(@D) && ./autogen.sh
endef
SOCKPERF_PRE_CONFIGURE_HOOKS += SOCKPERF_RUN_AUTOGEN

$(eval $(autotools-package))
