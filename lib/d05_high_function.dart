class CartItem {
  // 멤버변수
  final String name;
  final int price;
  final bool isSelected;
  // 생성자
  const CartItem({
    // required로 필수사항인지 설정
    required this.name,
    required this.price,
    // 값이 없으면 기본값 true로 초기화
    this.isSelected = true,
  });

  @override
  String toString() => '$name(선택: $isSelected)';
}

void main() {
  final List<CartItem> cart = [
    const CartItem(name: '아이폰', price: 1000, isSelected: true),
    const CartItem(name: '갤럭시', price: 2000, isSelected: false),
    const CartItem(name: '샤오미', price: 3000, isSelected: true),
  ];
  print('1.map()');
  /**
  map() 함수는 데이터를 다른 형태(문자열 or 위젯 등)로 변환할 때 사용한다. Iterable을 반환하므로 toList() 등을 사용해 리스트로 변환해야 한다.
   */
  List<String> productNames = cart.map((item) => item.name).toList();
  // 상품명만으로 구성된 List 출력
  print('상품목록(전체): $productNames');

  // 선택여부를 상항연산자로 판단 후 String으로 재구성
  List<String> display = cart.map((item) {
    return '[${item.isSelected ? '선택됨' : '선택안됨'}] ${item.name}';
  }).toList();
  print('상품목록(선택) :');
  // 확장 for문으로 내용 출력 
  for (var dis in display) {
    print(' - $dis');
  }

  print('\n2.where()');
  /**
  JS의 filter()와 유사하게 조건에 맞는 요소만 추출할 때 사용한다.
   */
  List<CartItem> selectedItems = cart.where((item) => item.isSelected).toList();
  print('체크된 상품들: $selectedItems');

  print('\n3.fold()');
  int totalOrderPrice = selectedItems.fold(0, (sum, item) => sum + item.price);
  print('총 금액: $totalOrderPrice원');

  print('\n4.any() 와 every()');
  bool hasExpensiveItem = cart.any((item) => item.price > 2000);
  print('2000원 이상의 상품이 하나라도 있는가? $hasExpensiveItem');

  bool isAllExpensive = cart.every((item) => item.isSelected);
  print('모든 상품이 체크되어 있는가? $isAllExpensive');
}
