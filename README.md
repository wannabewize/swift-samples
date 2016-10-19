# Swift3 Samples
Swift3 Samples

현재 Swift2 -> Swift3 예제 작성 중

## 01.변수와 상수, 데이터타입(Data)
- 변수와 상수, 타입
   * variable : 변수
   * constant : 상수
   * typeInfo : 타입 정보 얻기
- 기본 타입
   * type_Bool : 부울 타입
   * type_Int : 정수형 타입
   * type_Float : 실수형 타입
   * type_Character : Character 타입
   * type_String : 문자열 타입
   * type_String_compare : 문자열 비교
   * type_String_modify : 문자열 수정
   * type_String_operation : 문자열 다루기
   * type_String_views : 문자열과 뷰
- 다수의 데이터 다루기
   * type_Tuple : 튜플
   * type_Array : 배열
   * type_Dictionary : 딕셔너리 타입
   * type_Set : 셋 타입
- 밸류 타입
   * valuetype : 밸류 타입   

## 02.제어문(Controls)
- 반목문
   * for : for 반복문
   * while : while, repeat-while 반복문
   * label : label을 이용한 흐름 제어문

- 조건문
   * if : if 조건문
   * switch-case : switch-case
   * guard : guard
   * version-check : #avilable을 이용한 플랫폼, 버전 체크
   
## 03.옵셔널(Optional)
   * optional : 옵셔널 타입, 옵셔널 체임, ?? 연산자
   * optional_binding : if와 guard를 이용한 옵셔널 바인딩
   * forcedUnwrapping : 강제 언래핑, 암시적 언래핑 옵셔널 타입(IUO)

## 04.함수(Function)
   * basic : 함수 기본, 반환값
   * parameter : 함수 파라미터, 외부 파라미터 설정
   * overroading : 함수 오버로딩(클래스/구조체에도 동일 적용)
   * defaultValue_parameter : 기본값을 가진 파라미터
   * varidic_parameter : 가변 길이 파라미터
   * inout_parameter : Inout 파라미터
   * optioanl : 파라미터나 반환으로 nil 다루기

## 05.클래스(Class), 메소드

- 클래스 정의, 객체 생성, 프로퍼티, 메소드
   * basic : 클래스 정의와 객체 생성, 프로퍼티
   * computed_property : 계산 프로퍼티
   * referenceType : 레퍼런스 타입 객체
   * method.swift : 메소드 정의와 호출
   
- Initializer, Deinit
   * innitializer : Designated Initializer
   * initializer_convenience : Convenince Initializer
   * initializer_failalbe : Failable Initializer
   * deinit : Deinitializer 
- 타입 메소드, 프로퍼티, 프로퍼티 감시
   * type_method : 타입 메소드
   * type_property : 타입 프로퍼티
   * property_observing : 프로퍼티 감시
   * property_lazy : 늦은 프로퍼티 초기화
   
## 07.ARC
- 객체 생성과 해제, 소유권
   * basic : 객체 생성과 소유, 객체 해제
   * scope : 스코프에 의한 소유권 해제와 객체 해제
   * collection : 콜렉션에 의한 객체 소유와 해제
- 객체 순환 참조(소유), 약한 참조
   * referenceCycle : 강한 순환 참조로 인한 객체가 해제되지 않는 상황
   * weak : 객체를 소유하지 않는 약한 참조(weak reference) 
   * unowned : 객체를 소유하지 않는 약한 참조 중 unowned

## 08.클래스 상속(Inheritance)
- 상속, 재정의
   * override : 상속과 재정의
   * super_self.swift
- 상속과 Initializer
   * initializer_inherite1 : Initializer 상속
   * initializer_inherite2 : Initializer 상속
   * initializer_required : required Initializer
 
- 자식 클래스의 Initializer
   * initializer_in_child1 : 자식 클래스의 Designated Initializer
   * initializer_in_child2 : 자식 클래스의 Convenience Initializer  
   * initializer_override1 : Initializer 재정의
   * initializer_override2 : Failable initializer 재정의
   * two_phase_initialization : 2단계 초기화      
   
