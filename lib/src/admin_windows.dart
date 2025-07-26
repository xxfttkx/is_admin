import 'dart:ffi' as ffi;

typedef IsUserAnAdminC = ffi.Int32 Function();
typedef IsUserAnAdminDart = int Function();

final _shell32 = ffi.DynamicLibrary.open('shell32.dll');
final _isUserAnAdmin =
    _shell32.lookupFunction<IsUserAnAdminC, IsUserAnAdminDart>('IsUserAnAdmin');

bool isWindowsAdmin() {
  return _isUserAnAdmin() != 0;
}
