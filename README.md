# Swift5 Samples
Swift5 Samples

## 01.Data
값과 변수, 상수, 문장 작성 방법

###  리터럴
* Literal_Number : 숫자형 값
* Literal_String : 문자형 값
* Literal_Range : 범위값
* Nil : nil
   
### 변수와 상수
* VarAndConstant : 변수와 상수
* Print : 콘솔에 값 출력하기
* Statement : Swift 코드 문장 작성하기

### 연산자
* Operator : 연산자

## 02.기본 타입(Type)
Swift의 기본 타입

* Bool : 부울 타입
* Int : 정수형 타입
* Float : 실수형 타입
* Character : Character 타입
* String : 문자열 타입
* String_Modify : 문자열 수정
* String_Substring : 부분 문자열
* String_Compare : 문자열 비교   
* String_Views : 문자열과 뷰
* String_Founcation : 파운데이션 프레임워크 - 포맷 문자열 생성, 문자열 비교, 트리밍, 찾기
* String_IO : 문자열 저장/읽기. Foundation 필요
* Range : Range, ClosedRange, CountableRange, PartialRangeThrough 타입
* TypeOf : 타입 정보 얻기
* Unicode : 유니코드 다루기(작성중)

## 03. 다수의 데이터 다루기(CollectionType)
다수의 데이터를 다루는 타입

* Tuple : 튜플
* Array : 배열
* Dictionary : 딕셔너리
* Set : 셋
* ComplexCollection : 복합 콜렉션 타입
* ValueType : 밸류 타입

## 04.제어문(Controls)
Swift의 반복, 조건문

### 반복
* for : for 반복문
* while : while, repeat-while 반복문
* label : label을 이용한 흐름 제어문

### 조건
* if : if 조건문
* guard : guard
* switch_case : switch-case
* version-check : #avilable을 이용한 플랫폼, 버전 체크
   
## 05.옵셔널(Optional)

* Optional : 옵셔널 타입
* NilCheck : nil 여부 확인하기
* ForcedUnwrapping: 강제 언래핑
* OptionalBinding : 옵셔널 바인딩, if/guard 사용
* NilCoalescing : nil 병합 연산자 ??
* OptionalChain : 옵셔널 체인
* IUO : 암시적 언래핑 옵셔널(Implicitly Unwrapped Optional)

## 06.커스텀 타입(CustomType)
커스텀 타입 정의하기

* Struct : 구조체로 커스텀 타입 정의하기
* Class : 클래스로 커스텀 타입 정의하기
* Enum : Enum으로 커스텀 타입 정의하기
* Complex : 복합 타입 정의
* Typealias : 타입 별칭 정하기
* ValueAndReferenceType : 밸류 타입, 레퍼런스 타입

## 07.함수(Function)
함수 정의와 실행하기

* Function : 함수 정의, 실행하기, 반환값
* Parameter : 함수 파라미터, 외부 파라미터 설정
* overloading : 같은 함수 이름 but 다른 함수 파라미터 타입, 다른 외부 파라미터 이름.
* ParameterDefaultValue : 기본값을 가진 파라미터
* ParameterVaridic : 가변 길이 파라미터
* ParameterInout : Inout 파라미터   
* OptionalParamReturn : 파라미터나 반환값으로 nil 다루기
* NestedFunction : 함수 내부에 함수 정의하기

## 08.구조체와 Enum

### 프로퍼티
* StoredAndComputedProperty : 저장 프로퍼티, 연산 프로퍼티
* PropertyChange : 프로퍼티 변경 감지

### 구조체

* StructAndMethod : 구조체와 메소드
* StructAndMutating : Mutatable 메소드 작성
* StructAndStaticMethod : 정적 메소드와 정적 프로퍼티
* StructAndInitializer : 구조체 초기화

### Enum 타입

* EnumAndMethod : Enum 타입과 메소드
* EnumAndAssociation : Enum과 Association Value

* NestedType : 중첩 타입
* ImmutableAndMutable : Mutable API, Immutable API
   

## 05.클래스(Class)

### 클래스 정의, 객체 생성, 프로퍼티, 메소드
* class_basic : 클래스 정의와 객체 생성, 프로퍼티
* computed_property : 계산 프로퍼티
* reference_type : 레퍼런스 타입 객체
* method.swift : 메소드 정의와 호출

### Initializer, Deinit
* innitializer : Designated Initializer
* initializer_convenience : Convenince Initializer
* initializer_failable : Failable Initializer
* deinit : Deinitializer 

### 타입 메소드, 프로퍼티, 프로퍼티 감시
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