//
//  AccessVerify.swift
//  SwiftAccessControlSample
//
//  Created by ZhuJiang on 17/1/4.
//  Copyright © 2017年 Charles. All rights reserved.
//


/// Notice this file is not in SampleFramework
import Foundation
import SampleFramework

class VerifyABClass {
    let aInstance = A()
    
    func TestControl() -> Void {
        print("\(aInstance.age), \(aInstance.name)")
        /// fileprivate 不能访问
        //aInstance.moduleName
    }
    
    ///B()默认internal，只能在所属module内使用
    //    let bInstance = B()
    
    
    
}


		
