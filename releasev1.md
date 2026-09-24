###  Integrity Purge v1.0 - Initial Release

Initial public release of **Integrity Purge**, a lightweight Magisk / KernelSU module designed to instantly force Play Integrity re-attestation.

####  Features
- **Action Trigger Support:** Execute cleanup on-demand with a single tap from the Magisk/KernelSU interface.
- **Complete Cache & State Wipe:** Automates `am force-stop` and `pm clear` for:
  - Google Play Services (`com.google.android.gms`)
  - Google Play Store (`com.android.vending`)
  - Google Wallet (`com.google.android.apps.walletnfcrel`)
- **Process Cleanup:** Kills unstable GMS background processes (`gms.unstable`).
- **Zero Overhead:** Standalone shell execution, no battery drain or background daemons.

####  Installation
1. Flash the attached `IntegrityPurge-v1.0.zip` in Magisk / KernelSU / APatch.
2. Reboot your device.
3. Tap the **Action** button whenever you update fingerprints, PIF profiles, or keyboxes.