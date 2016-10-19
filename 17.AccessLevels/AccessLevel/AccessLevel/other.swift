//
//  privateFile.swift
//  AccessLevel
//
//  Created by wannabewize on 2016. 10. 20..
//  Copyright © 2016년 VanillaStep. All rights reserved.
//

import Foundation

fileprivate struct FilePrivateStruct {

   fileprivate func filePrivateFunc() {
      print("filePrivate function works")
   }
   
   private func privateFunc() {
      print("private function works")
   }
}

func testRunner() {
   let obj = FilePrivateStruct()
   obj.filePrivateFunc()
   //obj.privateFunc() // Error
}

struct InternalStruct {
   
   fileprivate func filePrivateFunc() {
      print("filePrivate function works")
   }
   
   private func privateFunc() {
      print("private function works")
   }
   
   func internalFunc() {
      print("internal function works")
   }
}

public struct PublicClass {
   public func publicMethod() {
      print("public method in public class works")
   }
   
   internal func internalMethod() {
      print("internal method in public class works")
   }
   
   fileprivate func fileprivateMethod() {
      print("fileprivate method in public class works")
   }
   
   private func privateMethod() {
      print("private method in public class works")
   }
}


