# viTerm Windows Installer Parameters & EXE Return Codes Documentation

**Product:** viTerm (`com.cmstudio.viterm`)  
**Microsoft Store Product ID:** `ced075fe-9a4d-4a42-91a2-dc4d554087ce`  
**Publisher:** Chuong Minh Studio  
**Applicable Version:** `v2.8.1` and later  
**Architecture:** Windows `x64` (`x86_64-pc-windows-msvc`)

---

## 1. Silent Installation Behavior (Microsoft Store Policy 10.2.9.2)

The Microsoft Store installer editions (`viTerm_2.8.1_x64-store-setup.exe` and `viTerm_2.8.1_x64-store-offline-setup.exe`) are compiled with NSIS `SilentInstall silent`, `SilentUninstall silent`, `AutoCloseWindow true`, and `RequestExecutionLevel user` (`asInvoker`, per-user installation into `%LOCALAPPDATA%\viTerm`):

- **Zero switches required:** Executing the installer binary directly (`viTerm_2.8.1_x64-store-setup.exe`) runs **100% silently** with no wizard UI, no modal prompts, no UAC elevation dialog, and no post-install application auto-launch.
- **Optional switches also supported:** Passing `/S` or `/s` is also accepted and executes silently.
- **Standalone offline execution:** Does not download external components from the network during setup.

### Command-Line Switches Reference

| Switch | Behavior |
| :--- | :--- |
| *(none)* | Runs silently by default in Microsoft Store editions (`*-store-setup.exe`, `*-store-offline-setup.exe`). |
| `/S` | Explicit silent installation switch (supported across both Store and Standard editions). |
| `/NS` | Suppresses Start Menu and Desktop shortcut creation during silent installation. |
| `/UPDATE` | Performs in-place silent update preserving existing user shortcuts and preferences. |
| `/D=<path>` | Overrides target installation directory (must be the last parameter, unquoted). |

---

## 2. Standard Install Scenarios — EXE Return Code Values

All Microsoft Store EXE packages return deterministic Win32 / Windows Installer system return codes matching Microsoft Partner Center's standard install scenarios:

| Partner Center Scenario | EXE Return Code | Symbolic Constant | Technical Condition |
| :--- | :---: | :--- | :--- |
| **Installation successful** | `0` | `ERROR_SUCCESS` | Installation completed cleanly with no reboot required. |
| **Installation cancelled by user** | `1602` | `ERROR_INSTALL_USEREXIT` | User or host environment aborted the installation (`ViTermStoreOnUserAbort`). |
| **Application already exists** | `1638` | `ERROR_PRODUCT_VERSION` | A newer product version is already installed on the device (`SemverCompare == -1`). |
| **Installation already in progress** | `1618` | `ERROR_INSTALL_ALREADY_RUNNING` | Another `viTerm` installer instance already holds `Local\viTerm_Installer_Mutex`. |
| **Disk space is full** | `112` | `ERROR_DISK_FULL` | Target volume has insufficient free disk space (`< 25 MB` available). |
| **Reboot required** | `3010` | `ERROR_SUCCESS_REBOOT_REQUIRED` | Installation succeeded and flagged a pending file/folder operation requiring system restart (`RebootFlag`). |
| **Network failure** | `12007` | `ERROR_INTERNET_NAME_NOT_RESOLVED` | Reserved WinInet failure code (not triggered by standalone offline Store packages). |
| **Package rejected during installation** | `1625` | `ERROR_INSTALL_PACKAGE_REJECTED` | System security policy, DACL, Controlled Folder Access, or AppLocker blocked write access to the installation directory. |

---

## 3. Miscellaneous Install Failure Scenarios

For any unexpected fatal installation error not covered by the standard scenarios above, the installer returns standard Windows error codes documented below:

| Failure Scenario | EXE Return Code | Symbolic Constant | Documentation / Cause |
| :--- | :---: | :--- | :--- |
| **Fatal error during installation** | `1603` | `ERROR_INSTALL_FAILURE` | Unhandled fatal error during payload extraction or file write (`.onInstFailed`). |
| **Script / Integrity check abort** | `2` | `NSIS_ABORT_SCRIPT` | NSIS stub integrity check (`CRC`) or runtime precondition aborted execution before `.onInstFailed`. |
| **Access denied** | `5` | `ERROR_ACCESS_DENIED` | Operating system denied process execution or registry write access. |

Official Microsoft Win32 System Error Codes reference:  
https://learn.microsoft.com/en-us/windows/win32/debug/system-error-codes
