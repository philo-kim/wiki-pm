# Wiki-PM 콘텐츠 구조 가이드 (최종)

> 이 문서는 Wiki-PM의 실제 콘텐츠 구조와 작성 가이드를 정의합니다.  
> 4단계 프로세스 구조에 맞춰 최종 확정된 내용입니다.

## 📋 전체 구조 개요

```
wiki-pm/
├── 0-overview/           # PM 개인 역량 (Foundation)
├── 1-discovery/          # 발견과 이해 (Input)
├── 2-strategy/           # 전략과 계획 (Decision)
├── 3-delivery/           # 실행과 구현 (Output)
├── 4-leadership/         # 리더십과 협업 (Enabler)
├── resources/            # 템플릿, 도구, 참고자료
└── special-topics/       # 특별 주제 (AI PM, B2B PM 등)
```

## 📁 각 카테고리별 하위 구조

### 0️⃣ Overview - 개인 역량

```
0-overview/
├── pm-foundation/          # PM의 기초
│   ├── README.md          # PM이란 무엇인가
│   └── what-is-pm.md      # PM 정의와 역할
├── competency-framework/   # PM 역량 프레임워크
│   ├── README.md          # 역량 개요
│   └── core-competencies.md # 핵심 역량 가이드
├── mindset-thinking/       # PM의 사고방식
│   └── README.md          # 마인드셋 가이드
└── career-path/           # PM 커리어 패스
    └── README.md          # 커리어 개발 가이드
```

### 1️⃣ Discovery - 발견과 이해

```
1-discovery/
├── customer-understanding/  # 고객 이해
│   ├── README.md
│   └── interview-guide.md
├── user-research/          # 사용자 리서치
│   └── README.md
├── data-analysis/          # 데이터 분석
│   └── README.md
├── problem-discovery/      # 문제 발견
│   └── README.md
├── market-research/        # 시장 조사
│   └── README.md
├── competitive-analysis/   # 경쟁 분석
│   └── README.md
└── frameworks/            # Discovery 프레임워크
    ├── README.md
    └── jobs-to-be-done.md
```

### 2️⃣ Strategy - 전략과 계획

```
2-strategy/
├── product-strategy/       # 제품 전략
│   └── README.md
├── business-model/         # 비즈니스 모델
│   └── README.md
├── roadmap-prioritization/ # 로드맵과 우선순위
│   └── README.md
├── goals-metrics/          # 목표와 지표
│   └── README.md
├── go-to-market/          # 시장 진입 전략
│   └── README.md
├── case-studies/          # 전략 사례 연구
│   └── README.md
└── frameworks/            # Strategy 프레임워크
    └── README.md
```

### 3️⃣ Delivery - 실행과 구현

```
3-delivery/
├── product-design/         # 제품 설계와 명세
│   ├── README.md
│   └── prd-template.md
├── development-process/    # 개발 프로세스
│   └── README.md
├── launch-deployment/      # 출시와 배포
│   └── README.md
├── experimentation/        # 실험과 테스트
│   └── README.md
├── product-operations/     # 제품 운영
│   └── README.md
└── frameworks/            # Delivery 프레임워크
    ├── README.md
    └── agile-scrum.md
```

### 4️⃣ Leadership - 리더십과 협업

```
4-leadership/
├── team-culture/           # 팀 문화와 리더십
│   └── README.md
├── communication/          # 커뮤니케이션
│   └── README.md
├── stakeholder-management/ # 이해관계자 관리
│   └── README.md
├── decision-making/        # 의사결정
│   └── README.md
├── influence-persuasion/   # 영향력과 설득
│   └── README.md
└── frameworks/            # Leadership 프레임워크
    ├── README.md
    └── radical-candor.md
```

### 📚 Resources - 리소스

```
resources/
├── templates/              # 실무 템플릿
│   └── README.md
├── tools/                  # PM 도구
│   └── README.md
├── books-articles/         # 추천 도서와 아티클
│   └── README.md
└── glossary/              # PM 용어집
    └── README.md
```

### 💡 Special Topics - 특별 주제

```
special-topics/
├── ai-pm/                  # AI 시대의 PM
│   └── README.md
├── platform-pm/            # 플랫폼 PM
│   └── README.md
├── b2b-pm/                # B2B 제품 관리
│   └── README.md
└── growth-pm/             # 그로스 PM
    └── README.md
```

## 📝 문서 작성 표준

### README.md 구조
모든 카테고리의 README.md는 다음 구조를 따릅니다:

