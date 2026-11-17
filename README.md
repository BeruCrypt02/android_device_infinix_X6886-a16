# Infinix X6886

Device tree for the Infinix X6886 (HOT 60 Pro+) on LineageOS 23.0 and InfinityX.
The values here come from the stock XOS 16 dump for this device. The matching
vendor tree holds the proprietary blobs.

## Device

| | |
| --- | --- |
| Codename | x6886 |
| Model | Infinix X6886 (HOT 60 Pro+) |
| SoC | MediaTek MT6789 |
| Stock firmware | XOS 16 / 155SP15 |
| Build ID | BP2A.250605.031.A3 |
| Android | 16 (SDK 36) |
| Incremental | 301550078 |

Fingerprint: `Infinix/X6886-OP/Infinix-X6886:16/BP2A.250605.031.A3/301550078:user/release-keys`

## Partitions

A/B slots with virtual A/B and dynamic partitions. Super is 13083561984 bytes.
Its two groups, `main_a` and `main_b`, each cap at 13081464832 bytes.

Boot uses header version 4 and 4096 byte pages, with an `lz4_legacy` kernel.
`vendor_boot` carries the ramdisk and DTB and boots with
`bootopt=64S3,32N2,64N2 bootconfig`.

## Building

Put this tree at `device/infinix/x6886` and the proprietary tree at
`vendor/infinix/x6886` in a LineageOS 23.0 source tree, then:

    source build/envsetup.sh
    lunch lineage_X6886-userdebug
    mka bacon

`infinity_X6886-userdebug` is the InfinityX target when its vendor config is
present.

## Source split

`system`, `system_ext` and `product` come from the donor ROM. `vendor`, `odm` and
the `*_dlkm` partitions stay exactly as they are in the stock dump. Panel tuning
sits in `odm/etc/vconfig/display/`.

`vendorsetup.sh` applies the patches under `patches/` when you source the build
environment. To pull them back out, run
`vs_state=skip source build/envsetup.sh`.

## License

Apache-2.0 unless a file says otherwise.
