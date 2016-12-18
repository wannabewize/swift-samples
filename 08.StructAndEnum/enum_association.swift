/*
 * Enum, Association
 */

enum ArrivalStatus {
   case OnTime
   case Dalay(Int)
}

var flight = ArrivalStatus.Dalay(1)


switch flight {
case .OnTime:
   print("제때 도착")
case .Dalay(let hour):
   print("지연 시각 \(hour)")
}
