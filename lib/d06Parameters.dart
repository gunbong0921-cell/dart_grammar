// 위치 매개변수(positional)
void printUserInfo(String name, int age) {
  print('이름: $name, 나이: $age세');
}

// 이름 있는 매개변수(Named Parameters)
void createCustomButton({
  required String label, 
  String color = 'blue',
  double width = 120.0,
  bool isEnabled = true,
  void Function()? onClick,
}) {
  print('라벨: $label, 색상: $color, 가로폭: $width, 활성상태: $isEnabled');
  if (onClick != null) {
    print(' - 클릭 이벤트를 트리거합니다:');
    onClick();
  }
  else {
    print(' - 연결된 클릭 이벤트가 없습니다.');
  }
}

void main() {
  print('위치 매개변수 vs 이름 있는 매개변수 호출');
  printUserInfo('이지은', 30);

  createCustomButton(
    label: '로그인',
    color: 'indigo',
    width: 200.0,
  );
  
  createCustomButton(
    label: '장바구니 담기',
    color: 'orange',
    onClick: () {
      print(' -> [알림] 상품이 성공적으로 장바구니에 담겼습니다!.');
    },
  );

  print('\n화살표 함수');
  int add(int a, int b) => a + b;
  bool isEven(int n) => n % 2 == 0;

  print('3 + 5 = ${add(3, 5)}');
  print('4은 짝수인가? ${isEven(4)}');
}