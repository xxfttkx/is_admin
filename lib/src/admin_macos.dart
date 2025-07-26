import 'dart:ffi' as ffi;

typedef GetUidC = ffi.Int32 Function();
typedef GetUidDart = int Function();

final _libSystem = ffi.DynamicLibrary.open('/usr/lib/libSystem.dylib');
final _getuid = _libSystem.lookupFunction<GetUidC, GetUidDart>('getuid');

bool isMacRoot() => _getuid() == 0;
