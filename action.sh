#!/system/bin/sh

# Forzar salida limpia y evitar herencia de descriptores rotos
exec 2>&1

echo "=================================="
echo "    Integrity Purge (Android 16)  "
echo "=================================="
echo ""

TARGET_PKGS="
com.google.android.gms
com.android.vending
com.google.android.apps.walletnfcrel
"

echo "[*] Killing target processes..."
for PKG in $TARGET_PKGS; do
    pkill -9 -f "$PKG" 2>/dev/null
done
pkill -9 -f com.google.android.gms.unstable 2>/dev/null
echo "    -> Processes stopped."
echo ""

echo "[*] Purging attestation data & caches..."
for PKG in $TARGET_PKGS; do
    echo "[-] Wiping data: $PKG"
    
    # 1. Almacenamiento estandar (/data/data/)
    if [ -d "/data/data/$PKG" ]; then
        rm -rf /data/data/"$PKG"/cache/* 2>/dev/null
        rm -rf /data/data/"$PKG"/code_cache/* 2>/dev/null
        rm -rf /data/data/"$PKG"/databases/* 2>/dev/null
        rm -rf /data/data/"$PKG"/shared_prefs/* 2>/dev/null
    fi

    # 2. Almacenamiento Device Encrypted (/data/user_de/0/)
    if [ -d "/data/user_de/0/$PKG" ]; then
        rm -rf /data/user_de/0/"$PKG"/cache/* 2>/dev/null
        rm -rf /data/user_de/0/"$PKG"/code_cache/* 2>/dev/null
        rm -rf /data/user_de/0/"$PKG"/databases/* 2>/dev/null
        rm -rf /data/user_de/0/"$PKG"/shared_prefs/* 2>/dev/null
    fi
    
    echo "    -> Cleaned."
done

echo ""
echo "[*] Ensuring GMS Unstable is terminated..."
pkill -9 -f com.google.android.gms.unstable 2>/dev/null

echo ""
echo "=================================="
echo "  Cleanup finished successfully!  "
echo "=================================="
echo ""
echo "Exiting cleanly in 3s..."
sleep 3
exit 0