DESCRIPTION = "MARSS RISC-V Kernel-only Image"

IMAGE_FEATURES += ""

IMAGE_INSTALL = "\
    packagegroup-core-boot \
    kernel-modules \
    kernel-devsrc \
    kernel-dev \
    "

inherit core-image
