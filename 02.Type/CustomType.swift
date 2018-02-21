/*
 * 커스텀 타입
 */

// 딕셔너리를 이용한 복합 데이터
let iu = ["name": "IU", "job": "가수"]

// 데이터 얻어오기
let name = iu["name"]

// 실수로 job/work를 혼합해서 사용. 문법상 오류가 아니다.
let taeri = ["name": "김태리", "work": "배우"]



// struct를 이용한 타입 정의
struct Person {
    var name: String
    var job: String
}

// struct로 정의한 타입으로 데이터 객체 생성
var youngmi = Person(name: "영미", job: "컬링 선수")

// 데이터 얻기
let job = youngmi.job

// 데이터 수정
youngmi.job = "국가대표 컬링 선수"