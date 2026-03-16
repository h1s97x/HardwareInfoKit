/// GPU/Graphics card information.
///
/// Contains information about the graphics processing unit including model,
/// vendor, video memory, and driver version.
///
/// Example:
/// ```dart
/// final gpuInfo = await HardwareInfo.getGpuInfo();
/// print('Model: ${gpuInfo.model}');
/// print('Memory: ${gpuInfo.memoryGB} GB');
/// print('Driver: ${gpuInfo.driverVersion}');
/// ```
class GpuInfo {
  /// Creates a [GpuInfo] instance.
  GpuInfo({
    this.model,
    this.vendor,
    this.memory,
    this.driverVersion,
  });

  factory GpuInfo.fromJson(Map<String, dynamic> json) {
    return GpuInfo(
      model: json['Model'] ?? json['model'] ?? json['型号'],
      vendor: json['Vendor'] ?? json['vendor'] ?? json['厂商'],
      memory: json['Memory'] ?? json['memory'] ?? json['显存'],
      driverVersion:
          json['Driver Version'] ?? json['driverVersion'] ?? json['驱动版本'],
    );
  }

  /// The GPU model name.
  final String? model;

  /// The GPU vendor/manufacturer.
  final String? vendor;

  /// The GPU video memory in bytes.
  final int? memory;

  /// The GPU driver version.
  final String? driverVersion;

  /// GPU memory in GB
  double? get memoryGB =>
      memory != null ? memory! / (1024 * 1024 * 1024) : null;

  Map<String, dynamic> toJson() {
    return {
      'model': model,
      'vendor': vendor,
      'memory': memory,
      'driverVersion': driverVersion,
    };
  }

  @override
  String toString() {
    return 'GpuInfo(model: $model, vendor: $vendor, memory: ${memoryGB?.toStringAsFixed(2)} GB, driverVersion: $driverVersion)';
  }
}
