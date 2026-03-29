# Changelog | 更新日志

## Table of Contents | 目录

- [English](#english)
- [中文](#中文)

---

## English

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

### [1.0.2] - 2026-03-29

#### Fixed

- Fixed Android plugin loading error caused by incorrect package name configuration
- Updated Android package from `com.example.hardware_info_kit` to `dev.fluttercommunity.hardware_info_kit`
- Implemented complete Android native plugin with full hardware information support
- Fixed missing Android plugin class implementation
- Updated test files to match new package structure

### [1.0.1] - 2026-03-16

#### Added

- Complete dartdoc documentation for all public APIs
- Comprehensive documentation for all data models
- Usage examples in API documentation
- Pub.dev release checklist and summary documents

#### Improved

- Enhanced library-level documentation with quick start guide
- Better organized API documentation
- Improved code examples in documentation

#### Fixed

- Fixed package documentation formatting for pub.dev compliance
- Corrected minor typos in API documentation
- Updated build configurations for better compatibility

### [1.0.0] - 2026-03-08

#### Added

- Initial release of hardware_info_kit
- Multi-platform hardware information retrieval
- CPU information (architecture, processors, frequency)
- Memory information (total, used, free, usage percentage)
- Disk information (total, used, free, usage percentage)
- Battery information (level, isCharging, health, technology)
- GPU information (vendor, renderer, version)
- System information (manufacturer, model, product, brand, etc.)
- Network information (isConnected, type, ssid, ipAddress)
- Cross-platform support (Android, Windows)

#### Core Features

- **HardwareInfo**: Main hardware information retrieval class
- **CpuInfo**: CPU information model
- **MemoryInfo**: Memory information model
- **DiskInfo**: Disk information model
- **BatteryInfo**: Battery information model
- **GpuInfo**: GPU information model
- **SystemInfo**: System information model
- **NetworkInfo**: Network information model

#### Platform Support

- ✅ Android (API 21+)
- ✅ Windows (Windows 10+)

#### Documentation

- Complete README with usage examples
- Quick start guide
- API documentation
- Example app with polished UI
- English language support

#### Dependencies

- flutter: SDK dependency
- plugin_platform_interface: ^2.0.2

#### Technical Features

- Asynchronous API, non-blocking main thread
- Comprehensive error handling
- Detailed hardware information retrieval
- Cross-platform support
- Singleton pattern design

#### Example Code

The project includes a complete example app demonstrating all features:

- CPU information retrieval
- Memory information retrieval
- Disk information retrieval
- Battery information retrieval
- GPU information retrieval
- System information retrieval
- Network information retrieval

#### Contributors

Thanks to all developers who contributed to this project!

---

## 中文

本项目的所有重要变更都将记录在此文件中。

日志格式基于 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.0.0/)，
项目版本遵循 [语义化版本](https://semver.org/lang/zh-CN/)。

### [1.0.2] - 2026-03-29

#### 修复

- 修复了由错误的包名配置导致的 Android 插件加载错误
- 将 Android 包名从 `com.example.hardware_info_kit` 更新为 `dev.fluttercommunity.hardware_info_kit`
- 实现了完整的 Android 原生插件，支持全面的硬件信息检索
- 修复了缺失的 Android 插件类实现
- 更新了测试文件以匹配新的包结构

### [1.0.1] - 2026-03-16

#### 新增功能

- 为所有公共 API 添加了完整的 DartDoc 文档
- 为所有数据模型添加了全面的文档
- 在 API 文档中添加了使用示例
- Pub.dev 发布检查清单和总结文档

#### 改进

- 增强了库级文档，添加快速入门指南
- 更好地组织了 API 文档
- 改进了文档中的代码示例

#### 修复

- 修复了包文档格式，符合 pub.dev 要求
- 修正了 API 文档中的小拼写错误
- 更新了构建配置以获得更好的兼容性

### [1.0.0] - 2026-03-08

#### 新增功能

- hardware_info_kit 首次发布
- 跨平台硬件信息检索
- CPU 信息（架构、处理器、频率）
- 内存信息（总量、已用、空闲、使用百分比）
- 磁盘信息（总量、已用、空闲、使用百分比）
- 电池信息（电量、充电状态、健康状况、技术）
- GPU 信息（供应商、渲染器、版本）
- 系统信息（制造商、型号、产品、品牌等）
- 网络信息（连接状态、类型、SSID、IP地址）
- 跨平台支持（Android、Windows）

#### 核心功能

- **HardwareInfo**: 主要的硬件信息检索类
- **CpuInfo**: CPU 信息模型
- **MemoryInfo**: 内存信息模型
- **DiskInfo**: 磁盘信息模型
- **BatteryInfo**: 电池信息模型
- **GpuInfo**: GPU 信息模型
- **SystemInfo**: 系统信息模型
- **NetworkInfo**: 网络信息模型

#### 平台支持

- ✅ Android (API 21+)
- ✅ Windows (Windows 10+)

#### 文档

- 包含使用示例的完整 README
- 快速入门指南
- API 文档
- 带有精美 UI 的示例应用
- 中文语言支持

#### 依赖项

- flutter: SDK 依赖
- plugin_platform_interface: ^2.0.2

#### 技术特性

- 异步 API，不阻塞主线程
- 完善的错误处理机制
- 详细的硬件信息检索
- 跨平台支持
- 单例模式设计

#### 示例代码

项目包含完整的示例应用，展示所有功能的使用方法：

- CPU 信息检索
- 内存信息检索
- 磁盘信息检索
- 电池信息检索
- GPU 信息检索
- 系统信息检索
- 网络信息检索

#### 贡献者

感谢所有为本项目做出贡献的开发者！

---

## 版本说明

- **主版本号**: 不兼容的 API 变更
- **次版本号**: 向下兼容的功能新增
- **修订号**: 向下兼容的问题修正

## 反馈与支持

如有问题或建议，请访问：

- GitHub Issues: [https://github.com/h1s97x/HardwareInfoKit/issues](https://github.com/h1s97x/HardwareInfoKit/issues)
- GitHub 仓库: [https://github.com/h1s97x/HardwareInfoKit](https://github.com/h1s97x/HardwareInfoKit)

## 许可证

本项目采用 MIT 许可证，详见 LICENSE 文件。
