# Integrity Purge

A lightweight Magisk / KernelSU module that provides a one-click **Action** button to wipe cached attestation states from Google Play Services, Google Play Store, and Google Wallet.

Useful after updating fingerprints, modifying `pif.json`, or configuring hardware attestation keyboxes to force an immediate Play Integrity re-check without manually clearing app data.

---

## ⚡ Features

- **One-Click Action:** Trigger the cleanup directly from the Magisk / KernelSU app UI.
- **Deep Clean:** Force-stops and clears data for:
  - Google Play Services (`com.google.android.gms`)
  - Google Play Store (`com.android.vending`)
  - Google Wallet (`com.google.android.apps.walletnfcrel`)
- **Process Termination:** Kills background GMS unstable processes (`gms.unstable`).
- **Zero Overhead:** Pure shell script (`sh`), no persistent background daemon consuming RAM/battery.

---

## 📦 Installation

1. Download the latest `IntegrityPurge-vX.X.zip` from the [Releases](../../releases) tab.
2. Open the **Magisk** (or KernelSU / APatch) app.
3. Go to the **Modules** section and tap **Install from storage**.
4. Select the `.zip` file and reboot your device.

---

## 🚀 How to Use

1. Update your fingerprint, PIF profile, or keybox configuration.
2. Open **Magisk** > **Modules**.
3. Locate **Integrity Purge** and tap the **Action** button.
4. Wait for the terminal log to report `Cleanup completed successfully!`.
5. Open your Play Integrity checker app (or Google Wallet) to verify the new status.

---

## ⁉️ Problems?

- Write me on Telegram: @imhugo22

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).
