# 코호트 분석과 리텐션

## 🎯 5분 안에 시작하기

코호트 분석은 시간에 따른 사용자 행동 변화를 추적하는 강력한 도구입니다. 지금 바로 첫 코호트를 만들어보세요.

**Quick Start:**
```sql
-- 이번 달 가입자의 일주일 후 리텐션
SELECT 
  COUNT(DISTINCT user_id) as total_users,
  COUNT(DISTINCT CASE 
    WHEN last_active_date >= signup_date + 7 
    THEN user_id 
  END) as retained_users,
  ROUND(100.0 * COUNT(DISTINCT CASE 
    WHEN last_active_date >= signup_date + 7 
    THEN user_id 
  END) / COUNT(DISTINCT user_id), 2) as d7_retention
FROM users
WHERE signup_date >= DATE_TRUNC('month', CURRENT_DATE);
```

## 📊 코호트 분석의 이해

### 코호트(Cohort)란?

**정의**: 특정 기간 동안 공통된 특성이나 경험을 공유하는 사용자 그룹

### 왜 코호트 분석이 중요한가?

#### 시간의 영향 분리
```
❌ 전체 평균만 보는 경우
"전체 리텐션 30%" → 신규/기존 사용자 섞임 → 부정확한 인사이트

✅ 코호트로 분석하는 경우
"1월 가입자 리텐션 45%" → 명확한 트렌드 → 정확한 개선 효과 측정
```

#### 제품 개선 효과 측정
```
제품 업데이트 전: 2월 코호트 D30 리텐션 20%
제품 업데이트 후: 3월 코호트 D30 리텐션 35%
→ 개선 효과 명확히 확인
```

## 🔍 코호트 유형

### 1. 시간 기반 코호트 (Time-based Cohorts)

#### 가입 시기별 코호트
```
📅 월별 가입 코호트
2024년 1월 가입자 → 1월 코호트
2024년 2월 가입자 → 2월 코호트
2024년 3월 가입자 → 3월 코호트

활용: 시즌성, 마케팅 캠페인 효과, 제품 개선 영향 측정
```

#### 첫 구매 시기별 코호트
```
💰 구매 코호트
첫 구매: 2024년 1월 → Q1 구매 코호트
첫 구매: 2024년 4월 → Q2 구매 코호트

활용: 고객 생애 가치, 재구매 패턴 분석
```

#### 앱 설치 시기별 코호트
```
📱 설치 코호트
iOS 14 출시 전 설치 → Pre-iOS14 코호트
iOS 14 출시 후 설치 → Post-iOS14 코호트

활용: OS 업데이트 영향, 앱 버전별 성과 비교
```

### 2. 행동 기반 코호트 (Behavioral Cohorts)

#### 특정 기능 사용자
```
✨ 기능 채택 코호트
프리미엄 기능 사용자 → Premium Feature Users
기본 기능만 사용자 → Basic Users

활용: 기능별 가치 검증, 업셀 타겟팅
```

#### 특정 캠페인 참여자
```
📢 캠페인 코호트
블랙프라이데이 참여 → BF Campaign Cohort
신년 이벤트 참여 → NY Event Cohort

활용: 캠페인 ROI, 장기 효과 측정
```

#### 특정 금액 이상 구매자
```
💎 가치 기반 코호트
누적 구매 $100+ → High Value Cohort
누적 구매 $20-100 → Medium Value Cohort
누적 구매 <$20 → Low Value Cohort

활용: VIP 프로그램, 차별화된 서비스
```

### 3. 속성 기반 코호트 (Attribute-based Cohorts)

#### 획득 채널별
```
🔍 채널 코호트
Organic Search → SEO Cohort
Paid Ads → Paid Cohort
Referral → Referral Cohort

활용: 채널별 LTV, 품질 비교
```

#### 디바이스별
```
📱 디바이스 코호트
iOS Users → iOS Cohort
Android Users → Android Cohort
Web Users → Web Cohort

활용: 플랫폼별 최적화, 리소스 배분
```

