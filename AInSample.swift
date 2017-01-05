//
//  AInSample.swift
//  SwiftAccessControlSample
//
//  Created by ZhuJiang on 17/1/4.
//  Copyright © 2017年 Charles. All rights reserved.
//

import Foundation

open class A {
    open var age: Int?
    
    public var name: String?
    
    public func printName() {
        print("name is \(name)")
    }
    
    fileprivate var moduleName: String?
    
    private var internalName: String?
    
    //public/open 才能在导入framework的文件中使用
    public init() {
        age = 0
        name = "A"
        moduleName = "SampleFramework"
        internalName = "InternalName: A"
    }
    
    open func description()->String {
        return "A description"
    }

}

class TestAClass {
    let aInstance = A()
    
    func TestControl() -> Void {
        print("\(aInstance.age), \(aInstance.name), \(aInstance.moduleName)")
        /// 超出所在区域
//        aInstance.interalName
    }
}
