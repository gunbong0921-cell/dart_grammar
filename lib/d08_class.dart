/**
Flutter의 모든 위젯(Text, Container 등)은 Dart 클래스이며 생성자를 통해 초기화한다.
const Text(this.data, { super.key, ...}) 형태로 선언되어야한다. 
 */
class CustomCard {
  // final 필드 : 위젯의 불변선 원칙과 동일하게 생성 시점에 값이 고정됨
  final String title;
  final int cnt;
  final bool isRounded;

  // 1. 기본생성자
  /**
  매개변수 앞에 this를 붙이면 전달받은 인자가 해당 필드에 자동으로 대입됨.
  assert()는 개발모드에서 잘못된 값이 들어오면 즉시 경고를 띄워준다. 
   */
  const CustomCard({required this.title, this.cnt = 1, this.isRounded = true})
    : assert(cnt > 0, 'cnt는 0 이상이어야 합니다.');

  // 2. 이름 있는 생성자
  /**
  Dart는 자바와 달리 생성자 오버로딩이 없으므로, 명확한 이름을 붙여서 생성자를 여러개 만들어서 사용한다. 
   */
  const CustomCard.notice({required String titleVar})
    : title = titleVar,
      cnt = 3,
      isRounded = false;

  // 3. 비어있는 생성자 : 초기값이 부여되어 있다.
  const CustomCard.empty() : title = '냉무', cnt = 0, isRounded = true;

  // 멤버변수 값을 단순히 출력
  void display() {
    print('제목: $title');
    print('옵션: cont=$cnt, isRounded=$isRounded');
  }
}

void main() {
  print('1.기본 생성자 호출:');
  // isRounded는 인수가 없으므로 true로 초기화
  final card1 = CustomCard(title: '플러터 기초 강의', cnt: 2);
  card1.display();

  print('\n2.이름 있는 생성자 호출:');
  final noticeCard = CustomCard.notice(titleVar: '내일은 서버 점검일');
  noticeCard.display();

  print('\n3.비어있는 생성자 호출:');
  final emtyCard = CustomCard.empty();
  emtyCard.display();

  print('\n4.const 생성자와 메모리 캐싱:');
  /**
  const 생성자를 가진 클래스는 const 키워드를 붙여 상수로 만들 수 있다.
  내용과 파라미터가 완전히 동일한 2개의 const 객체는 메모리에서 동일한 인스턴스를 참조한다. 즉 1개만 생성된다. 
   */
  const cardA = CustomCard(title: '고정 타이틀', cnt: 1);
  const cardB = CustomCard(title: '고정 타이틀', cnt: 1);
  print('cardA와 cardB의 주소비교 ?: ${identical(cardA, cardB)}'); // true, 메모리 캐싱 확인
}
