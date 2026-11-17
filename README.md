# Infinix X6886

Device tree for the Infinix X6886 (HOT 60 Pro+) on LineageOS 24.0 and
InfinityX. It targets Android 17; the board values come from the stock XOS 16
dump for this phone. Proprietary blobs are in the separate vendor tree.

## Device

- Codename: x6886
- Model: Infinix X6886 (HOT 60 Pro+)
- SoC: MediaTek MT6789
- Stock firmware: XOS 16 / 155SP15
- Build ID: BP2A.250605.031.A3
- Stock Android: 16 (SDK 36)
- Incremental: 301550078
- Fingerprint: `Infinix/X6886-OP/Infinix-X6886:16/BP2A.250605.031.A3/301550078:user/release-keys`

## Partitions

A/B slots with virtual A/B and dynamic partitions. Super is 13083561984 bytes,
with `main_a` and `main_b` capped at 13081464832 bytes each.

Boot uses header version 4, 4096 byte pages and an `lz4_legacy` kernel.
`vendor_boot` holds the ramdisk and DTB and boots with
`bootopt=64S3,32N2,64N2 bootconfig`.

## Building

Put this tree at `device/infinix/x6886` and the vendor tree at
`vendor/infinix/x6886` in a LineageOS 24.0 source tree, then:

    source build/envsetup.sh
    lunch lineage_X6886-userdebug
    mka bacon

For InfinityX use `infinity_X6886-userdebug`, if its vendor config is present.

## Source split

`system`, `system_ext` and `product` come from the donor ROM. `vendor`, `odm`
and the `*_dlkm` blobs are stock. Panel tuning is in `odm/etc/vconfig/display/`.

`vendorsetup.sh` applies the patches in `patches/` when you source the build
environment. To reverse them, run `vs_state=skip source build/envsetup.sh`.

## License

Apache-2.0 unless a file says otherwise.
