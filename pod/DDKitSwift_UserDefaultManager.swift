//
//  DDUserDefaultManager+zxkit.swift
//  DDUserDefaultManager
//
//  Created by Damon on 2021/7/15.
//

import Foundation
import DDKitSwift
import DDUserDefaultManager

func UIImageHDBoundle(named: String?) -> UIImage? {
    guard let name = named else { return nil }
    guard let bundlePath = Bundle(for: UserDefaultManagerZXKit.self).path(forResource: "userDefaultManager-zxkit", ofType: "bundle") else { return UIImage(named: name) }
    guard let bundle = Bundle(path: bundlePath) else { return UIImage(named: name) }
    return UIImage(named: name, in: bundle, compatibleWith: nil)
}

extension String{
    var ZXLocaleString: String {
        guard let bundlePath = Bundle(for: UserDefaultManagerZXKit.self).path(forResource: "userDefaultManager-zxkit", ofType: "bundle") else { return NSLocalizedString(self, comment: "") }
        guard let bundle = Bundle(path: bundlePath) else { return NSLocalizedString(self, comment: "") }
        let msg = NSLocalizedString(self, tableName: nil, bundle: bundle, value: "", comment: "")
        return msg
    }
}

class UserDefaultManagerZXKit: NSObject {
    
}

extension DDUserDefaultManager: DDKitSwiftPluginProtocol {
    public var pluginIdentifier: String {
        return "com.zxkit.userDefaultManager"
    }

    public var pluginIcon: UIImage? {
        return UIImageHDBoundle(named: "DDUserDefaultManager")
    }

    public var pluginTitle: String {
        return "UserDefaultManager".ZXLocaleString
    }

    public var pluginType: DDKitSwiftPluginType {
        return .data
    }

    public var isRunning: Bool {
        return false
    }
    
    public func willStart() {
        DDKitSwift.hide()
    }

    public func stop() {

    }
}

