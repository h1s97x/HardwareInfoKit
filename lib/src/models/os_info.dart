/// Operating System information.
///
/// Contains information about the operating system including name, version,
/// architecture, computer name, and kernel version.
///
/// Example:
/// ```dart
/// final osInfo = await HardwareInfo.getOsInfo();
/// print('OS: ${osInfo.name} ${osInfo.version}');
/// print('Architecture: ${osInfo.architecture}');
/// print('Computer: ${osInfo.computerName}');
/// ```
class OsInfo {
  /// Creates an [OsInfo] instance.
  OsInfo({
    this.name,
    this.version,
    this.architecture,
    this.computerName,
    this.kernel,
  });

  factory OsInfo.fromJson(Map<String, dynamic> json) {
    return OsInfo(
      name: json['System'] ?? json['name'] ?? json['系统'],
      version: json['Version'] ?? json['version'] ?? json['版本'],
      architecture: json['Architecture'] ?? json['architecture'] ?? json['架构'],
      computerName:
          json['Computer Name'] ?? json['computerName'] ?? json['计算机名'],
      kernel: json['Kernel'] ?? json['kernel'] ?? json['内核'],
    );
  }

  /// The operating system name (e.g., Windows, Android).
  final String? name;

  /// The operating system version.
  final String? version;

  /// The system architecture (e.g., x86_64, ARM).
  final String? architecture;

  /// The computer/device name.
  final String? computerName;

  /// The kernel version.
  final String? kernel;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'version': version,
      'architecture': architecture,
      'computerName': computerName,
      'kernel': kernel,
    };
  }

  @override
  String toString() {
    return 'OsInfo(name: $name, version: $version, architecture: $architecture, computerName: $computerName, kernel: $kernel)';
  }
}
