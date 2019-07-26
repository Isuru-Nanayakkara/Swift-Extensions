import UIKit

extension UIDevice {
    
    var isPad: Bool {
        return userInterfaceIdiom == .pad
    }
    
    var isPhone: Bool {
        return userInterfaceIdiom == .phone
    }
    
    var isTV: Bool {
        return userInterfaceIdiom == .tv
    }
    
    @available(iOS 9.0, *)
    var isLowPowerModeEnabled: Bool {
        return ProcessInfo.processInfo.isLowPowerModeEnabled
    }
    
    var uptime: TimeInterval {
        return ProcessInfo.processInfo.systemUptime
    }
    
    var uptimeDate: Date {
        return Date(timeIntervalSinceNow: -uptime)
    }
    
    var isJailbroken: Bool {
        return UIApplication.shared.canOpenURL(URL(string: "cydia://")!) || FileManager.default.fileExists(atPath: "/bin/bash")
    }
    
    var osVersion: String {
        return systemVersion
    }
    
    var hardwareModel: String {
        var name: [Int32] = [CTL_HW, HW_MACHINE]
        var size: Int = 2
        sysctl(&name, 2, nil, &size, nil, 0)
        var hw_machine = [CChar](repeating: 0, count: Int(size))
        sysctl(&name, 2, &hw_machine, &size, nil, 0)
        
        let hardware: String = String(cString: hw_machine)
        return hardware
    }
    
    var cpuFrequency: Int {
        return getSysInfo(HW_CPU_FREQ)
    }
    
    var busFrequency: Int {
        return getSysInfo(HW_TB_FREQ)
    }
    
    var ramSize: Int {
        return getSysInfo(HW_MEMSIZE)
    }
    
    var cpusNumber: Int {
        return getSysInfo(HW_NCPU)
    }
    
    var totalMemory: Int {
        return getSysInfo(HW_PHYSMEM)
    }
    
    var userMemory: Int {
        return getSysInfo(HW_USERMEM)
    }
    
    fileprivate func getSysInfo(_ typeSpecifier: Int32) -> Int {
        var name: [Int32] = [CTL_HW, typeSpecifier]
        var size: Int = 2
        sysctl(&name, 2, nil, &size, nil, 0)
        var results: Int = 0
        sysctl(&name, 2, &results, &size, nil, 0)
        
        return results
    }
    
    var totalDiskSpace: NSNumber {
        do {
            let attributes = try FileManager.default.attributesOfFileSystem(forPath: NSHomeDirectory())
            return attributes[.systemSize] as? NSNumber ?? NSNumber(value: 0.0)
        } catch {
            return NSNumber(value: 0.0)
        }
    }
    
    var freeDiskSpace: NSNumber {
        do {
            let attributes = try FileManager.default.attributesOfFileSystem(forPath: NSHomeDirectory())
            return attributes[.systemFreeSize] as? NSNumber ?? NSNumber(value: 0.0)
        } catch {
            return NSNumber(value: 0.0)
        }
    }
    
}
