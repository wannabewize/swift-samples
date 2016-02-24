import Foundation

let now = NSDate() // 현재 시각 객체
let yesterday = NSDate(timeIntervalSinceNow: (-60*60*24)) // 어제
let tomorrow = now.dateByAddingTimeInterval(60 * 60 * 24) // 내일


now.compare(yesterday) == NSComparisonResult.OrderedDescending	// OrderedDescending
now.earlierDate(yesterday)	// yesterday
now.laterDate(tomorrow)	// tomorrow


floor(yesterday.timeIntervalSinceDate(tomorrow)) / (24*60*60)
ceil(tomorrow.timeIntervalSinceNow) / 60 // 1440 minutes



let formatter = NSDateFormatter()
formatter.timeStyle = .ShortStyle
// 시간 문자열 ShortStyle 로 얻기
let timeStr = formatter.stringFromDate(now)

let customFormatter = NSDateFormatter()
customFormatter.dateFormat = "yyyy/MM/dd"

// 날짜 객체에서 문자열 얻기
let dateStr = customFormatter.stringFromDate(tomorrow)

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
   
   formatter.stringFromDate(date) 	// 2016/07/17
}


let flag : NSCalendarUnit = [.Month, .Day, .Weekday]
let component2 = calendar.components(flag, fromDate: now)

component2.month 		// 월
component2.day        // 일