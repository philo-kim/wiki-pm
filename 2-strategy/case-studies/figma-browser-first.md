# Case Study: Figma의 브라우저 우선 전략

> "설치가 필요 없는 디자인 툴" - 기술 선택이 $20B 가치를 만든 방법

## 🎯 시작: 디자인 협업의 문제 (2012)

### Dylan Field의 통찰
**브라운 대학 중퇴생의 관찰**:
- Photoshop: 개인 작업만 가능
- Sketch: Mac 전용, 실시간 협업 불가
- 파일 버전 관리 지옥
- "design_final_final_v3.sketch"

### Thiel Fellowship $100K
- 20살에 대학 중퇴
- Peter Thiel로부터 $100K
- "브라우저에서 포토샵 만들기"
- 모두가 "불가능" 평가

## 💡 핵심 베팅: WebGL

### 2012년의 도전적 선택
```javascript
// 당시 WebGL 상황
const challenges = {
  "브라우저 지원": "Chrome만 제대로",
  "성능": "네이티브 대비 50%",
  "개발자": "극소수",
  "사례": "거의 없음"
}
```

### 왜 브라우저인가?
**Dylan의 신념**:
1. **무설치**: 링크만 보내면 즉시 협업
2. **크로스 플랫폼**: OS 무관
3. **실시간 동기화**: 웹의 본질
4. **항상 최신 버전**: 업데이트 불필요

## 🛠 4년의 스텔스 개발 (2012-2016)

### 기술적 도전 극복

**WebGL 렌더링 엔진**:
```javascript
// Figma의 자체 렌더링 엔진
class FigmaRenderer {
  constructor() {
    this.canvas = document.createElement('canvas');
    this.gl = canvas.getContext('webgl2');
    this.customShaders = this.compileShaders();
  }
  
  render(nodes) {
    // 60fps 유지하며 수천 개 객체 렌더링
    this.batchRender(nodes);
    this.requestAnimationFrame();
  }
}
```

**성능 최적화**:
- C++ → WebAssembly 컴파일
- 자체 벡터 네트워크 구현
- GPU 가속 활용
- 지연 로딩과 가상화

### Operational Transform (OT)
```
실시간 협업 알고리즘:
1. 모든 작업을 Operation으로 변환
2. 서버에서 Operation 순서 정렬
3. Conflict Resolution
4. 모든 클라이언트 동기화
```

## 🚀 공개 런칭 (2016.09)

### Product Hunt 데뷔
**첫날 반응**:
- Product Hunt #1
- 가입자 5,000명
- "Sketch 킬러" 언급
- 서버 과부하 3회

### 초기 회의론
**디자이너들의 의구심**:
- "브라우저가 느릴 것"
- "오프라인 작업 불가"
- "플러그인 없음"
- "전문가용 아님"

## 🎨 차별화 기능

### 1. 멀티플레이어 모드
```
Before (Sketch):
- 파일 다운로드
- 작업
- 업로드
- Slack으로 알림
- 충돌 해결

After (Figma):
- URL 공유
- 동시 작업
- 실시간 커서
- 즉시 반영
```

### 2. 버전 히스토리
**자동 저장 + 타임머신**:
- 모든 변경사항 자동 저장
- 언제든 과거로 복원
- 브랜치 생성 가능
- 충돌 없음

### 3. 컴포넌트 시스템
```javascript
// 디자인 시스템의 코드화
const Button = {
  master: "PrimaryButton",
  instances: ["HeaderButton", "CTAButton", "FormButton"],
  properties: {
    text: "String",
    state: ["default", "hover", "pressed", "disabled"],
    size: ["small", "medium", "large"]
  }
}
```

## 📈 성장 전략

### 1. 무료 교육 라이선스
**학생/교육자 무료**:
- 디자인 학교 침투
- 신입 디자이너 Figma 네이티브
- 기업 진입 시 Figma 요구

**결과**:
```
2017: 100개 학교
2019: 1,000개 학교
2021: 5,000개 학교
→ 졸업생이 기업에 Figma 전파
```

### 2. Community 파일
**템플릿/리소스 공유**:
- 무료 디자인 리소스
- iOS/Android UI 킷
- 아이콘 세트
- 일러스트레이션

**네트워크 효과**:
- 공유 → 사용 → 제작 → 공유

