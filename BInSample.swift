//
//  BInSample.swift
//  SwiftAccessControlSample
//
//  Created by ZhuJiang on 17/1/5.
//  Copyright © 2017年 Charles. All rights reserved.
//

import Foundation

public class B {
    open var age: Int?
    
    public var name: String?
    
    public func printName() {
        print("name is \(name)")
    }
    
    fileprivate var moduleName: String?
    
    private var internalName: String?
    
    //默认internal，只能在所属module中使用
    init() {
        age = 0
        name = "B"
        moduleName = "SampleFramework"
        internalName = "InternalName: B"
    }
    
    open func description()->String {
        return "B description"
    }
}


class TestAClass2 {
    let aInstance = A()
    
    func TestControl() -> Void {
        print("\(aInstance.age), \(aInstance.name)")
        ///fileprivate不能访问
        //\(aInstance.moduleName)
    }
}

class AChildModule: A {
    override func description2() {
        
    }
}

///fileprivate,private的class，子类也要标明相应的control

///此种情况下，private相当于fileprivate
private class C {
    
}
private class CChild: C {
    
}
