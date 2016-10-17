//
// label
//
let lower = "abcdef"
let upper = "ABCDEF"


print("== Without Label")

for i in 0...5 {
   for j in lower.characters {
      for k in upper.characters {
         if k == "C" {
            break
         }
         print(i,j,k)
      }
   }
}

print("== With Label")

loop1 : for i in 0...5 {
   loop2 : for j in lower.characters {
      for k in upper.characters {
         if k == "C" {
            break loop2
         }
         print(i,j,k)
      }
   }
}