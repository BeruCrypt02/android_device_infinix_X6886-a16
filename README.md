# Infinix X6886

Device tree for the Infinix HOT 60 Pro+ (MT6789).

| | |
|---|---|
| Stock | XOS 16, 155SP15 |
| Build ID | BP2A.250605.031.A3 |
| Android | 16 / SDK 36 |
| Target | LineageOS 24.0, InfinityX |
| Fingerprint | `Infinix/X6886-OP/Infinix-X6886:16/BP2A.250605.031.A3/301550078:user/release-keys` |

## Partitions

A/B with virtual A/B and dynamic partitions. Super is `13083561984` bytes;
`main_a` and `main_b` cap at `13081464832` each.

Boot is header v4, 4096 byte pages, `lz4_legacy` kernel. The ramdisk and DTB
live in `vendor_boot`. Boot args: `bootopt=64S3,32N2,64N2 bootconfig`.

## Build

Place the trees at `device/infinix/x6886` and `vendor/infinix/x6886`, then:

```sh
source build/envsetup.sh
lunch lineage_X6886-userdebug
mka bacon
```

`infinity_X6886-userdebug` works when its vendor config is present.

## Image sources

| Partition | Source |
|---|---|
| `system`, `system_ext`, `product` | prebuilt images |
| `vendor`, `odm`, `*_dlkm` | stock dump, including `odm/etc/vconfig/display/` |

`vendorsetup.sh` applies `patches/` when you source the build env. Skip them
with `vs_state=skip source build/envsetup.sh`.

## License

Apache-2.0 unless a file says otherwise.
