# week05\_state\_lab

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

* [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
* [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
* [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



\*\*1. 누가 상태를 소유하는가\*\*

원본 상태 `goals`(List<StudyGoal>, 필드 title·isDone)는 `lib\\main.dart`의 `\_HomeScreenState`가 소유합니다. 완료·남은 개수(`completedCount`, `remainingCount`)는 저장하지 않고 getter로 `goals`에서 계산합니다.



\*\*2. AI에게 어떤 자료를 왜 제공했는가\*\*

요청 B에는 `CONTEXT\_PACKET.md`와 `lib\\main.dart` 전체를 제공했습니다. 실제 파일명·클래스명·제약을 알려 주기 위해서입니다. 문장만 보낸 요청 A는 이름이 달랐고(StudyGoalScreen, \_goals, isCompleted) 요청하지 않은 Checkbox·색상 변경이 있었으며, 요청 B는 실제 이름과 일치했습니다. 다만 B 입력에 완성된 코드가 포함되어 있어 맥락이 코드 품질을 높였다고 결론 내릴 수는 없습니다. 두 응답 모두 실행하지 않았고 flutter analyze도 돌리지 않아 동작은 미확인입니다.



\*\*3. 실행 증거가 어느 AC를 확인하는가\*\*

evidence\\01\_initial.png는 AC1(초기 완료 1 / 남은 2), 02\_changed.png는 AC2(한 번 탭하면 완료 2 / 남은 1로 화면 동시 변경), 03\_restored.png는 AC3(다시 탭하면 원복)을 확인합니다. flutter analyze의 No issues found는 lib\\main.dart에 분석 오류가 없다는 것만 확인합니다. AC4는 코드의 getter와 STATE\_CONTRACT.md로 확인합니다.



\*\*4. 다음 수정에 무엇을 다시 읽어야 하는가\*\*

상태 로직을 고칠 때는 STATE\_CONTRACT.md와 lib\\main.dart의 `\_HomeScreenState`를, 화면을 고칠 때는 lib\\main.dart의 `build` 메서드를 다시 읽습니다 (CONTEXT\_MAP.md 기준).

