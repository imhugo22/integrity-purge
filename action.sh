#!/system/bin/sh

echo "=================================="
echo "    Integrity Purge - Starting    "
echo "=================================="
echo ""

# Lista de paquetes
PACKAGES="
com.google.android.gms
com.android.vending
com.google.android.apps.walletnfcrel
"

for PKG in $PACKAGES; do
    echo "[*] Processing: $PKG"
    # Forzar detención antes de limpiar
    am force-stop "$PKG" >/dev/null 2>&1
    # Limpiar datos y caché
    pm clear "$PKG" >/dev/null 2>&1
    echo "    -> Cleared: $PKG"
done

echo ""
echo "[*] Killing unstable GMS background processes..."
# Matamos específicamente el proceso inestable de attestation sin usar pkill agresivo global
killall -9 com.google.android.gms.unstable >/dev/null 2>&1

echo ""
echo "=================================="
echo " Cleanup completed successfully!  "
echo " Wait ~5s before opening Wallet   "
echo " or checking Play Integrity.      "
echo "=================================="
echo ""
sleep 2