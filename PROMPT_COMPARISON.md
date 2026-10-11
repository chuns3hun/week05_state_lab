# PROMPT_COMPARISON
## 실행 조건
- AI 도구·모델: 제미나이 (모델 버전: 확인 불가)
- 요청 A·B 모두 새 대화에서 보냄: 예
- 요청 문장: A와 B 동일 ("Flutter에서 StudyGoal 항목을 탭하면 ...")
- 차이: A는 문장만, B는 CONTEXT_PACKET.md와 lib\main.dart 전체를 추가로 제공
## 관찰 결과
| 기준 | 요청 A | 요청 B |
|---|---|---|
| 1. 이름 일치 | 불일치 (StudyGoalScreen, _goals, isCompleted) | 일치 (HomeScreen, goals, isDone) |
| 2. 원본/계산값 구분 | 구분함 (지역 변수) | 구분함 (getter) |
| 3. 제약 준수 | 준수 | 준수 |
| 4. flutter analyze | 미확인 | 미확인 |
| 5. 요청 외 변경 | Checkbox·색상·제목·초기값 변경 | 주석 외 차이 없음 (읽은 범위) |
## 미확인 항목
- 두 코드 모두 실행하지 않아 탭 시 동작은 미확인
- 두 코드 모두 flutter analyze 미실행
## 한계
- B에는 완성된 main.dart가 입력으로 포함되어 응답이 입력 코드와 거의 같다. 맥락이 코드 생성 품질을 높인다고 결론 내릴 수 없다.