#### 지역별
```
🌍 지역 코호트
서울/경기 → Metro Cohort
지방 도시 → Regional Cohort
해외 → International Cohort

활용: 지역별 전략, 로컬라이제이션
```

## 📈 리텐션 분석

### 리텐션의 중요성

#### 성장의 기초
```
신규 사용자 획득 비용 (CAC): $50
기존 사용자 유지 비용: $5
→ 리텐션이 10배 더 효율적

리텐션 5% 개선 = 수익 25-95% 증가 (Bain & Company)
```

#### 제품-시장 적합성 지표
```
PMF 달성 신호:
- D1 리텐션 > 60%
- D7 리텐션 > 30%
- D30 리텐션 > 20%
- 리텐션 곡선 평탄화
```

### 리텐션 측정 방법

#### 1. Classic Retention (N-day)
```
정의: 특정 날짜에 정확히 돌아온 사용자 비율

D1 Retention = Day 1에 활동한 사용자 / 전체 코호트
D7 Retention = Day 7에 활동한 사용자 / 전체 코호트
D30 Retention = Day 30에 활동한 사용자 / 전체 코호트

특징: 엄격한 기준, 낮은 수치
```

#### 2. Rolling Retention (Range)
```
정의: 특정 기간 내에 돌아온 사용자 비율

7-day Rolling = Day 1-7 중 활동한 사용자 / 전체 코호트
30-day Rolling = Day 1-30 중 활동한 사용자 / 전체 코호트

특징: 유연한 기준, 높은 수치
```

#### 3. Unbounded Retention
```
정의: 특정 날짜 이후 언제든 돌아온 사용자

Day 7+ = Day 7 이후 활동한 모든 사용자 / 전체 코호트
Day 30+ = Day 30 이후 활동한 모든 사용자 / 전체 코호트

특징: 장기적 가치 평가, 누적 리텐션
```

### 리텐션 커브 패턴

#### 1. Declining Curve (감소형)
```
📉 패턴
     100%
      |
      |\
      | \
      |  \___
      |      -----___
      |              -----___
      └────────────────────────→
        D0  D7  D14  D30  D60  D90

특징: 지속적으로 하락
의미: 제품-시장 부적합, 가치 전달 실패
대응: 제품 핵심 가치 재정의 필요
```

#### 2. Flattening Curve (평탄형)
```
📊 패턴
     100%
      |
      |\
      | \
      |  \
      |   \______
      |          ═════════════
      └────────────────────────→
        D0  D7  D14  D30  D60  D90

특징: 특정 수준에서 안정화
의미: 코어 사용자 그룹 형성, 건강한 제품
목표: 안정화 지점을 높이기
```

#### 3. Smiling Curve (상승형)
```
📈 패턴
     100%
      |
      |\
      | \
      |  \    ___/
      |   \__/
      |
      └────────────────────────→
        D0  D7  D14  D30  D60  D90

특징: 시간이 지나면서 다시 상승
의미: 네트워크 효과, 강력한 PMF
예시: Facebook, WhatsApp, LinkedIn
```

## 🔄 리텐션 개선 전략

### 1. 온보딩 최적화

#### 첫 경험 개선
```
✨ Time to Value 단축
Before: 가입 → 설정 → 튜토리얼 → 첫 가치 (30분)
After: 가입 → 즉시 가치 경험 → 설정 (5분)

결과: D1 리텐션 40% → 65%
```

#### Aha Moment 가속화
```
🎯 핵심 행동 유도
Twitter: 첫날 5명 팔로우 → 30명 팔로우
Pinterest: 관심사 3개 선택 → 5개 선택 + 첫 보드 생성

결과: Aha Moment 도달률 2배 증가
```

#### Progressive Disclosure
```
📚 단계별 기능 공개
Day 1: 핵심 기능 3개만
Day 3: 추가 기능 2개
Day 7: 고급 기능 공개
Day 14: 전체 기능 활성화

효과: 정보 과부하 방지, 점진적 학습
```

### 2. 습관 형성 메커니즘

