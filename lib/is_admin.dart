import 'dart:io';

import 'src/admin_windows.dart' as win;
import 'src/admin_linux.dart' as linux;
import 'src/admin_macos.dart' as mac;

/// 检查当前应用是否有管理员 (Windows) 或 root (Linux/macOS) 权限。
class IsAdmin {
  /// 跨平台检查是否管理员/Root
  static bool get isAdmin {
    if (Platform.isWindows) return win.isWindowsAdmin();
    if (Platform.isLinux) return linux.isLinuxRoot();
    if (Platform.isMacOS) return mac.isMacRoot();
    return false;
  }

  /// Windows 管理员
  static bool isWindowsAdmin() =>
      Platform.isWindows ? win.isWindowsAdmin() : false;

  /// Linux root
  static bool isLinuxRoot() => Platform.isLinux ? linux.isLinuxRoot() : false;

  /// macOS root
  static bool isMacRoot() => Platform.isMacOS ? mac.isMacRoot() : false;
}
