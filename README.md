# Swift-Samples
Swift Sample Code

## 01.변수와 상수, 데이터타입(DataAndVairables)
- 변수와 상수
   * variable_declare.swift
   * constant.swift
- 데이터 타입
   * basic_dataType.swift
- 문자열
   * string_basic.swift
   * string_operation.swift
   * string_convert.swift
   * string_compare.swift
   * string_modify.swift
   * string_view.swift
- 튜플
   * tuple.swift
- 배열
   * array_declare.swift
   * array_edit.swift
   * array_valueType.swift
- 딕셔너리
   * dictionary.swift
   * dictionary_valueType.swift
- 셋
   * set.swift
   * set_operation.swift

## 02.제어문(Controls)
- 반목문
   * for.swift
   * while.swift
- 조건문
   * if.swift
   * switch-case
   * guard.swift
   
## 03.옵셔널(Optional)
- 옵셔널
   * optional.swift : 옵셔널 타입, 옵셔널 바인딩, ?? 연산자
   * optional_binding.swift, optional_binding_guard.swift : if와 guard를 사용하는 옵셔널 바인딩
   * optional_chain.swift
   * implicit_optional.swift : 암시적 언래핑 옵셔널

## 04.함수(Function)
- 함수
   * basic.swift : 함수 기본, 반환값
   * parameter1.swift : 함수 파라미터, 파라미터 이름(내부, 외부)
   * parameter2.swift : 가변 길이 파라미터, 파라미터 변수, inout 파라미터
   * parameter_default.swift : 기본값을 가진 파라미터
   * optioanl.swift : 옵서널 타입

## 05.클래스(Class), 메소드
- 클래스 정의, 객체 생성, 프로퍼티, 메소드
   * declaration.swift
   * computed_property.swift : 계산 프로퍼티
   * method.swift : 메소드
- Initializer, Deinit
   * innitializer.swift : Designated Initializer
   * initializer_convenience.swift : Convenince Initializer
   * initializer_failalbe.swift : Failable Initializer
   * deinit.swift : Deinitializer 
- 타입 메소드, 프로퍼티, 프로퍼티 감시
   * type_method.swift
   * type_property.swift
   * property_observing.swift
   * property_lazy.swift
   
## 07.ARC
- 객체 생성과 해제, 소유권
   * basic.swift
   * scope.swift
- 객체 순환 참조(소유), 약한 참조
   * referenceCycle.swift
   * weakPointer.swift
   * unowned.swift
- 콜렉션
   * arc_collection.swift

## 08.클래스 상속(Inheritance)
- 상속, 재정의
   * override.swift
   * super_self.swift
- 상속과 Initializer
   * initializer_inherite1.swift
   * initializer_inherite2.swift
   * initializer_required.swift
- 자식 클래스의 Initializer
   * initializer_in_childclass1.swift : 자식 클래스의 Designated Initializer
   * initializer_in_childclass2.swift : 자식 클래스의 Convenience Initializer  
   * initializer_override1.swift : Initializer 재정의
   * initializer_override2.swift : Failable initializer 재정의
- 2단계 초기화
   * two_phase_initialization.swift
   
## 09.구조체와 Enum
- 구조체
   * struct.swift
   * struct_static.swift : 타입 프로퍼티와 메소드
   * struct_mutation.swift : 밸류 타입 상태 변경
- 밸류 타입과 레퍼런스 타입
   * valueType_referenceType.swift
- Enum
   * enum.swift : Enum 정의, switch, rawvalue
   * enum_method.swift : 메소드, 프로퍼티
   * enum_association.swift
   
## 10.프로토콜(Protocol)
- 프로토콜
   * protocol.swift
   * initializer.swift
   * protocol_type.swift : 프로토콜을 타입으로 사용
   * class_only.swift : 클래스 전용 프로토콜

## 11.클로저(Closure)
- 클로저
   * function_type.swift : 함수 타입
   * array_sort.swift : 배열의 API에서 클로저 사용
   * closuere.swift : 클로저 사용 함수 작성하기
   * closure_inClass.swift : 클래스 내 메소드와 프로퍼티로 사용하기
   * capture.swift : 클로저와 캡춰
   * capture_unowned.swift : 클로저에서 소유하지 않기(unowned)
   
## 12.에러 처리(Error Handling)
- 에러 정의, 에러 다루기
   * error.swift 
   
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