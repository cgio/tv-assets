#!/system/bin/sh
echo "[*] Unhiding all packages on User 0..."
for pkg in $(pm list packages -u | cut -d: -f2); do
    pm list packages | grep -q "^package:$pkg$" || pm unhide "$pkg"
done

echo "[*] Enabling critical system framework..."
pm enable com.amazon.device.messaging
pm enable com.amazon.device.messaging.sdk.library
pm enable com.amazon.device.messaging.sdk.internal.library
pm enable com.amazon.prism.android.service
pm enable com.amazon.tv.launcher
pm enable com.amazon.tv.arc
pm enable com.amazon.tv.intentsupport
pm enable com.amazon.ftvads.deeplinking
pm enable com.amazon.media.recommendations

echo "[*] Baseline restored cleanly."