```markdown
# [카테고리명] - [한글명]

> 🚧 **Under Construction**  
> 이 페이지는 현재 작성 중입니다.

## 개요
[이 섹션의 목적과 범위]

## 📚 이 섹션에서 다루는 내용
- 주요 토픽 1
- 주요 토픽 2
- 주요 토픽 3

## 🎯 학습 목표
이 섹션을 완료하면:
- 목표 1
- 목표 2
- 목표 3

## 📖 주요 문서
- [문서1](./document1.md)
- [문서2](./document2.md)

## 💡 실전 팁
[실무 적용 가이드]

## 🔗 다음 단계
- [관련 섹션1](../related1/)
- [관련 섹션2](../related2/)

---
*[인용구 또는 핵심 메시지]*
```

### 개별 문서 구조

```markdown
# [문서 제목]

> 🚧 **Under Construction**  
> 이 페이지는 현재 작성 중입니다.

## 개요
[문서의 목적과 개요]

## 핵심 개념
[주요 정의와 원리]

## 실무 적용
### 방법 1
[구체적인 적용 방법]

### 방법 2
[대안적 접근]

## 예시
[실제 사례나 예제]

## 체크리스트
- [ ] 체크 항목 1
- [ ] 체크 항목 2
- [ ] 체크 항목 3

## 도구와 템플릿
- [템플릿 링크]
- [도구 추천]

## 주의사항
[흔한 실수나 함정]

## 관련 문서
- [연관 문서1]
- [연관 문서2]

## 추가 학습
- 추천 도서
- 온라인 코스
- 아티클
```

## ✅ 콘텐츠 품질 기준

### 필수 요소
- **명확한 목적**: 왜 이 내용이 필요한지
- **실무 중심**: 이론보다 실제 적용 방법
- **구체적 예시**: 추상적 설명 대신 구체적 사례
- **체크리스트**: 바로 실행 가능한 액션 아이템
- **관련 링크**: 다른 문서와의 연결

### 톤 & 매너
- **포용적**: "이것도 있다, 저것도 있다"
- **실용적**: "이렇게 하면 된다"
- **격려적**: "할 수 있다"
- **겸손한**: "이렇게도 할 수 있다"

### 피해야 할 것
- ❌ 단정적 표현 ("반드시", "절대")
- ❌ 이론만 나열
- ❌ 실리콘밸리 사례만 인용
- ❌ 한국 현실과 동떨어진 내용

## 📊 콘텐츠 완성도 추적

### 현재 상태 (2024.12.19)
| 카테고리 | 인덱스 | 핵심 문서 | 프레임워크 | 템플릿 |
|---------|--------|-----------|-----------|---------|
| Overview | ✅ | 🚧 | - | - |
| Discovery | ✅ | 🚧 | 🚧 | 📅 |
| Strategy | ✅ | 🚧 | 🚧 | 📅 |
| Delivery | ✅ | 🚧 | 🚧 | 🚧 |
| Leadership | ✅ | 🚧 | 🚧 | 📅 |

- ✅ 완료
- 🚧 작성 중
- 📅 계획됨

### 목표
- **1개월**: 모든 README 완성
- **3개월**: 핵심 문서 50개 이상
- **6개월**: 템플릿 20개, 프레임워크 30개

## 🔄 업데이트 프로세스

### 신규 콘텐츠 추가
1. 적절한 카테고리 확인 (MECE 원칙)
2. README 업데이트
3. 문서 작성 (표준 구조 준수)
4. 관련 문서 링크 추가
5. SUMMARY.md 업데이트

### 기존 콘텐츠 개선
1. Under Construction 표시 제거
2. 실제 사례 추가
3. 템플릿 링크 연결
4. 피드백 반영
5. 버전 히스토리 기록

## 💡 우선순위

### 즉시 (1주)
1. 모든 카테고리 README 완성
2. 핵심 개념 문서 작성
3. 기본 프레임워크 정리

### 단기 (1개월)
1. PRD 템플릿
2. 인터뷰 가이드
3. OKR 프레임워크
4. Agile/Scrum 가이드

### 중기 (3개월)
1. 모든 하위 카테고리 문서
2. 사례 연구 10개
3. 템플릿 15개
4. 프레임워크 20개

## 📌 핵심 원칙

> **"Structure for Clarity, Content for Value"**  
> 구조는 명확성을 위해, 콘텐츠는 가치를 위해

> **"Start Simple, Grow Organic"**  
> 단순하게 시작하고, 유기적으로 성장

> **"Korean Context, Global Standard"**  
> 한국 맥락에서, 글로벌 수준으로

---

*최종 수정일: 2024.12.19*  
*이 가이드는 Wiki-PM의 콘텐츠 일관성을 유지하는 실무 가이드입니다.*