### 3. FigJam 출시 (2021)
**화이트보드 도구**:
- 디자인 외 팀도 사용
- 브레인스토밍
- 프로젝트 계획
- TAM 확장

## 💰 비즈니스 성과

### 투자와 성장
| 연도 | 라운드 | 금액 | 밸류에이션 |
|------|--------|------|------------|
| 2013 | Seed | $4M | - |
| 2015 | Series A | $14M | $100M |
| 2018 | Series C | $40M | $440M |
| 2019 | Series D | $50M | $2B |
| 2021 | Series E | $200M | $10B |
| 2022 | Adobe 인수 시도 | - | $20B |

### 핵심 지표
```python
metrics = {
  "2016": {"users": 10000, "revenue": 0},
  "2018": {"users": 500000, "revenue": "$5M"},
  "2020": {"users": 3000000, "revenue": "$75M"},
  "2022": {"users": 5000000, "revenue": "$400M"},
  "2024": {"users": 7000000+, "revenue": "$700M+"}
}
```

## 🔄 Sketch 대응과 실패

### Sketch의 늦은 대응
**2017**: Sketch Cloud (제한적 공유)
**2020**: Sketch for Teams (실시간 X)
**2022**: 브라우저 버전 발표

**실패 이유**:
- 네이티브 앱 레거시
- 코드베이스 재작성 필요
- 이미 늦은 타이밍

### 시장 점유율 역전
```
2016: Sketch 80% / Figma 2%
2019: Sketch 60% / Figma 25%
2022: Sketch 30% / Figma 60%
```

## 🌍 생태계 구축

### 플러그인 플랫폼
```javascript
// Figma 플러그인 API
figma.createRectangle();
figma.currentPage.selection;
figma.notify("Hello Figma!");
```

**인기 플러그인**:
- Unsplash (이미지)
- Content Reel (더미 데이터)
- Figmotion (애니메이션)

### 개발자 핸드오프
**Figma to Code**:
- CSS 자동 생성
- React/Vue 컴포넌트
- iOS/Android 코드
- 개발자 모드

## 💡 Adobe 인수 무산 (2022)

### $20B 인수 합의
**2022.09 발표**:
- 현금 + 주식 $20B
- 역대 최대 SaaS 인수

### 규제 당국 반대
**2023.12 무산**:
- EU/UK 독점 우려
- 디자인 툴 시장 과점
- 혁신 저해 우려

### 독립 유지의 이점
- 빠른 혁신 지속
- 문화 유지
- IPO 가능성

## 🔑 성공 요인

### 1. 기술 선택의 중요성
```
Wrong time: 2008 (브라우저 미성숙)
Right time: 2012 (WebGL 등장)
Perfect time: 2016 (Chrome 지배)
```

### 2. 협업 > 기능
- 99% 기능 < 실시간 협업
- 디자인은 팀 스포츠
- 도구가 워크플로 정의

### 3. 개발자 공동창업자
**Evan Wallace (CTO)**:
- WebGL 전문가
- 컴파일러 개발 경험
- 기술적 난제 해결

## 💡 PM을 위한 교훈

### 1. 기술이 전략이다
```python
def platform_decision():
    if collaboration > individual_power:
        choose("web")
    elif performance > everything:
        choose("native")
    else:
        choose("hybrid")
```

### 2. 타이밍의 예술
- 너무 빠르면 실패 (기술 미성숙)
- 너무 늦으면 실패 (경쟁자 선점)
- WebGL 성숙 시점 포착

### 3. 단순함의 힘
- 링크 하나로 시작
- 가입 없이 구경
- 설치 없이 사용

### 4. 네트워크 효과
- 혼자 쓸 수 없는 도구
- 공유할수록 가치 증가
- 록인 효과

## 🔮 미래 전망

### Figma의 비전
"디자인의 구글 독스"

### Dev Mode 확장
- 디자인 → 코드 자동화
- AI 기반 생성
- 노코드 통합

## 📚 참고 자료
- Config (Figma 컨퍼런스) 키노트
- Dylan Field 인터뷰
- "Design Better" 팟캐스트
- TechCrunch 기사

---

*"The browser is the most important platform in the world, and it's getting better every day."*
- **Dylan Field, Figma CEO**