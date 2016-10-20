import Foundation

//
// 날짜 객체, 타임 인터벌
//

let now = Date() // 현재 시각 객체
print("now : ", now)
let yesterday = Date(timeIntervalSinceNow: (-60*60*24)) // 어제
print("yesterday : ", yesterday)
let tomorrow = now.addingTimeInterval(60 * 60 * 24) // 내일
print("tomorrow : ", tomorrow)

let compare : ComparisonResult = now.compare(yesterday)	// OrderedDescending
print("now compare yesterday : ", compare.rawValue)



let days = floor(yesterday.timeIntervalSince(tomorrow)) / (24*60*60)
print("어제와 내일 사이 : ", days)
let minute = ceil(tomorrow.timeIntervalSinceNow) / 60 // 1440 minutes
print("내일까지 : ", minute)


//
// 날짜 포맷
//

let formatter = DateFormatter()
formatter.timeStyle = .short
// 시간 문자열 ShortStyle 로 얻기
let timeStr = formatter.string(from:now)

let customFormatter = DateFormatter()
customFormatter.dateFormat = "yyyy/MM/dd"

// 날짜 객체에서 문자열 얻기
let tomorrowStr = customFormatter.string(from:tomorrow)
print("내일 : ", tomorrowStr)

// 문자열에서 날짜 객체 얻기
let date = customFormatter.date(from:"2016/12/25")!
print(date)


//
// 칼렌더
//

let calendar = Calendar.current


// 오늘 날짜 정보 얻기

let weekOfYear = calendar.component(.weekOfYear, from: now)
let weekOfMonth = calendar.component(.weekOfMonth, from: now)

// 칼렌더에서 요일과 월
let month = calendar.component(.month, from: now)
let weekday = calendar.component(.weekday, from: now)

// 월은 1부터 시작
let monthStr = calendar.standaloneMonthSymbols[month-1]
print("월 이름 : ", monthStr)
// 요일은 1부터 시작
let weekdayStr = calendar.standaloneWeekdaySymbols[(weekday-1)]
print("요일 : ", weekdayStr)


// 데이트 컴포넌트
var component = DateComponents()
component.year = 2016 		// 2016년
component.weekOfYear = 30 		// 30번째 주
component.weekday = 1 		// 일요일


// 데이터 포매터에서 날짜 객체 생성
if let date = calendar.date(from: component) {
   // 데이터 포매터
   let formatter = DateFormatter()
   formatter.dateFormat = "yyyy/MM/dd"
   
   let dateStr = formatter.string(from:date) 	// 2016/07/17
   print("2016년 30번째주 일요일 : ", dateStr)
}

let what : Set<Calendar.Component> = [.month, .day, .weekday] // 배열에서 Set 생성
let component2 = calendar.dateComponents(what, from: now)

print("월 : ", component2.month) 		// 월
print("일 : ", component2.day)        // 일

