# Changelog | 更新日志

## Table of Contents | 目录

- [English](#english)
- [中文](#中文)

---

## English

All notable changes to this project will be documented in this file.
The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

### [1.0.0] - 2026-03-08

#### Added Features

- Cross-platform hardware information retrieval
- Windows platform support
- Android platform support
- CPU information (model, cores, frequency, etc.)
- Memory information (total, available, usage, etc.)
- GPU information (model, memory, driver version, etc.)
- Disk information (total space, free space, usage, etc.)
- Battery information (level, charging status, temperature, etc.)
- Network information (IP addresses, MAC address, etc.)
- Operating system information (name, version, architecture, etc.)

#### API Methods

- `HardwareInfo.getSystemInfo()` - Get all hardware information
- `HardwareInfo.getCpuInfo()` - Get CPU information
- `HardwareInfo.getMemoryInfo()` - Get memory information
- `HardwareInfo.getGpuInfo()` - Get GPU information
- `HardwareInfo.getDiskInfo()` - Get disk information
- `HardwareInfo.getOsInfo()` - Get operating system information
- `HardwareInfo.getBatteryInfo()` - Get battery information
- `HardwareInfo.getNetworkInfo()` - Get network information

#### Data Models

- `SystemInfo` - Complete system information
- `CpuInfo` - CPU information
- `MemoryInfo` - Memory information
- `GpuInfo` - GPU information
- `DiskInfo` - Disk information
- `OsInfo` - Operating system information
- `BatteryInfo` - Battery information
- `NetworkInfo` - Network information

#### Documentation

- Complete README documentation
- Detailed usage guide (USAGE_GUIDE.md)
- Contributing guide (CONTRIBUTING.md)
- Architecture documentation (doc/ARCHITECTURE.md)
- API reference (doc/API.md)
- Code style guide (doc/CODE_STYLE.md)
- Quick reference (doc/QUICK_REFERENCE.md)

#### Example Application

- Complete example application
- Beautiful UI interface
- Real-time refresh functionality
- Information card display

#### Platform Support

| Platform | Status |
| -------- | ------ |
| Windows  | Fully supported |
| Android  | Fully supported |
| iOS      | Planned |
| Linux    | Planned |
| macOS    | Planned |
| Web      | Not supported |

#### Performance

- Fast information retrieval (< 100ms)
- Asynchronous non-blocking calls
- Type-safe API

#### Quality

- Unit test coverage
- Code analysis passed
- Complete documentation
- Example application

#### Future Plans

##### v1.1.0

- iOS platform support
- Linux platform support
- macOS platform support

##### v1.2.0

- More detailed GPU information
- CPU temperature monitoring
- Real-time performance monitoring

##### v2.0.0

- Streaming data updates
- Historical data recording
- Performance analysis tools

---

## 中文

本项目的所有重要更改都将记录在此文件中。
格式基于 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.0.0/)，
本项目遵循 [语义化版本](https://semver.org/lang/zh-CN/)。

### [1.0.0] - 2026-03-08

#### 新增功能

- ✨ 跨平台硬件信息获取功能
- 🖥️ Windows 平台支持
- 📱 Android 平台支持
- 💾 CPU 信息获取（型号、核心数、频率等）
- 🧠 内存信息获取（总量、可用、使用率等）
- 🎮 GPU 信息获取（型号、显存、驱动版本等）
- 💿 磁盘信息获取（总空间、可用空间、使用率等）
- 🔋 电池信息获取（电量、充电状态、温度等）
- 🌐 网络信息获取（IP 地址、MAC 地址等）
- 🖼️ 操作系统信息获取（名称、版本、架构等）

#### API 方法

- `HardwareInfo.getSystemInfo()` - 获取所有硬件信息
- `HardwareInfo.getCpuInfo()` - 获取 CPU 信息
- `HardwareInfo.getMemoryInfo()` - 获取内存信息
- `HardwareInfo.getGpuInfo()` - 获取 GPU 信息
- `HardwareInfo.getDiskInfo()` - 获取磁盘信息
- `HardwareInfo.getOsInfo()` - 获取操作系统信息
- `HardwareInfo.getBatteryInfo()` - 获取电池信息
- `HardwareInfo.getNetworkInfo()` - 获取网络信息

#### 数据模型

- `SystemInfo` - 完整系统信息
- `CpuInfo` - CPU 信息
- `MemoryInfo` - 内存信息
- `GpuInfo` - GPU 信息
- `DiskInfo` - 磁盘信息
- `OsInfo` - 操作系统信息
- `BatteryInfo` - 电池信息
- `NetworkInfo` - 网络信息

#### 文档

- 📖 完整的 README 文档
- 📚 详细的使用指南（USAGE_GUIDE.md）
- 🤝 贡献指南（CONTRIBUTING.md）
- 🏗️ 架构文档（doc/ARCHITECTURE.md）
- 📋 API 参考（doc/API.md）
- 🎨 代码风格指南（doc/CODE_STYLE.md）
- ⚡ 快速参考（doc/QUICK_REFERENCE.md）

#### 示例应用

- 💡 完整的示例应用
- 🎨 美观的 UI 界面
- 🔄 实时刷新功能
- 📊 信息卡片展示

#### 平台支持

| 平台 | 状态 |
| ---- | ---- |
| Windows | ✅ 完全支持 |
| Android | ✅ 完全支持 |
| iOS | 🚧 计划中 |
| Linux | 🚧 计划中 |
| macOS | 🚧 计划中 |
| Web | ❌ 不支持 |

#### 性能

- ⚡ 快速信息获取（< 100ms）
- 🔄 异步非阻塞调用
- 💪 类型安全的 API

#### 质量保证

- ✅ 单元测试覆盖
- ✅ 代码分析通过
- ✅ 完整文档
- ✅ 示例应用

#### 未来计划

##### v1.1.0

- 🍎 iOS 平台支持
- 🐧 Linux 平台支持
- 🍏 macOS 平台支持

##### v1.2.0

- 📊 更详细的 GPU 信息
- 🌡️ CPU 温度监控
- 📈 实时性能监控

##### v2.0.0

- 🔄 流式数据更新
- 📊 历史数据记录
- 🎯 性能分析工具
