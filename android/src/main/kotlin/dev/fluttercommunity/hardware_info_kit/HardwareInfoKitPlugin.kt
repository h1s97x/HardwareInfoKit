package dev.fluttercommunity.hardware_info_kit

import android.os.Build
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import java.io.File

/** HardwareInfoKitPlugin */
class HardwareInfoKitPlugin : FlutterPlugin, MethodCallHandler {
    private lateinit var channel: MethodChannel
    private val mActivity = null // Will be used for context if needed

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "hardware_info_kit")
        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        when (call.method) {
            "getPlatformVersion" -> {
                result.success("Android ${android.os.Build.VERSION.RELEASE}")
            }
            "getCpuInfo" -> {
                result.success(getCpuInfo())
            }
            "getMemoryInfo" -> {
                result.success(getMemoryInfo())
            }
            "getDiskInfo" -> {
                result.success(getDiskInfo())
            }
            "getBatteryInfo" -> {
                result.success(getBatteryInfo())
            }
            "getGpuInfo" -> {
                result.success(getGpuInfo())
            }
            "getSystemInfo" -> {
                result.success(getSystemInfo())
            }
            "getNetworkInfo" -> {
                result.success(getNetworkInfo())
            }
            else -> {
                result.notImplemented()
            }
        }
    }

    private fun getCpuInfo(): Map<String, Any?> {
        val runtime = Runtime.getRuntime()
        val availableProcessors = runtime.availableProcessors()
        
        return mapOf(
            "architecture" to System.getProperty("os.arch"),
            "processors" to availableProcessors,
            "maxFrequency" to null, // Requires root access
            "currentFrequency" to null // Requires root access
        )
    }

    private fun getMemoryInfo(): Map<String, Any?> {
        val runtime = Runtime.getRuntime()
        val maxMemory = runtime.maxMemory() / (1024 * 1024) // MB
        val totalMemory = runtime.totalMemory() / (1024 * 1024) // MB
        val freeMemory = runtime.freeMemory() / (1024 * 1024) // MB
        val usedMemory = totalMemory - freeMemory
        
        return mapOf(
            "total" to maxMemory,
            "used" to usedMemory,
            "free" to freeMemory,
            "usagePercentage" to ((usedMemory.toDouble() / maxMemory) * 100).toInt()
        )
    }

    private fun getDiskInfo(): List<Map<String, Any?>> {
        val diskInfoList = mutableListOf<Map<String, Any?>>()
        
        try {
            // Get root directory info
            val root = File("/")
            val total = root.totalSpace / (1024 * 1024 * 1024) // GB
            val free = root.freeSpace / (1024 * 1024 * 1024) // GB
            val used = total - free
            
            diskInfoList.add(mapOf(
                "path" to "/",
                "total" to total,
                "used" to used,
                "free" to free,
                "usagePercentage" to ((used.toDouble() / total) * 100).toInt()
            ))
        } catch (e: Exception) {
            // Handle exception
        }
        
        return diskInfoList
    }

    private fun getBatteryInfo(): Map<String, Any?> {
        return mapOf(
            "level" to null, // Requires BatteryManager
            "isCharging" to null, // Requires BatteryManager
            "health" to null, // Requires BatteryManager
            "technology" to null // Requires BatteryManager
        )
    }

    private fun getGpuInfo(): Map<String, Any?> {
        val glRenderer = android.opengl.GLES20.glGetString(android.opengl.GLES20.GL_RENDERER)
        val glVendor = android.opengl.GLES20.glGetString(android.opengl.GLES20.GL_VENDOR)
        val glVersion = android.opengl.GLES20.glGetString(android.opengl.GLES20.GL_VERSION)
        
        return mapOf(
            "vendor" to glVendor,
            "renderer" to glRenderer,
            "version" to glVersion
        )
    }

    private fun getSystemInfo(): Map<String, Any?> {
        return mapOf(
            "manufacturer" to Build.MANUFACTURER,
            "model" to Build.MODEL,
            "product" to Build.PRODUCT,
            "brand" to Build.BRAND,
            "device" to Build.DEVICE,
            "board" to Build.BOARD,
            "hardware" to Build.HARDWARE,
            "serial" to if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
                Build.getSerial()
            } else {
                Build.SERIAL
            },
            "bootloader" to Build.BOOTLOADER,
            "androidVersion" to Build.VERSION.RELEASE,
            "sdkVersion" to Build.VERSION.SDK_INT,
            "buildType" to Build.TYPE,
            "buildTags" to Build.TAGS,
            "buildTime" to Build.TIME,
            "fingerprint" to Build.FINGERPRINT,
            "host" to Build.HOST,
            "user" to Build.USER
        )
    }

    private fun getNetworkInfo(): Map<String, Any?> {
        return mapOf(
            "isConnected" to null, // Requires ConnectivityManager
            "type" to null, // Requires ConnectivityManager
            "ssid" to null, // Requires WifiManager and location permissions
            "ipAddress" to null // Requires ConnectivityManager
        )
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }
}
