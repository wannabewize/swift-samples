import Foundation

let url = URL(string: "http://google.com")!
let str = try? String(contentsOf: url)

print(str)


let url2 = URL(string: "http://www.ibiblio.org/wm/paint/auth/munch/munch.scream.jpg")!
let data = try? Data(contentsOf: url2)

print(data?.count)