import Cocoa

let urlStr = "http://images.apple.com/v/imac-with-retina/a/images/overview/intro_fallback_xlarge.jpg"
let url = NSURL(string: urlStr)!

if let data = NSData(contentsOfURL: url) {
   print("size : \(data.length)")
   let image = NSImage(data: data)
}


