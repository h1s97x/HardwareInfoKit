/// Memory (RAM) information.
///
/// Contains information about system memory including total, available, and used memory.
/// Provides convenient getters for memory values in GB.
///
/// Example:
/// ```dart
/// final memoryInfo = await HardwareInfo.getMemoryInfo();
/// print('Total: ${memoryInfo.totalMemoryGB} GB');
/// print('Available: ${memoryInfo.availableMemoryGB} GB');
/// print('Usage: ${memoryInfo.usagePercentage}%');
/// ```
class MemoryInfo {
  /// Creates a [MemoryInfo] instance.
  MemoryInfo({
    this.totalMemory,
    this.availableMemory,
    this.usedMemory,
    this.usagePercentage,
  });

  factory MemoryInfo.fromJson(Map<String, dynamic> json) {
    // Parse memory values that might be in "XX.XX GB" format
    int? parseMemory(dynamic value) {
      if (value == null) return null;
      if (value is int) return value;
      if (value is String) {
        // Try to parse "XX.XX GB" format
        final match = RegExp(r'([\d.]+)\s*GB').firstMatch(value);
        if (match != null) {
          final gb = double.tryParse(match.group(1)!);
          if (gb != null) return (gb * 1024 * 1024 * 1024).toInt();
        }
        return int.tryParse(value);
      }
      return null;
    }

    double? parsePercentage(dynamic value) {
      if (value == null) return null;
      if (value is double) return value;
      if (value is int) return value.toDouble();
      if (value is String) {
        final cleaned = value.replaceAll('%', '').trim();
        return double.tryParse(cleaned);
      }
      return null;
    }

    return MemoryInfo(
      totalMemory: parseMemory(
          json['Total Memory'] ?? json['totalMemory'] ?? json['总内存']),
      availableMemory: parseMemory(
          json['Available Memory'] ?? json['availableMemory'] ?? json['可用内存']),
      usedMemory: parseMemory(
          json['Used Memory'] ?? json['usedMemory'] ?? json['已用内存']),
      usagePercentage:
          parsePercentage(json['Usage'] ?? json['usage'] ?? json['使用率']),
    );
  }

  /// Total system memory in bytes.
  final int? totalMemory;

  /// Available system memory in bytes.
  final int? availableMemory;

  /// Used system memory in bytes.
  final int? usedMemory;

  /// Memory usage percentage (0-100).
  final double? usagePercentage;

  /// Total memory in GB
  double? get totalMemoryGB =>
      totalMemory != null ? totalMemory! / (1024 * 1024 * 1024) : null;

  /// Available memory in GB
  double? get availableMemoryGB =>
      availableMemory != null ? availableMemory! / (1024 * 1024 * 1024) : null;

  /// Used memory in GB
  double? get usedMemoryGB =>
      usedMemory != null ? usedMemory! / (1024 * 1024 * 1024) : null;

  Map<String, dynamic> toJson() {
    return {
      'totalMemory': totalMemory,
      'availableMemory': availableMemory,
      'usedMemory': usedMemory,
      'usagePercentage': usagePercentage,
    };
  }

  @override
  String toString() {
    return 'MemoryInfo(total: ${totalMemoryGB?.toStringAsFixed(2)} GB, available: ${availableMemoryGB?.toStringAsFixed(2)} GB, used: ${usedMemoryGB?.toStringAsFixed(2)} GB, usage: ${usagePercentage?.toStringAsFixed(1)}%)';
  }
}
