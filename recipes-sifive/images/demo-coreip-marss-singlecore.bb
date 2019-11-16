DESCRIPTION = "SiFive RISC-V Core IP MARSS-RISCV Single Core Validation Image"

IMAGE_FEATURES = ""

IMAGE_INSTALL = "\
    packagegroup-core-boot \
    kernel-modules \
    kernel-devsrc \
    kernel-dev \
    ${CORE_IMAGE_EXTRA_INSTALL} \
    "

inherit core-image
