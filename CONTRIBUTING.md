# Contributing to PM Wiki

## 🤝 Welcome Contributors!

PM Wiki에 기여해주셔서 감사합니다. 이 문서는 프로젝트에 기여하는 방법을 안내합니다.

## 📋 Prerequisites

기여하기 전에 다음 사항을 확인해주세요:

- GitHub 계정
- Git 기본 지식
- Markdown 작성 능력
- PM 도메인 지식 (선택사항)

## 🚀 Getting Started

### 1. Fork & Clone

```bash
# Fork this repository
# Clone your fork
git clone https://github.com/YOUR_USERNAME/pmwiki-docs.git
cd pmwiki-docs

# Add upstream remote
git remote add upstream https://github.com/ORIGINAL_OWNER/pmwiki-docs.git
```

### 2. Create a Branch

```bash
# Create a new branch for your feature
git checkout -b feature/your-feature-name

# For bug fixes
git checkout -b fix/bug-description
```

## 📝 Content Guidelines

### Markdown Standards

1. **헤더 사용**
   - `#` H1: 페이지 제목 (페이지당 1개)
   - `##` H2: 주요 섹션
   - `###` H3: 하위 섹션
   - `####` H4: 세부 항목

2. **포맷팅**
   - **굵은 글씨**: 중요한 용어나 개념
   - *이탤릭*: 강조나 인용
   - `코드`: 기술 용어나 명령어
   - > 인용: 참고사항이나 인용문

3. **링크**
   - 내부 링크: `[텍스트](../relative/path.md)`
   - 외부 링크: `[텍스트](https://example.com)`
   - 앵커 링크: `[텍스트](#section-id)`

### Content Structure

각 페이지는 다음 구조를 따라야 합니다:

```markdown
# 페이지 제목

## Overview
페이지 내용 개요 (2-3문장)

## Key Concepts
핵심 개념 설명

## Detailed Content
상세 내용

## Examples (선택사항)
실제 예시

## Related Resources
- 관련 링크
- 참고 자료

## Next Steps
다음 학습 내용
```

### Writing Style

1. **명확하고 간결하게**
   - 짧은 문장 사용
   - 전문 용어는 처음 사용시 설명
   - 불필요한 수식어 제거

2. **일관성 유지**
   - 용어 일관성
   - 톤 & 매너 일관성
   - 포맷 일관성

3. **실용적인 내용**
   - 이론보다 실무 중심
   - 구체적인 예시 포함
   - Action item 제공

## 🔄 Submission Process

### 1. Commit Messages

```
<type>: <subject>

<body>

<footer>
```

**Types:**
- `feat`: 새로운 콘텐츠 추가
- `fix`: 오류 수정
- `docs`: 문서 개선
- `style`: 포맷팅, 오타 수정
- `refactor`: 구조 개선
- `chore`: 유지보수

**Example:**
```
feat: Add Design Thinking framework page

Added comprehensive guide on Design Thinking methodology
including 5-stage process and practical examples

Closes #123
```

### 2. Pull Request

1. **PR 제목**: 명확하고 구체적으로
2. **설명**: 변경사항 상세 설명
3. **체크리스트** 완료
4. **스크린샷**: UI 변경시 첨부

### 3. Review Process

- 모든 PR은 리뷰 필요
- 피드백 반영
- CI/CD 체크 통과
- Maintainer 승인

## 📂 Directory Structure

```
pmwiki/
├── SUMMARY.md          # GitBook 목차
├── README.md           # 프로젝트 소개
├── foundations/        # 기초 개념
│   ├── README.md      # 섹션 인덱스
│   └── *.md           # 개별 페이지
├── methods/           # 방법론
├── tools/             # 도구
├── case-studies/      # 사례
├── templates/         # 템플릿
├── career/            # 경력
└── updates/           # 업데이트
```

## 🐛 Reporting Issues

### Bug Report

```markdown
**Description:**
버그에 대한 명확한 설명

**Steps to Reproduce:**
1. 첫 번째 단계
2. 두 번째 단계
3. ...

**Expected Behavior:**
예상된 동작

**Actual Behavior:**
실제 발생한 동작

**Screenshots:**
(있는 경우)

**Environment:**
- Browser:
- OS:
- Device:
```

### Feature Request

```markdown
**Feature Description:**
제안하는 기능 설명

**Use Case:**
사용 사례

**Benefits:**
예상 효과

**Additional Context:**
추가 정보
```

## 📜 Code of Conduct

1. **존중**: 모든 기여자를 존중
2. **건설적**: 건설적인 피드백
3. **포용적**: 다양성 존중
4. **전문적**: 전문적인 태도 유지

## 📞 Contact

질문이 있으시면 다음 채널로 연락주세요:

- **GitHub Issues**: 기술적 문제
- **Email**: pmwiki@example.com
- **Discord**: [PM Wiki Community](https://discord.gg/example)

## 🙏 Acknowledgments

모든 기여자분들께 감사드립니다! 

---

*Thank you for contributing to PM Wiki!* 🚀
