# is_admin

A simple Flutter plugin to check if the current process is running with administrator (Windows) or root (Linux/macOS) privileges.

---

## Features

- Detects if the app is running with **administrator privileges** on Windows.
- Detects if the app is running with **root privileges** on Linux/macOS.
- Cross-platform support via FFI.
- Lightweight and easy to integrate.

---

## Installation

Add the dependency in your `pubspec.yaml`:

```yaml
dependencies:
  is_admin:
    git:
      url: https://github.com/xxfttkx/is_admin
      ref: main
```

Then run:

```bash
flutter pub get
```

---

## Usage

Import the package:

```dart
import 'package:is_admin/is_admin.dart';
```

Check if the app is running as admin/root:

```dart
bool isAdmin = await IsAdmin.isAdmin();
if (isAdmin) {
  print('Running with administrator/root privileges.');
} else {
  print('Not running as administrator/root.');
}
```

---

## Platform Support

- **Windows:** Checks for Administrator privileges using Windows API.
- **Linux/macOS:** Checks if running as root user (UID 0).
- **Other platforms:** Returns `false` by default.

---

## Example

```dart
import 'package:flutter/material.dart';
import 'package:is_admin/is_admin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isAdmin = await IsAdmin.isAdmin();

  runApp(MyApp(isAdmin: isAdmin));
}

class MyApp extends StatelessWidget {
  final bool isAdmin;

  const MyApp({Key? key, required this.isAdmin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('is_admin Example')),
        body: Center(
          child: Text(
            isAdmin ? 'Running as Admin/Root' : 'Not running as Admin',
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
```

---

## License

This project is licensed under the GNU General Public License v3.0 (GPLv3). See [LICENSE](LICENSE) for details.
