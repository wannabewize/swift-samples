import UIKit
import MyModule

func doAccessLevelExample() {

   // internal access level은 외부 모듈에서 접근 불가
//   let internalObj = InternalLibClass()
   
   // public access level 클래스
   let publicObj = PublicLibClass()
   publicObj.publicMethod()
   
   // open access level이 아니면 상속 불가
//   class ChildPubClass : PublicLibClass {
//   
//   }
   
   
   // open access level 클래스
   let openObj = OpenLibClass()
   openObj.openMethod()
   openObj.publicMethod()
   
   // open access level은 상속 가능
   class ChildOpenClass : OpenLibClass {
      
   }
}

class ViewController: UIViewController {

   override func viewDidLoad() {
      super.viewDidLoad()
      
      doAccessLevelExample()
      
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }


}

