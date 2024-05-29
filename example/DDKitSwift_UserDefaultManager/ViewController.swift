//
//  ViewController.swift
//  userDefaultManager-zxkit
//
//  Created by Damon on 2023/4/14.
//

import UIKit
import DDKitSwift
import DDUserDefaultManager

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.createUI()
        DDKitSwift.regist(plugin: DDKitSwift_UserDefaultManager())
    }

    func createUI() {
        self.view.backgroundColor = UIColor.white
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 60))
        button.setTitle("写入数据", for: .normal)
        button.backgroundColor = UIColor.red
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(_writeData), for: .touchUpInside)

        let button2 = UIButton(frame: CGRect(x: 100, y: 200, width: 100, height: 60))
        button2.setTitle("打开浏览器", for: .normal)
        button2.backgroundColor = UIColor.red
        self.view.addSubview(button2)
        button2.addTarget(self, action: #selector(_openBrowser), for: .touchUpInside)
    }

    @objc func _writeData() {
        UserDefaults.standard.setValue("DDUserDefaultManager", forKey: "UserDefault")
    }


    @objc func _openBrowser() {
        DDKitSwift.show()
    }

}

