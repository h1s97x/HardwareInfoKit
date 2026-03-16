/// Hardware Info Kit - A comprehensive Flutter plugin for cross-platform hardware information retrieval.
///
/// This package provides a complete solution for accessing hardware information
/// on Flutter applications. It includes:
///
/// - **CPU Information**: Model, vendor, architecture, cores, frequency, cache
/// - **Memory Information**: Total, available, used memory and usage percentage
/// - **GPU Information**: Model, vendor, video memory, driver version
/// - **Disk Information**: Total, available, used space and drive count
/// - **Battery Information**: Level, charging status, health, temperature, voltage
/// - **Network Information**: IPv4, IPv6, MAC address, interface names
/// - **OS Information**: System name, version, architecture, computer name
///
/// ## Quick Start
///
/// ```dart
/// import 'package:hardware_info_kit/hardware_info_kit.dart';
///
/// // Get all hardware information at once
/// final systemInfo = await HardwareInfo.getSystemInfo();
/// print('CPU: ${systemInfo.cpu.model}');
/// print('Memory: ${systemInfo.memory.totalMemoryGB} GB');
/// print('OS: ${systemInfo.os.name}');
///
/// // Or get specific information
/// final cpuInfo = await HardwareInfo.getCpuInfo();
/// final memoryInfo = await HardwareInfo.getMemoryInfo();
/// final gpuInfo = await HardwareInfo.getGpuInfo();
/// final diskInfo = await HardwareInfo.getDiskInfo();
/// final osInfo = await HardwareInfo.getOsInfo();
/// final batteryInfo = await HardwareInfo.getBatteryInfo();
/// final networkInfo = await HardwareInfo.getNetworkInfo();
/// ```
///
/// ## Platform Support
///
/// - ✅ Windows (Windows 10+)
/// - ✅ Android (API 21+)
/// - 🚧 iOS (Planned for v1.1.0)
/// - 🚧 Linux (Planned for v1.1.0)
/// - 🚧 macOS (Planned for v1.1.0)
/// - ❌ Web (Not supported)
///
/// ## Features
///
/// - **Cross-Platform**: Unified API across Windows and Android
/// - **Comprehensive**: Access to all major hardware information
/// - **Type-Safe**: Strong-typed data models
/// - **Asynchronous**: Non-blocking API calls
/// - **Fast**: Information retrieval < 100ms
/// - **Lightweight**: Minimal package size and memory footprint
/// - **Well-Documented**: Complete API documentation and examples
/// - **Error Handling**: Comprehensive exception handling
///
/// ## Error Handling
///
/// ```dart
/// try {
///   final info = await HardwareInfo.getSystemInfo();
/// } on HardwareInfoException catch (e) {
///   print('Error: ${e.message}');
/// }
/// ```
///
/// ## Documentation
///
/// For more information, see:
/// - [README](https://github.com/h1s97x/HardwareInfoKit/blob/main/README.md)
/// - [Usage Guide](https://github.com/h1s97x/HardwareInfoKit/blob/main/USAGE_GUIDE.md)
/// - [API Reference](https://github.com/h1s97x/HardwareInfoKit/blob/main/doc/API.md)
/// - [Architecture](https://github.com/h1s97x/HardwareInfoKit/blob/main/doc/ARCHITECTURE.md)
///
/// ## License
///
/// This package is licensed under the MIT License.
// ignore: unnecessary_library_name
library hardware_info_kit;

export 'src/hardware_info_kit.dart';
export 'src/models/models.dart';
export 'src/enums/enums.dart';
