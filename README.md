# Swift4 Samples
Swift4 Samples

## 01.Data
값과 변수, 상수, 문장 작성 방법

## 02.Type
기본 타입과 콜렉션 타입, 커스텀 타입

## 03.제어문(Controls)
- 반복
   * for : for 반복문
   * while : while, repeat-while 반복문
   * label : label을 이용한 흐름 제어문
- 조건
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
   * optioanl : 파라미터나 반환값으로 nil 다루기
   * nested_function : 함수 내부에 함수 정의하기

## 05.클래스(Class), 06.메소드
- 클래스 정의, 객체 생성, 프로퍼티, 메소드
   * class_basic : 클래스 정의와 객체 생성, 프로퍼티
   * computed_property : 계산 프로퍼티
   * reference_type : 레퍼런스 타입 객체
   * method.swift : 메소드 정의와 호출
- Initializer, Deinit
   * innitializer : Designated Initializer
   * initializer_convenience : Convenince Initializer
   * initializer_failable : Failable Initializer
   * deinit : Deinitializer 
- 타입 메소드, 프로퍼티, 프로퍼티 감시
   * type_method : 타입 메소드
   * type_property : 타입 프로퍼티
   * property_observing : 프로퍼티 감시
   * property_lazy : 늦은 프로퍼티 초기화

## 06.클래스 상속(Inheritance)
- 상속, 재정의
   * override : 상속과 재정의
   * super_self  : 클래스 상속과 self, super 참조
   * initializer_inherite1 : Initializer 상속. 자식 클래스에 Designated Initializer를 작성하지 않은 경우
   * initializer_in_child : 자식 클래스에 Designated Initializer 작성하기 
   * initializer_in_child_convenience : 자식 클래스에 Convenience Initializer 작성하기  
   * initializer_override : Initializer 재정의
   * initializer_inherite2 : Initializer 상속. 자식 클래스에서 모든 Designated Initializer를 재정의하는 경우 Convenience Initializer 상속
   * two_phase_initialization : 2단계 초기화      
   * initializer_required : required Initializer
   * initializer_override_failable : Failable initializer 재정의   

## 07.ARC
- 객체 생성과 해제, 소유권
   * arc_basic : 객체 생성과 소유, 객체 해제
   * scope : 스코프에 의한 소유권 해제와 객체 해제
   * collection : 콜렉션에 의한 객체 소유와 해제
- 객체 순환 참조(소유), 약한 참조
   * reference_cycle : 강한 순환 참조로 인한 객체가 해제되지 않는 상황
   * weak : 객체를 소유하지 않는 약한 참조(weak reference) 
   * unowned : 객체를 소유하지 않는 약한 참조 중 unowned

## 08.구조체와 Enum
- 구조체
   * struct : 구조체, 프로퍼티와 메소드, Initializer
   * struct_static : 타입 프로퍼티와 메소드
   * struct_mutation : 밸류 타입 상태 변경
   * value_reference_type : 밸류 타입과 레퍼런스 타입 비교
- Enum   
   * enum: Enum 정의, switch, rawvalue
   * enum_method : Enum에 메소드, 프로퍼티 작성
   * enum_association : Enum과 Association
- 중첩 타입   
   * nested_type : 중첩 타입

## 09.클로저(Closure)
   * function_object : 함수를 객체로 다루기
   * function_type : 함수 타입
   * array_sort : 배열의 API에서 클로저 사용
   * closure_api : 클로저 사용 함수 작성하기
   * closure_inClass : 클래스 내 메소드와 프로퍼티로 사용하기
   * capture : 클로저와 캡춰
   * capture_reference : 클로저와 객체 캡춰, 캡춰시 객체 소유하지 않기(unowned)
   * escaping : non-escaping, escaping 클로저
   * autoclosure : autoclosure
   
## 10.Extension
   * extension : 타입 확장
   * extension_struct_enum : 구조체와 Enum 확장
   * extension_existing_type : 기존 타입 확장(String)

## 11.프로토콜(Protocol)
   * protocol_basic : 프로토콜 선언, 클래스와 구조체 채택
   * static_method : 프로토콜 내 타입 메소드
   * property : 프로토콜 내 프로퍼티 선언
   * initializer : 프로토콜 내 Initializer 선언
   * protocol_type : 프로토콜을 타입으로 사용
   * class_only : 클래스 전용 프로토콜
   * protocol_extension : 프로토콜 확장

## 12.TypeCheck
   * any : Any, AnyObject 타입. 동적인 타입 변경   
   * type_check : is를 이용한 타입 체크
   * type_cast : as를 이용한 타입 변환   
   * type_alias : 타입 알리아스
   
## 13.에러 처리(Error Handling)
- 에러 정의, 에러 다루기
   * error : 에러 정의, 에러 발생과 다루기
   * error_function : 에러가 발생하는 함수 작성, 호출. 반환값
   * error_propagation : 에러 전파
   * error_closure : 에러 발생 클로저 사용하기.
   * defer : defer를 이용한 예외 상황 마무리 동작

## 14.Generics
   * generics : 배열과 딕셔너리 타입별 객체 생성과 사용
   * custom_type_generics : 제네릭스로 타입 추상화된 함수와 타입 작성하기

## 15.Operator
- 연산자
   * overloading : 연산지 오버로딩
   * equal : 객체 비교 연산자 오버로딩
   * custom_operator : 새로운 연산자 선언, 정의
- 첨자 표기법   
   * subscript : 첨자 표기   

## 16.접근 조절
   * AccessLevel : 커맨드라인 프로젝트 내 프레임워크를 사용한 접근 조절 예제. 동작안하니 코드 작성과 컴파일만 참고.
   * AccessLevelApp : iOS 프로젝트 내 프레임워크를 사용한 접근 조절 예제. 동작함.

## 17.디자인 패턴
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
- 데이터 다루기
   * type_convert : Foundation Framework 데이터 타입과 Swift 타입 간 변환
- 문자열
   * string1, string2 : NSString, String 다루기와 비교
   * string_file : 문자열 저장
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
- 데이타
   * data_base64 : Data를 이용한 Base64 인코딩/디코딩
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
   * url_resource_loading
- JSON    
   * json_parsing    