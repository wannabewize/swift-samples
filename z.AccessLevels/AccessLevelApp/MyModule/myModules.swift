public class PublicLibClass {
   public func publicMethod() {
      print("public method works")
   }
   
   internal func internalMethod() {
      print("internal method works")
   }
   
   // 다른 모듈에서 객체 생성을 하려면 public 이상의 initializer가 필요
   public init() {
   }
}

open class OpenLibClass {
   open func openMethod() {
      print("open method works")
   }
   
   public func publicMethod() {
      print("public method works")
   }
   
   public init() {
      
   }
}

internal class InternalLibClass {
   func internalMethod() {
      print("internal method works")
   }
   
   public init() {
   }
}
