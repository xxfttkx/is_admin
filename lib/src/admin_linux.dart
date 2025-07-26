import 'dart:ffi' as ffi;

typedef GetUidC = ffi.Int32 Function();
typedef GetUidDart = int Function();

final _libc = ffi.DynamicLibrary.open('libc.so.6');
final _getuid = _libc.lookupFunction<GetUidC, GetUidDart>('getuid');

bool isLinuxRoot() => _getuid() == 0;
