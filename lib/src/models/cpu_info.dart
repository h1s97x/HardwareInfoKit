/// CPU/Processor information.
///
/// Contains detailed information about the processor including model, vendor,
/// architecture, number of cores, frequency, and cache size.
///
/// Example:
/// ```dart
/// final cpuInfo = await HardwareInfo.getCpuInfo();
/// print('Model: ${cpuInfo.model}');
/// print('Cores: ${cpuInfo.logicalCores}');
/// print('Frequency: ${cpuInfo.frequency} MHz');
/// ```
class CpuInfo {
  /// Creates a [CpuInfo] instance.
  CpuInfo({
    this.model,
    this.vendor,
    this.architecture,
    this.logicalCores,
    this.physicalCores,
    this.frequency,
    this.cacheSize,
  });

  factory CpuInfo.fromJson(Map<String, dynamic> json) {
    return CpuInfo(
      model: json['Model'] ?? json['model'] ?? json['型号'],
      vendor: json['Vendor'] ?? json['vendor'] ?? json['厂商'],
      architecture: json['Architecture'] ?? json['architecture'] ?? json['架构'],
      logicalCores: _parseInt(
          json['Logical Cores'] ?? json['logicalCores'] ?? json['逻辑核心数']),
      physicalCores: _parseInt(
          json['Physical Cores'] ?? json['physicalCores'] ?? json['物理核心数']),
      frequency:
          _parseDouble(json['Frequency'] ?? json['frequency'] ?? json['频率']),
      cacheSize:
          _parseInt(json['Cache Size'] ?? json['cacheSize'] ?? json['缓存大小']),
    );
  }

  /// The CPU model name.
  final String? model;

  /// The CPU vendor/manufacturer.
  final String? vendor;

  /// The CPU architecture (e.g., x86_64, ARM).
  final String? architecture;

  /// The number of logical cores.
  final int? logicalCores;

  /// The number of physical cores.
  final int? physicalCores;

  /// The CPU frequency in MHz.
  final double? frequency;

  /// The CPU cache size in bytes.
  final int? cacheSize;

  Map<String, dynamic> toJson() {
    return {
      'model': model,
      'vendor': vendor,
      'architecture': architecture,
      'logicalCores': logicalCores,
      'physicalCores': physicalCores,
      'frequency': frequency,
      'cacheSize': cacheSize,
    };
  }

  static int? _parseInt(dynamic value) {
    if (value == null) return null;
    if (value is int) return value;
    if (value is String) return int.tryParse(value);
    return null;
  }

  static double? _parseDouble(dynamic value) {
    if (value == null) return null;
    if (value is double) return value;
    if (value is int) return value.toDouble();
    if (value is String) return double.tryParse(value);
    return null;
  }

  @override
  String toString() {
    return 'CpuInfo(model: $model, vendor: $vendor, architecture: $architecture, logicalCores: $logicalCores, physicalCores: $physicalCores, frequency: $frequency MHz, cacheSize: $cacheSize bytes)';
  }
}
