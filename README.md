# Infinix X6886

Device tree for the Infinix HOT 60 Pro+ (MT6789), built against LineageOS 24.0.

| | |
|---|---|
| Stock | XOS 16, 155SP15 |
| Build ID | BP2A.250605.031.A3 |
| Android | 16 / SDK 36 |
| Target | LineageOS 24.0 |
| Fingerprint | `Infinix/X6886-OP/Infinix-X6886:16/BP2A.250605.031.A3/301550078:user/release-keys` |

## Partitions

A/B with virtual A/B and dynamic partitions. Super is `13083561984` bytes;
`main_a` and `main_b` cap at `13081464832` each.

Boot is header v4 with 4096 byte pages and an `lz4_legacy` kernel. The ramdisk
and DTB live in `vendor_boot`.

## Build

Place the trees at `device/infinix/x6886`, `vendor/infinix/x6886` and
`device/infinix/x6886-prebuilts` in a LineageOS 24.0 tree, then:

```sh
source build/envsetup.sh
lunch lineage_x6886-userdebug
mka bacon
```

The only product is `lineage_x6886`.

## Image sources

`system`, `system_ext`, `product`, `vendor`, `odm` and the `*_dlkm` images are
built from source. Stock blobs live in the vendor tree; the kernel, DTB, DTBO
and firmware come from the prebuilts tree. Panel config is kept under
`odm/etc/vconfig/display/`.

`vendorsetup.sh` applies `patches/` when you source the build env. Skip them
with `vs_state=skip source build/envsetup.sh`.

## License

Apache-2.0 unless a file says otherwise.
