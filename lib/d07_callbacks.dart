// 매개변수로 콜백 함수 타입 정의
/**
2개의 매개변수가 모두 필수사항(required)이고, 콜백함수는 반환타입x, 매개변수o 형식으로 정의되어있다. 
 */
void simulateTextField({
  required String hintText,
  required void Function(String value) onChanged,
}) {
  print('힌트: "$hintText"');
  String userTypedText = 'Flutter';
  print('사용자가 타이핑했습니다: "$userTypedText"');
  onChanged(userTypedText);
}

void main() {
  /**
  typedef ValueChange<T> = void Function(T value);
  와 같은 형태로 콜백함수가 정의된다.
   */
  simulateTextField(
    hintText: '검색어를 입력하세요',
    // 매개변수가 있는 형태의 함수를 인수로 전달
    onChanged: (newKeyword) {
      print(' -> [검색엔진] "$newKeyword" 관련 실시간 검색중..');
    },
  );
}
