import Foundation

let now = NSDate() // 현재 시각 객체
let yesterday = NSDate(timeIntervalSinceNow: (-60*60*24)) // 어제
let tomorrow = now.dateByAddingTimeInterval(60 * 60 * 24) // 내일


let compare = now.compare(yesterday)	// OrderedDescending
print("now compare yesterday : ", compare.rawValue)
let earlier = now.earlierDate(yesterday)	// yesterday
print("Earlier Date : ", earlier)
let later = now.laterDate(tomorrow)	// tomorrow
print("Later Date : ", later)

let days = floor(yesterday.timeIntervalSinceDate(tomorrow)) / (24*60*60)
print("어제와 내일 사이 : ", days)
let minute = ceil(tomorrow.timeIntervalSinceNow) / 60 // 1440 minutes
print("내일까지 : ", minute)


let formatter = NSDateFormatter()
formatter.timeStyle = .ShortStyle
// 시간 문자열 ShortStyle 로 얻기
let timeStr = formatter.stringFromDate(now)

let customFormatter = NSDateFormatter()
customFormatter.dateFormat = "yyyy/MM/dd"

// 날짜 객체에서 문자열 얻기
let tomorrowStr = customFormatter.stringFromDate(tomorrow)
print("내일 : ", tomorrowStr)

// 문자열에서 날짜 객체 얻기
let date = customFormatter.dateFromString("2016/12/25")!

let calendar = NSCalendar.currentCalendar()

// 연과 월 기준 주차
let weekOfYear = calendar.component(NSCalendarUnit.WeekOfYear, fromDate: now)
let weekOfMonth = calendar.component(NSCalendarUnit.WeekOfMonth, fromDate: now)


// 칼렌더에서 요일과 월
let month = calendar.component(NSCalendarUnit.Month, fromDate: now)
let weekday = calendar.component(NSCalendarUnit.Weekday, fromDate: now)

// 월은 1부터 시작
let monthStr = calendar.standaloneMonthSymbols[month-1] as String
// 요일은 1부터 시작
let weekdayStr = calendar.standaloneWeekdaySymbols[(weekday-1)] as String


// 데이트 컴포넌트
let component = NSDateComponents()
component.year = 2016 		// 2016년
component.weekOfYear = 30 		// 30번째 주
component.weekday = 1 		// 일요일


// 데이터 포매터에서 날짜 객체 생성
if let date = calendar.dateFromComponents(component) {
   // 데이터 포매터
   let formatter = NSDateFormatter()
   formatter.dateFormat = "yyyy/MM/dd"
   
   let dateStr = formatter.stringFromDate(date) 	// 2016/07/17
   print("2016년 30번째주 일요일 : ", dateStr)
}

let flag : NSCalendarUnit = [.Month, .Day, .Weekday]
let component2 = calendar.components(flag, fromDate: now)

print("월 : ", component2.month) 		// 월
print("일 : ", component2.day)        // 일