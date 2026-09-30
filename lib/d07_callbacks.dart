// 매개변수로 콜백 함수 타입 정의
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
  simulateTextField(
    hintText: '검색어를 입력하세요',
    onChanged: (newKeyword) {
      print(' -> [검색엔진] "$newKeyword" 관련 실시간 검색중..');
    },
  );
}
