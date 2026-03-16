import 'cpu_info.dart';
import 'memory_info.dart';
import 'gpu_info.dart';
import 'disk_info.dart';
import 'os_info.dart';
import 'battery_info.dart';
import 'network_info.dart';

/// Complete system hardware information containing all available hardware data.
///
/// This class aggregates all hardware information into a single object.
/// It includes operating system, CPU, memory, GPU, disk, battery, and network information.
///
/// Example:
/// ```dart
/// final systemInfo = await HardwareInfo.getSystemInfo();
/// print('CPU: ${systemInfo.cpu.model}');
/// print('Memory: ${systemInfo.memory.totalMemoryGB} GB');
/// print('OS: ${systemInfo.os.name}');
/// ```
class SystemInfo {
  /// Creates a [SystemInfo] instance.
  ///
  /// All parameters except [battery] and [network] are required.
  SystemInfo({
    required this.os,
    required this.cpu,
    required this.memory,
    required this.gpu,
    required this.disk,
    this.battery,
    this.network,
  });

  factory SystemInfo.fromJson(Map<String, dynamic> json) {
    return SystemInfo(
      os: OsInfo.fromJson(Map<String, dynamic>.from(json['os'] ?? {})),
      cpu: CpuInfo.fromJson(Map<String, dynamic>.from(json['cpu'] ?? {})),
      memory:
          MemoryInfo.fromJson(Map<String, dynamic>.from(json['memory'] ?? {})),
      gpu: GpuInfo.fromJson(Map<String, dynamic>.from(json['gpu'] ?? {})),
      disk: DiskInfo.fromJson(Map<String, dynamic>.from(json['disk'] ?? {})),
      battery: json['battery'] != null
          ? BatteryInfo.fromJson(Map<String, dynamic>.from(json['battery']))
          : null,
      network: json['network'] != null
          ? NetworkInfo.fromJson(Map<String, dynamic>.from(json['network']))
          : null,
    );
  }

  final OsInfo os;
  final CpuInfo cpu;
  final MemoryInfo memory;
  final GpuInfo gpu;
  final DiskInfo disk;
  final BatteryInfo? battery;
  final NetworkInfo? network;

  Map<String, dynamic> toJson() {
    return {
      'os': os.toJson(),
      'cpu': cpu.toJson(),
      'memory': memory.toJson(),
      'gpu': gpu.toJson(),
      'disk': disk.toJson(),
      if (battery != null) 'battery': battery!.toJson(),
      if (network != null) 'network': network!.toJson(),
    };
  }

  @override
  String toString() {
    return 'SystemInfo(os: $os, cpu: $cpu, memory: $memory, gpu: $gpu, disk: $disk, battery: $battery, network: $network)';
  }
}
