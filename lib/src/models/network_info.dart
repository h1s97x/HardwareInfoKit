/// Network information.
///
/// Contains information about network connectivity including IPv4 and IPv6 addresses,
/// MAC address, and network interface name.
///
/// Example:
/// ```dart
/// final networkInfo = await HardwareInfo.getNetworkInfo();
/// print('IPv4: ${networkInfo.ipv4}');
/// print('MAC: ${networkInfo.macAddress}');
/// print('Interface: ${networkInfo.interfaceName}');
/// ```
class NetworkInfo {
  /// Creates a [NetworkInfo] instance.
  NetworkInfo({
    this.ipv4,
    this.ipv6,
    this.macAddress,
    this.interfaceName,
  });

  factory NetworkInfo.fromJson(Map<String, dynamic> json) {
    return NetworkInfo(
      ipv4: json['IPv4'] ?? json['ipv4'] ?? json['IP地址'],
      ipv6: json['IPv6'] ?? json['ipv6'],
      macAddress: json['MAC Address'] ?? json['macAddress'] ?? json['MAC地址'],
      interfaceName: json['Interface'] ?? json['interfaceName'] ?? json['接口名称'],
    );
  }

  /// The IPv4 address.
  final String? ipv4;

  /// The IPv6 address.
  final String? ipv6;

  /// The MAC address.
  final String? macAddress;

  /// The network interface name.
  final String? interfaceName;

  Map<String, dynamic> toJson() {
    return {
      'ipv4': ipv4,
      'ipv6': ipv6,
      'macAddress': macAddress,
      'interfaceName': interfaceName,
    };
  }

  @override
  String toString() {
    return 'NetworkInfo(ipv4: $ipv4, ipv6: $ipv6, macAddress: $macAddress, interface: $interfaceName)';
  }
}