#### Hook Model 적용
```
🔄 Nir Eyal의 Hook Model

1. Trigger (계기)
   External: 푸시 알림, 이메일
   Internal: 지루함, FOMO, 호기심

2. Action (행동)
   최소한의 노력으로 수행
   예: 앱 오픈, 스크롤, 탭

3. Variable Reward (가변적 보상)
   Tribe: 소셜 보상 (좋아요, 댓글)
   Hunt: 자원 보상 (정보, 할인)
   Self: 개인 보상 (완료감, 진행도)

4. Investment (투자)
   시간, 노력, 데이터 투입
   예: 프로필 완성, 콘텐츠 생성, 친구 초대
```

#### 실제 적용 사례

**Instagram의 Hook**
```
😴 Trigger: 지루함, 푸시 알림
👆 Action: 앱 오픈, 피드 스크롤
🎁 Reward: 새로운 콘텐츠, 좋아요
📸 Investment: 사진 업로드, 팔로우

결과: DAU/MAU > 50% (매우 높은 습관화)
```

**Duolingo의 Hook**
```
⏰ Trigger: 일일 리마인더
📚 Action: 레슨 시작
🏆 Reward: XP, 연속 학습 기록
💎 Investment: 스킬 트리 진행

결과: 월간 리텐션 55% (교육 앱 평균 20%)
```

### 3. 재참여 캠페인

#### 이메일 캠페인 시퀀스
```
📧 자동화된 재참여 이메일

Day 3 (미활동 시작)
제목: "김PM님, 놓치신 것이 있어요!"
내용: 개인화된 콘텐츠 추천

Day 7
제목: "이번 주 가장 인기 있는 기능 TOP 3"
내용: 소셜 프루프 + FOMO

Day 14
제목: "30% 할인 쿠폰 (3일 한정)"
내용: 긴급성 + 인센티브

Day 30
제목: "피드백을 들려주세요"
내용: 설문 + 개선 약속
```

#### 푸시 알림 전략
```
🔔 Smart Push Notifications

개인화:
"김PM님이 좋아할 만한 새로운 기능이 추가되었어요"

타이밍:
- 과거 활동 시간대 분석
- 최적 발송 시간 예측
- 시간대별 A/B 테스트

빈도:
- 활성 사용자: 주 3-5회
- 휴면 위험: 주 1-2회
- 이탈 사용자: 월 1-2회

CTR: 평균 7% → 개인화 후 15%
```

#### 인앱 메시지
```
💬 Contextual In-App Messages

신기능 안내:
"🎉 새로운 기능: 이제 음성으로도 검색할 수 있어요!"

재참여 유도:
"오랜만이에요! 그동안 이런 업데이트가 있었어요"

특별 혜택:
"돌아오신 것을 환영합니다! 프리미엄 7일 무료 체험"
```

## 📊 고급 코호트 분석

### 수익 코호트 (Revenue Cohorts)

#### LTV 코호트 분석
```
월별 누적 수익 추적

가입월    M0     M1     M2     M3     M6     M12    LTV
2024-01  $10    $25    $40    $52    $85    $150   $150
2024-02  $12    $28    $45    $58    $92    -      
2024-03  $15    $35    $48    -      -      -
2024-04  $18    $40    -      -      -      -

인사이트:
- 최근 코호트의 초기 수익 증가 (제품 개선 효과)
- M3까지 수익의 35%가 발생
- 12개월 LTV 예측 모델 구축 가능
```

#### Payback Period 분석
```
CAC 회수 기간 계산

코호트   CAC    M1     M2     M3     Payback
2024-01  $50    $25    $40    $52    2.3개월
2024-02  $45    $28    $45    $58    2.0개월
2024-03  $40    $35    $48    -      1.8개월

개선 추이:
- CAC 감소: 마케팅 효율성 증가
- 초기 수익 증가: 온보딩 개선
- Payback 단축: 2.3 → 1.8개월
```

### 행동 코호트 분석

