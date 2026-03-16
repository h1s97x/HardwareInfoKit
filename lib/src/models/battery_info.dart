/// Battery information.
///
/// Contains information about the device battery including level, charging status,
/// health, temperature, and voltage. Returns null if no battery is present.
///
/// Example:
/// ```dart
/// final batteryInfo = await HardwareInfo.getBatteryInfo();
/// if (batteryInfo != null) {
///   print('Level: ${batteryInfo.level}%');
///   print('Charging: ${batteryInfo.isCharging}');
///   print('Temperature: ${batteryInfo.temperature}°C');
/// }
/// ```
class BatteryInfo {
  /// Creates a [BatteryInfo] instance.
  BatteryInfo({
    this.level,
    this.isCharging,
    this.health,
    this.temperature,
    this.voltage,
  });

  factory BatteryInfo.fromJson(Map<String, dynamic> json) {
    int? parseLevel(dynamic value) {
      if (value == null) return null;
      if (value is int) return value;
      if (value is String) {
        final cleaned = value.replaceAll('%', '').trim();
        return int.tryParse(cleaned);
      }
      return null;
    }

    bool? parseCharging(dynamic value) {
      if (value == null) return null;
      if (value is bool) return value;
      if (value is String) {
        return value.toLowerCase().contains('charging') || value.contains('充电');
      }
      return null;
    }

    return BatteryInfo(
      level: parseLevel(json['Battery Level'] ?? json['level'] ?? json['电量']),
      isCharging: parseCharging(
          json['Charging Status'] ?? json['isCharging'] ?? json['充电状态']),
      health: json['Health'] ?? json['health'] ?? json['健康状态'],
      temperature: json['Temperature'] ?? json['temperature'] ?? json['温度'],
      voltage: json['Voltage'] ?? json['voltage'] ?? json['电压'],
    );
  }

  /// Battery level as a percentage (0-100).
  final int? level;

  /// Whether the battery is currently charging.
  final bool? isCharging;

  /// Battery health status.
  final String? health;

  /// Battery temperature in Celsius.
  final double? temperature;

  /// Battery voltage in Volts.
  final double? voltage;

  Map<String, dynamic> toJson() {
    return {
      'level': level,
      'isCharging': isCharging,
      'health': health,
      'temperature': temperature,
      'voltage': voltage,
    };
  }

  @override
  String toString() {
    return 'BatteryInfo(level: $level%, isCharging: $isCharging, health: $health, temperature: $temperature°C, voltage: $voltage V)';
  }
}
