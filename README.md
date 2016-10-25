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
   * type_String_operation : 문자열 인덱스(String.Index)를 이용한 문자열 다루기
   * type_String_views : 문자열과 뷰
- 다수의 데이터 다루기
   * type_Tuple : 튜플
   * type_Array : 배열
   * type_Dictionary : 딕셔너리 타입
   * complex_Collection : 복합 타입 : 2차원 배열, 배열과 딕셔너리 혼합 사용
   * type_Set : 셋 타입
- 밸류 타입
   * valueType : 밸류 타입의 특징. 배열을 사용한 예제

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
   * optional : 옵셔널 타입, 옵셔널 체d인, ?? 연산자
   * optional_binding : if와 guard를 이용한 옵셔널 바인딩
   * forcedUnwrapping : 강제 언래핑, 암시적 언래핑 옵셔널 타입(IUO)

## 04.함수(Function)
   * function : 함수 기본, 반환값
   * parameter : 함수 파라미터, 외부 파라미터 설정
   * overloading : 같은 함수 이름 but 다른 함수 파라미터 타입, 다른 외부 파라미터 이름.
   * parameter_defaultValue : 기본값을 가진 파라미터
   * parameter_varidic : 가변 길이 파라미터
   * parameter_inout : Inout 파라미터   
   * optioanl : 파라미터나 반환으로 nil 다루기
   * nested_function : 함수 내부에 함수 정의하기

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
   * struct : 구조체, 프로퍼티와 메소드, Initializer
   * struct_static : 타입 프로퍼티와 메소드
   * struct_mutation : 밸류 타입 상태 변경
   * valueType_referenceType : 밸류 타입과 레퍼런스 타입 비교
   * enum: Enum 정의, switch, rawvalue
   * enum_method : Enum에 메소드, 프로퍼티 작성
   * enum_association : Enum과 Association
   * nestedType : 중첩 타입
   
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
   
## 12.TypeCheck
   * any : Any, AnyObject 타입. 동적인 타입 변경   
   * type_check : is를 이용한 타입 체크
   * type_cast : as를 이용한 타입 변환   
   * typealias : 타입 알리아스
   
## 13.에러 처리(Error Handling)
- 에러 정의, 에러 다루기
   * error : 에러 정의, 에러 발생과 다루기
   * error_function : 에러가 발생하는 함수 작성, 호출. 반환값
   * error_propagation : 에러 전파
   * error_closure : 에러 발생 클로저 사용하기.
   * defer : defer를 이용한 예외 상황 마무리 동작
   
## 14.Extension
   * extension : 타입 확장
   * extension_struct_enum : 구조체와 Enum 확장
   * extension_existingType : 기존 타입 확장(String)
   * protocol_extension : 프로토콜 확장

## 15.Generics
   * generics : 배열과 딕셔너리 타입별 객체 생성과 사용
   * customGenerics : 제네릭스로 타입 추상화된 함수와 타입 작성하기

## 16.Operator
   * overloading : 연산지 오버로딩
   * equal : 객체 비교 연산자 오버로딩
   * custom_operator : 새로운 연산자 선언, 정의
   * subscript : 첨자 표기   

## 17.접근 조절
   * AccessLevel : 커맨드라인 프로젝트 내 프레임워크를 사용한 접근 조절 예제. 동작안하니 코드 작성과 컴파일만 참고.
   * AccessLevelApp : iOS 프로젝트 내 프레임워크를 사용한 접근 조절 예제. 동작함.

## 18.디자인 패턴
   * singleton : 싱글톤 패턴
   
## 19.파운데이션
- NSObject
   * nsobject_equal : NSObject와 객체 비교 isEqual(_:)
   * nsobject_typecheck : NSObject와 객체 비교 : isKind(of:), isMember(of:)
   * selector : Selector
   * selector_ambiguous : Selector Ambiguous 에러와 해결 방법
   * selector_perform : 셀렉터 동작 검사와 실행
   * nsobject_description : 객체 설명
- Protocol
   * protocol_optional : 프로토콜 내 선택적 구현 항목   
- 문자열
   * string1, string2 : NSString, String 다루기와 비교
   * string_fileIO : 문자열 저장
   * string_referenceType : Reference 타입인 NSString
   * string_mutable : NSMutableString
- 배열
   * array : NSArray, Array 비교, 다루기
   * array_file : 배열 파일 저장
   * array_mutable : Mutable Array
- 딕셔너리
   * dictionary : Dictioanry, NSDictionary 비교, 다루기
   * dictionary_file : 딕셔너리 파일 저장
- 날짜와 시간 
   * date : 날짜, 날짜 포맷터, 칼렌더 다루기
- 파일 다루기
   * fm_list : 파일 매니저로 파일 목록
   * fm_copyremove : 파일 매니저로 파일 존재 확인/복사/삭제
   * fm_read : FileHandler로 파일 내용 읽기/쓰기   
- 직렬화
   * archive1 : NSKeyedArchiver, Unarchiver
   * archive2 : Custom Class, NSCoding
- 타이머
   * timer : 타이머 예제
- 알림
   * notification : 알림
- 멀티쓰레드
   * thread1 : Thread를 사용한 멀티 쓰레드
   * thread2 : 큐 기반의 멀티 쓰레드
- 네트워크
   * url : URL 생성. 정보 얻기
   * url_resourceLoading
- JSON    
   * json_parsing    