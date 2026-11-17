# x6886

Infinix HOT 60 Pro+ (MT6789). Stock here was XOS 16, 155SP15,
BP2A.250605.031.A3 on Android 16 / SDK 36; the board values in this tree came
from that dump. Builds are for Android 17 on LineageOS 24.0 and InfinityX.
Blobs live in the separate vendor tree.

Both mk files carry this fingerprint:
`Infinix/X6886-OP/Infinix-X6886:16/BP2A.250605.031.A3/301550078:user/release-keys`

A/B with virtual A/B and dynamic partitions. Super is 13083561984 bytes;
`main_a` and `main_b` cap at 13081464832 each. Boot is header v4, 4096 byte
pages, `lz4_legacy` kernel. Ramdisk and DTB are in `vendor_boot`, which boots
with `bootopt=64S3,32N2,64N2 bootconfig`.

To build, put this at `device/infinix/x6886` and the vendor tree at
`vendor/infinix/x6886` in a LineageOS 24.0 tree:

    source build/envsetup.sh
    lunch lineage_X6886-userdebug
    mka bacon

InfinityX uses `infinity_X6886-userdebug`, if its vendor config is there.

`system`, `system_ext` and `product` come from the donor ROM. `vendor`, `odm`
and the `*_dlkm` blobs stay stock, including the panel files in
`odm/etc/vconfig/display/`. `vendorsetup.sh` applies `patches/` when you source
the build env; to back them out, run `vs_state=skip source build/envsetup.sh`.

Apache-2.0 unless a file says otherwise.