## 09.구조체와 Enum
- 구조체
   * struct : 구조체, 프로퍼티와 메소드, Initializer
   * struct_static : 타입 프로퍼티와 메소드
   * struct_mutation : 밸류 타입 상태 변경
- 밸류 타입과 레퍼런스 타입
   * valueType_referenceType : 밸류 타입과 레퍼런스 타입 비교
- Enum
   * enum: Enum 정의, switch, rawvalue
   * enum_method : Enum에 메소드, 프로퍼티 작성
   * enum_association : Enum과 Association
   
## 10.프로토콜(Protocol)
- 프로토콜
   * basic : 프로토콜 선언, 클래스와 구조체 채택
   * type_method : 프로토콜 내 타입 메소드 선언
   * static_method : 프로토콜 내 타입 메소드
   * property : 프로토콜 내 프로퍼티 선언
   * initializer : 프로토콜 내 Initializer 선언
   * protocol_type : 프로토콜을 타입으로 사용
   * class_only : 클래스 전용 프로토콜

## 11.클로저(Closure)
- 클로저
   * function_object : 함수를 객체로 다루기
   * function_type : 함수 타입
   * array_sort : 배열의 API에서 클로저 사용
   * closure_api : 클로저 사용 함수 작성하기
   * closure_inClass.swift : 클래스 내 메소드와 프로퍼티로 사용하기
   * capture.swift : 클로저와 캡춰
   * capture_reference : 클로저와 객체 캡춰, 캡춰시 객체 소유하지 않기(unowned)
   * escaping : non-escaping, escaping 클로저
   * autoclosure : autoclosure
   
## 12.에러 처리(Error Handling)
- 에러 정의, 에러 다루기
   * error : 에러 정의, 에러 발생과 다루기
   * error_function : 에러가 발생하는 함수 작성, 호출. 반환값
   * error_propagation : 에러 전파
   * error_closure : 에러 발생 클로저 사용하기.
   * defer : defer를 이용한 예외 상황 마무리 동작
   
## 13.Extension
- 확장
   * extension.swift
   * subscript.swift : 첨자 표기, 확장
   * nested_type.swift : 중첩 타입
   * protocol_extension.swift

## 14.Operator
- 연산자 정의
   * overloading.swift
   * equal.swift : 동등 연산자 작성
   * custom_operator.swift : 새로운 연산자 정의
   
## 15.TypeCheck
- AnyType, 타입 체크, 타일 알리아스
   * type_check.swift : is를 이용한 타입 체크, as를 이용한 타입 변환
   * any.swift
   * typealias.swift
   
## 16.Generic
- 작성중

## 17.접근 조절
- 작성중

## 18.디자인 패턴
- 디자인 패턴
   * singleton.swift : 싱글턴 패턴
   
## 19.파운데이션
- NSObject
   * nsobject_equal.swift : 객체 비교 isEqual(_:)
   * selector.swift : Selector
   * description.swift
- Protocol
   * protocol_optional.swift : 옵셔널 항목
- 문자열
   * string1.swift
   * string2.swift
   * string_file.swift : 문자열 저장
   * string_mutable.swift : NSMutableString
- 배열
   * array.swift
   * array_file.swift
   * array_mutable.swift
- 딕셔너리
   * dictionary.swift
- 날짜와 시간 
   * date.swift
- 파일 다루기
   * fm_read.swift
   * fm_list.swift
   * fm_copyremove.swift
- 직렬화
   * archive1.swift : NSKeyedArchiver, Unarchiver
   * archive2.swift : Custom Class, NSCoding
- 알림
   * notification.swift
- 멀티쓰레드
   * thread1.swift
   * thread2.swift
- 네트워크
   * resource_get.swift
   * jsonParsing1.swift
   * jsonParsing2.swift