#### Power User 분석
```
상위 10% 활성 사용자 특징

일반 사용자 vs Power Users
                일반    Power   차이
DAU/MAU         25%     85%     3.4x
세션/일         1.2     5.8     4.8x
기능 사용       3개     12개    4.0x
친구 수         15명    87명    5.8x
콘텐츠 생성    2/주    15/주   7.5x

Power User 육성 전략:
1. 조기 식별 (첫 주 행동 패턴)
2. VIP 프로그램 제공
3. 베타 기능 우선 접근
4. 커뮤니티 리더 역할
```

#### Feature Adoption 코호트
```
신기능 채택률 추적

스토리 기능 출시 (2024년 2월)

코호트        사용자수  채택률  채택 시간  리텐션 영향
Pre-launch    10,000   35%     14일      +0%
Launch week   12,000   68%     3일       +15%
Post-launch   15,000   82%     1일       +25%

성공 요인:
- 온보딩에 즉시 포함
- 기존 사용자 교육 캠페인
- 인센티브 제공
```

#### Cross-feature Usage
```
기능 간 상관관계 분석

            단독 사용  함께 사용  리텐션
검색         45%       -         25%
필터         30%       -         22%
검색+필터     -        78%       45%
북마크       35%       -         30%
검색+북마크   -        65%       52%
전체 조합     -        92%       68%

인사이트:
- 다중 기능 사용자의 리텐션 2.7배
- 검색+필터 조합이 가장 효과적
- 기능 간 시너지 극대화 필요
```

### 예측 모델링

#### LTV 예측
```python
# 초기 행동으로 12개월 LTV 예측

예측 변수:
- D1 활동 시간
- D7 리텐션
- 첫 주 구매액
- 친구 수
- 기능 사용 다양성

모델 정확도: R² = 0.82

활용:
- 고가치 사용자 조기 식별
- 맞춤형 마케팅
- CAC 상한 설정
```

#### Churn 예측
```
이탈 위험 신호 감지

위험 신호 (7일 내 이탈 확률):
- 3일 연속 미접속: 45%
- 세션 시간 50% 감소: 38%
- 친구 언팔로우: 52%
- 부정적 피드백: 61%
- 복합 신호 (3개+): 78%

선제적 대응:
- 위험 점수 실시간 계산
- 자동 재참여 캠페인
- 고객 성공팀 알림
```

## 📈 리텐션 벤치마크

### 산업별 기준

#### 소셜 미디어
```
📱 Social Media Apps
         D1    D7    D30   D90
평균     65%   40%   25%   18%
상위25%  75%   50%   35%   25%
Facebook 85%   65%   50%   40%
Instagram 80%   60%   45%   35%
TikTok   75%   55%   40%   30%
```

#### 게임 (캐주얼)
```
🎮 Casual Games
         D1    D7    D30   D90
평균     35%   18%   10%   5%
상위25%  45%   25%   15%   8%
Candy Crush 40%  20%   12%   7%
Among Us  50%   30%   18%   10%
```

#### SaaS B2B
```
💼 B2B SaaS
         M1    M3    M6    M12
평균     92%   85%   78%   72%
상위25%  95%   90%   85%   80%
Slack    96%   92%   88%   84%
Zoom     94%   89%   85%   80%
Notion   93%   88%   83%   78%
```

#### 이커머스
```
🛒 E-commerce
         M1    M3    M6    M12
평균     25%   32%   38%   45%
상위25%  35%   45%   55%   65%
Amazon   60%   70%   75%   80%
쿠팡     45%   55%   62%   70%
```

### 한국 시장 특성
```
🇰🇷 한국 앱 리텐션 특징

높은 리텐션:
- 카카오톡: D30 85%+ (메신저 필수)
- 네이버: D30 75%+ (포털 독점)
- 쿠팡: M6 62%+ (로켓배송)

특이사항:
- 초기 리텐션 글로벌 대비 높음
- 브랜드 충성도 강함
- 빠른 트렌드 변화
```

## 💡 실무 사례 연구

### Spotify의 리텐션 전략

#### 문제 상황
```
상황: 신규 사용자 D30 리텐션 40%
분석: 플레이리스트 미생성자 리텐션 20%
      플레이리스트 생성자 리텐션 65%
```

