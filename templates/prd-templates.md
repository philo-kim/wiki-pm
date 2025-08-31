# PRD (Product Requirements Document) Templates

> 🚧 **Under Construction**  
> This page is currently being developed. Expected completion: April 2025

## Overview

PRD는 제품 개발의 청사진입니다. 명확하고 실행 가능한 PRD 작성을 위한 템플릿과 가이드라인을 제공합니다.

## 🎯 Learning Objectives

이 페이지를 완료하면 다음을 이해하게 됩니다:
- [ ] PRD의 목적과 구성요소
- [ ] 효과적인 PRD 작성법
- [ ] 다양한 PRD 형식
- [ ] PRD 관리 best practices

## 📋 PRD Template - Standard Version

### 1. Executive Summary

```markdown
## Executive Summary

**Product Name**: [Product/Feature Name]
**Author**: [PM Name]
**Date**: [Creation Date]
**Version**: [1.0]
**Status**: [Draft/Review/Approved]

### One-Liner
[Single sentence describing what this product/feature does]

### Key Stakeholders
- Engineering Lead: [Name]
- Design Lead: [Name]
- Business Owner: [Name]
- QA Lead: [Name]
```

### 2. Problem Statement

```markdown
## Problem Statement

### Background
[Context and current situation]

### Problem
[Specific problem we're solving]

### Evidence
- [Data point 1]
- [User feedback 2]
- [Market research 3]

### Impact of Not Solving
[What happens if we don't address this]
```

### 3. Goals & Success Metrics

```markdown
## Goals & Success Metrics

### Business Goals
1. [Goal 1]
2. [Goal 2]

### User Goals
1. [User goal 1]
2. [User goal 2]

### Success Metrics
| Metric | Current | Target | Timeline |
|--------|---------|--------|----------|
| [Metric 1] | X | Y | Q2 2025 |
| [Metric 2] | A | B | Q3 2025 |

### Non-Goals
- [What we're explicitly NOT doing]
```

### 4. User Stories & Use Cases

```markdown
## User Stories

### Primary User Story
**As a** [user type]
**I want to** [action]
**So that** [benefit]

### Use Cases
1. **Use Case 1**: [Title]
   - Actor: [User type]
   - Precondition: [State]
   - Flow: [Steps]
   - Postcondition: [Result]
```

### 5. Requirements

```markdown
## Requirements

### Functional Requirements
| ID | Requirement | Priority | Notes |
|----|-------------|----------|-------|
| FR1 | [Description] | P0 | [Notes] |
| FR2 | [Description] | P1 | [Notes] |

### Non-Functional Requirements
| Category | Requirement | Target |
|----------|-------------|--------|
| Performance | Page load | <2s |
| Reliability | Uptime | 99.9% |
| Security | Authentication | OAuth 2.0 |
| Scalability | Concurrent users | 10,000 |
```

### 6. Solution Design

```markdown
## Solution Design

### High-Level Design
[Architecture diagram or description]

### User Flow
[Step-by-step user journey]

### Wireframes/Mockups
[Links to design files]

### API Specifications
[Endpoint definitions if applicable]
```

### 7. Dependencies & Risks

```markdown
## Dependencies & Risks

### Dependencies
| Dependency | Team/System | Status | Due Date |
|------------|-------------|--------|----------|
| [API Integration] | Backend | In Progress | MM/DD |

### Risks
| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|
| [Risk 1] | High/Med/Low | High/Med/Low | [Plan] |
```

### 8. Timeline & Milestones

```markdown
## Timeline & Milestones

### Development Phases
| Phase | Duration | Deliverables |
|-------|----------|--------------|
| Design | 2 weeks | Mockups, Prototype |
| Development | 6 weeks | Feature complete |
| Testing | 2 weeks | QA signoff |
| Launch | 1 week | GA release |

### Key Milestones
- [ ] Design Review: MM/DD
- [ ] Dev Complete: MM/DD
- [ ] Beta Launch: MM/DD
- [ ] GA Launch: MM/DD
```

## 📋 PRD Template - Agile/Lean Version

```markdown
# Feature: [Name]

## Problem
[1-2 sentences on the problem]

## Solution
[1-2 sentences on the approach]

## Acceptance Criteria
- [ ] Criterion 1
- [ ] Criterion 2
- [ ] Criterion 3

## Metrics
- Primary: [Metric]
- Secondary: [Metric]

## Out of Scope
- [Item 1]
- [Item 2]
```

## 📋 PRD Template - One-Pager

```markdown
# [Product Name] One-Pager

**Problem**: [What problem are we solving?]

**Solution**: [How are we solving it?]

**Users**: [Who is this for?]

**Impact**: [Business/User impact]

**Success Metrics**:
- [Metric 1]
- [Metric 2]

**MVP Scope**:
- [Feature 1]
- [Feature 2]
- [Feature 3]

**Timeline**: [X weeks]

**Team**: [Names]

**Risks**: [Top 2-3 risks]
```

## 💡 PRD Best Practices

### Do's ✅
1. **Be Specific**: Avoid ambiguity
2. **Include Why**: Context matters
3. **Prioritize**: Not everything is P0
4. **Visual Aids**: Diagrams > Text
5. **Version Control**: Track changes

### Don'ts ❌
1. **Over-specify**: Leave room for creativity
2. **Skip Research**: Always validate
3. **Ignore Edge Cases**: Think through scenarios
4. **Write and Forget**: Keep updated
5. **Work in Isolation**: Get feedback early

## 🛠 PRD Tools

### Documentation Tools
- Google Docs (Collaboration)
- Confluence (Integration)
- Notion (Flexibility)
- Coda (Interactive)

### Specialized Tools
- ProductPlan (Roadmapping)
- Aha! (Full lifecycle)
- JIRA (Dev integration)
- Productboard (Insights)

## 📊 PRD Review Checklist

```markdown
## PRD Review Checklist

### Completeness
- [ ] Problem clearly defined
- [ ] Success metrics identified
- [ ] Requirements prioritized
- [ ] Dependencies listed
- [ ] Timeline realistic

### Clarity
- [ ] No ambiguous terms
- [ ] Technical terms explained
- [ ] Assumptions documented
- [ ] Scope boundaries clear

### Feasibility
- [ ] Engineering reviewed
- [ ] Design approved
- [ ] Resources available
- [ ] Risks acceptable
```

## 📚 Related Resources

- [User Story Templates](user-story-templates.md) - User story writing
- [Meeting Templates](meeting-templates.md) - Review meetings
- [Agile & Scrum](../methods/agile-scrum.md) - Agile documentation

## 📖 Recommended Reading (To be added)

- [ ] "Inspired" - Marty Cagan
- [ ] "The Lean Product Playbook" - Dan Olsen
- [ ] "Good Product Manager/Bad Product Manager" - Ben Horowitz
- [ ] "Shape Up" - Basecamp

---

**Navigation**  
← [Failed Products](../case-studies/failed-products.md) | [User Story Templates](user-story-templates.md) →

---

*Downloadable PRD templates coming soon!*

*Last updated: 2025-01-26*
