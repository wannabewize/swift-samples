/*
 * Enum, Association
 */

enum ArrivalStatus {
   case onTime
   case delay(Int)
}

var flight = ArrivalStatus.delay(1)

switch flight {
case .onTime:
   print("제때 도착")
case .delay(let hour):
   print("지연 시각 \(hour)")
}