#### 해결 방안
```
1. 온보딩 개선
   - 취향 분석 강화
   - 첫날 플레이리스트 자동 생성

2. Discover Weekly
   - 매주 월요일 개인화 추천
   - 30곡 맞춤 플레이리스트

3. 소셜 기능
   - 친구 플레이리스트 공유
   - 협업 플레이리스트
```

#### 결과
```
개선 후:
- D30 리텐션: 40% → 65%
- 플레이리스트 생성률: 35% → 78%
- 유료 전환율: 8% → 15%
```

### Pinterest의 코호트 개선

#### 가입 경로별 분석
```
코호트 분석 결과:
           가입률  D7 리텐션  D30 리텐션
웹         100%    25%        15%
iOS        100%    45%        30%
Android    100%    40%        28%

문제: 웹 가입자의 낮은 리텐션
```

#### 전략 수정
```
1. 웹 → 모바일 유도
   - 가입 후 앱 다운로드 유도
   - QR 코드 제공
   - SMS 앱 링크 발송

2. 반응형 웹 개선
   - 모바일 웹 UX 개선
   - PWA 도입

3. 크로스 플랫폼 동기화
   - 웹 활동 모바일 연동
   - 끊김 없는 경험
```

#### 성과
```
웹 사용자 개선:
- 앱 전환율: 15% → 45%
- D30 리텐션: 15% → 35%
- 전체 리텐션: 24% → 31%
```

## 🛠️ 실전 분석 템플릿

### SQL 코호트 쿼리
```sql
-- 표준 코호트 리텐션 테이블
WITH cohort_items AS (
  SELECT 
    user_id,
    DATE_TRUNC('month', created_at) as cohort_month
  FROM users
),
user_activities AS (
  SELECT 
    user_id,
    DATE_TRUNC('month', activity_date) as activity_month
  FROM events
  WHERE event_name = 'app_open'
  GROUP BY 1, 2
),
cohort_size AS (
  SELECT 
    cohort_month,
    COUNT(DISTINCT user_id) as num_users
  FROM cohort_items
  GROUP BY cohort_month
),
retention_table AS (
  SELECT 
    c.cohort_month,
    a.activity_month,
    COUNT(DISTINCT a.user_id) as retained_users
  FROM cohort_items c
  LEFT JOIN user_activities a ON c.user_id = a.user_id
  GROUP BY 1, 2
)
SELECT 
  r.cohort_month,
  DATEDIFF('month', r.cohort_month, r.activity_month) as month_number,
  s.num_users as cohort_size,
  r.retained_users,
  ROUND(100.0 * r.retained_users / s.num_users, 2) as retention_rate
FROM retention_table r
JOIN cohort_size s ON r.cohort_month = s.cohort_month
WHERE r.cohort_month >= '2024-01-01'
ORDER BY 1, 2;
```

### 리텐션 개선 체크리스트

#### 온보딩
- [ ] Time to Value < 5분
- [ ] Aha Moment 명확히 정의
- [ ] 첫날 핵심 행동 완료율 > 60%
- [ ] 프로그레시브 온보딩 구현

#### 습관 형성
- [ ] Daily Trigger 설정
- [ ] Variable Reward 시스템
- [ ] Investment 메커니즘
- [ ] 연속 사용 보상

#### 재참여
- [ ] 세그먼트별 캠페인
- [ ] 최적 타이밍 파악
- [ ] 개인화 메시지
- [ ] 윈백 인센티브

#### 측정과 분석
- [ ] 코호트 대시보드 구축
- [ ] 주간 리텐션 리뷰
- [ ] 예측 모델 운영
- [ ] A/B 테스트 지속

## 🚀 다음 단계

**코호트 분석 마스터 후**
→ [예측 모델링](../frameworks/predictive-analytics.md)
→ [LTV 최적화](../../2-strategy/goals-metrics/ltv-optimization.md)
→ [성장 루프 설계](../../3-delivery/frameworks/growth-loop.md)

---

*"Retention is the single most important thing for growth."*  
*- Alex Schultz, VP of Growth at Meta*