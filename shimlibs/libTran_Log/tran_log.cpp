//
// SPDX-FileCopyrightText: The LineageOS Project
// SPDX-License-Identifier: Apache-2.0
//

// ABI-compatible no-op replacements for the two symbols exported by the
// stock vendor/lib64/libTran_Log.so (names verified with readelf):
//   _Z14tran_log_levelv         -> tran_log_level()
//   _Z22Is_tran_force_open_logi -> Is_tran_force_open_log(int)
int Is_tran_force_open_log(int) {
    return 1;
}

void tran_log_level() {
}
