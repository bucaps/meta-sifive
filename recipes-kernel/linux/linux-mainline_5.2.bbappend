FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# Lock to one version of kernel
LINUX_VERSION = "5.2.9"
SRCREV = "v5.2.9"

# New WIC files adds new partition for FSBL thus we need to change rootfs
SRC_URI_append_freedom-u540 = " file://defconfig"

# TLB flush fixes
SRC_URI_append = " file://riscv-fix-flush_tlb_range-end-address-for-flush_tlb_page.patch \
                   file://v2-riscv-optimize-tlb-flush-path.patch \
                   file://fu540-cpufreq.patch \
                   file://fu540-l2-cache-enable.patch \
                   file://0001-arch-riscv-boot-dts-sifive-fu540-c000.dtsi-do-not-ex.patch \
                   file://0002-arch-riscv-.-hifive-unleashed-a00.dts-do-not-expose-.patch \
"
