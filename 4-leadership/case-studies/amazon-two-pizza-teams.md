# Case Study: Amazon의 Two-Pizza Teams - 작은 팀의 큰 혁신

> "두 개의 피자로 먹일 수 있는 팀만 만들어라" - Jeff Bezos

## 🍕 개념의 탄생 (2002)

### Jeff Bezos의 문제 인식
**2002년 Amazon 상황**:
- 직원 7,000명 돌파
- 의사결정 속도 저하
- 혁신 속도 감소
- 대기업병 징후

### 혁명적 조직 재편
"모든 팀은 두 개의 피자로 저녁을 해결할 수 있어야 한다"
- 최대 8-10명
- 완전한 자율성
- 독립적 P&L

## 🎯 핵심 원칙

### 1. Small is Beautiful
```
대규모 팀의 문제:
- 커뮤니케이션 오버헤드: n(n-1)/2
- 책임 분산
- 의사결정 지연
- 혁신 억제

Two-Pizza Team:
- 빠른 의사결정
- 명확한 책임
- 높은 자율성
- 기업가 정신
```

### 2. Single-Threaded Leader
**한 가지만 집중하는 리더**
- 하나의 제품/서비스만
- 다른 우선순위 없음
- CEO처럼 사고
- 전권 위임

### 3. APIs Not Meetings
**2002 API Mandate**:
```
1. 모든 팀은 서비스를 API로 노출
2. 팀 간 소통은 API를 통해서만
3. 다른 소통 방법 금지
4. 예외 없음
5. 이를 어기면 해고
```

## 📊 실제 구현

### AWS의 탄생 (2003-2006)
**Two-Pizza Team 구성**:
- S3 팀: 8명
- EC2 팀: 7명
- SimpleDB 팀: 6명

**결과**:
- 3년 만에 AWS 출시
- 현재 연매출 $90B+
- 클라우드 시장 지배

### Prime Video 개발
**원래 계획**: 큰 조직으로 Netflix 대응
**변경**: 5개 Two-Pizza Teams
```
Team 1: 콘텐츠 획득
Team 2: 스트리밍 기술
Team 3: 추천 알고리즘
Team 4: 사용자 인터페이스
Team 5: 결제/구독
```

**성과**: 18개월 만에 출시

## 💡 성공 사례

### 1. Amazon Go (2012-2018)
**Just Walk Out 기술**
- 초기 팀: 9명
- 컴퓨터 비전 전문가 3명
- 센서 엔지니어 2명
- ML 엔지니어 2명
- PM 1명, 디자이너 1명

**도전과 극복**:
```
2012: 아이디어 시작
2015: 첫 프로토타입
2016: 직원 대상 테스트
2018: 대중 공개
2020: 25개 매장
```

### 2. Alexa (2011-2014)
**Lab126 비밀 프로젝트**
- Doppler 팀: 8명
- 완전 독립 운영
- 직접 Bezos 보고

**혁신 포인트**:
- Far-field 음성 인식
- Wake word 감지
- 7-microphone array
- 클라우드 연동

**결과**: 스마트 스피커 시장 창출

### 3. Kindle (2004-2007)
**디지털 독서 혁명**
- 하드웨어 팀: 6명
- 소프트웨어 팀: 7명
- 콘텐츠 팀: 5명

**Steve Kessel 리더십**:
"우리의 임무는 물리적 책을 없애는 것"

## 📈 측정과 책임

### Metrics Ownership
**각 팀의 핵심 지표**:
```python
# 예: Buy Box 팀
{
  "primary_metric": "purchase_conversion_rate",
  "secondary_metrics": [
    "add_to_cart_rate",
    "checkout_abandonment",
    "page_load_time"
  ],
  "weekly_review": True,
  "owner": "single_threaded_leader"
}
```

### 6-Page Narrative
**파워포인트 금지**:
- 6페이지 서술형 문서
- 회의 시작 20분 묵독
- 깊이 있는 사고 강제
- 명확한 논리 구조

## 🚨 실패와 학습

### Fire Phone (2014)
**과도한 독립성의 부작용**:
- 4개 Two-Pizza Teams
- 시장 조사 부족
- 고객 피드백 무시
- $170M 손실

**교훈**:
"자율성은 좋지만 고객 집착은 필수"

### 조직 사일로 문제
**초기 부작용**:
- 팀 간 협력 부재
- 중복 개발
- 정보 공유 단절

**해결책**:
- Weekly Business Review
- 공통 플랫폼 구축
- Bar Raiser 프로그램

## 🔑 리더십 원칙

### Ownership
"주인처럼 생각하고 행동하라"
- 장기적 사고
- 전체 회사 관점
- 희생 감수

### Invent and Simplify
"발명하고 단순화하라"
- 새로운 방법 모색
- 복잡성 제거
- 확장 가능한 솔루션

### Deliver Results
"결과를 전달하라"
- 핵심 지표 달성
- 품질 타협 없음
- 적시 delivery

## 💼 타사 적용 사례

### Spotify Squads
**영감받은 모델**:
- 8-10명 Squad
- 자율적 운영
- Tribe로 그룹화
- Chapter로 전문성 공유

### Haier's Micro-Enterprises
**중국식 변형**:
- 4,000개 마이크로 기업
- 독립 P&L
- 내부 벤처
- 자체 자금 조달

## 📊 성과 비교

| 조직 유형 | 의사결정 속도 | 혁신 빈도 | 직원 만족도 |
|----------|--------------|-----------|-------------|
| 전통적 계층 | 2-4주 | 연 1-2회 | 45% |
| 매트릭스 | 1-2주 | 분기 1회 | 55% |
| Two-Pizza | 1-2일 | 월 2-3회 | 78% |

## 💡 PM을 위한 적용

### 1. 팀 구성 가이드
```
이상적 구성 (8명):
- PM: 1명
- 엔지니어: 4-5명
- 디자이너: 1명
- 데이터 분석가: 1명
- QA: 0-1명 (자동화 선호)
```

### 2. 자율성 체크리스트
✅ 독립적 배포 가능?
✅ 고객 직접 접촉?
✅ 예산 권한?
✅ 채용 권한?
✅ 기술 스택 선택?

### 3. 소통 최소화
**Stand-up**: 15분 이내
**Planning**: 2시간 이내
**Retro**: 1시간 이내
**1-on-1**: 주 30분

### 4. 성과 측정
```python
team_health = {
  "velocity": "story_points/sprint",
  "quality": "defect_rate",
  "innovation": "experiments/month",
  "satisfaction": "eNPS_score"
}
```

## 🔮 진화와 미래

### 현재 Amazon (2024)
- 여전히 Two-Pizza 원칙 유지
- 1,600,000명 직원
- 수천 개 독립 팀
- 연매출 $500B+

### AI 시대 적응
- AI-augmented teams
- 더 작은 팀 가능 (4-5명)
- 자동화로 효율성 증대

## 🚀 실행 가이드

### Two-Pizza Team 도입 단계
1. **Pilot** (3개월)
   - 1-2개 팀 시작
   - 명확한 미션
   - 완전한 자율성

2. **Expand** (6개월)
   - 성공 사례 확산
   - 10개 팀으로 확대
   - 플레이북 작성

3. **Scale** (12개월)
   - 전사 적용
   - 문화 정착
   - 지속적 개선

## 📚 참고 자료
- "Working Backwards" - Colin Bryar
- "The Everything Store" - Brad Stone
- Amazon Leadership Principles
- AWS re:Invent Keynotes

---

*"If you can't feed a team with two pizzas, it's too large."*
- **Jeff Bezos, Amazon 창업자**