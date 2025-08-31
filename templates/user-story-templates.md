# User Story Templates

> 🚧 **Under Construction**  
> This page is currently being developed. Expected completion: April 2025

## Overview

User Story는 사용자 관점에서 기능을 설명하는 간단한 서술입니다. 효과적인 User Story 작성을 위한 템플릿과 예시를 제공합니다.

## 🎯 Learning Objectives

이 페이지를 완료하면 다음을 이해하게 됩니다:
- [ ] User Story의 구조와 원칙
- [ ] INVEST 기준 적용
- [ ] Acceptance Criteria 작성
- [ ] Story 분해와 추정

## 📋 User Story Basic Template

### Standard Format
```
As a [type of user]
I want [an action or feature]
So that [benefit/value]
```

### Extended Format
```
As a [persona/role]
I want [what]
So that [why]
When [context]
Then [outcome]
```

## 📝 User Story Examples by Type

### 1. Feature Story
```markdown
**Title**: User Login with Social Media

**As a** new user
**I want to** sign up using my Google or Facebook account
**So that** I can quickly access the app without creating a new password

**Acceptance Criteria**:
- [ ] "Sign in with Google" button visible on login page
- [ ] "Sign in with Facebook" button visible on login page
- [ ] User profile auto-populated from social account
- [ ] Email verification not required for social login
- [ ] Session persists for 30 days

**Notes**:
- Use OAuth 2.0 protocol
- Store social provider ID
- Handle email conflicts

**Story Points**: 5
```

### 2. Bug Fix Story
```markdown
**Title**: Fix Payment Processing Error

**As a** customer
**I want** my payment to process successfully
**So that** I can complete my purchase without frustration

**Bug Description**:
Payment fails when user has special characters in name

**Acceptance Criteria**:
- [ ] Special characters accepted in name field
- [ ] Payment processes with names containing: ' - . spaces
- [ ] Error message clear if invalid character used
- [ ] Existing payments not affected

**Priority**: P0 (Critical)
**Story Points**: 2
```

### 3. Technical Story
```markdown
**Title**: Database Performance Optimization

**As a** system
**I want** optimized database queries
**So that** page load times improve for users

**Technical Requirements**:
- Add indexes to user_id, created_at columns
- Optimize N+1 queries in dashboard
- Implement query caching

**Acceptance Criteria**:
- [ ] Dashboard load time <2 seconds
- [ ] Database CPU usage reduced by 30%
- [ ] No functionality regression
- [ ] Performance tests pass

**Story Points**: 8
```

### 4. Spike Story
```markdown
**Title**: Research Payment Gateway Options

**As a** product team
**I want to** evaluate payment gateway providers
**So that** we can choose the best solution for our needs

**Research Questions**:
1. What are the transaction fees?
2. Which countries are supported?
3. What is the integration effort?
4. What are the SLA guarantees?

**Deliverables**:
- [ ] Comparison matrix of top 3 providers
- [ ] POC implementation with preferred option
- [ ] Cost analysis for 1-year projection
- [ ] Technical recommendation document

**Timebox**: 1 sprint
```

## 🎯 INVEST Criteria

### Good User Story Checklist
```markdown
✅ **Independent** - Can be developed separately
✅ **Negotiable** - Details can be discussed
✅ **Valuable** - Delivers value to users
✅ **Estimable** - Can be sized
✅ **Small** - Fits in one sprint
✅ **Testable** - Has clear acceptance criteria
```

### Example: Applying INVEST
```markdown
❌ Poor Story:
"Improve the application"

✅ Good Story:
"As a mobile user, I want the app to load in under 3 seconds 
so that I can quickly access information on slow connections"

Why it's better:
- Independent: Specific performance improvement
- Negotiable: Can discuss exact timing
- Valuable: Clear user benefit
- Estimable: Can measure load time
- Small: Single optimization focus
- Testable: Measurable criterion
```

## 📊 Story Hierarchy

### Epic → Story → Task
```
Epic: User Onboarding Experience
├── Story: User Registration
│   ├── Task: Design registration form
│   ├── Task: Implement email validation
│   └── Task: Create welcome email
├── Story: Profile Setup
│   ├── Task: Design profile wizard
│   ├── Task: Implement photo upload
│   └── Task: Add preferences section
└── Story: First-Use Tutorial
    ├── Task: Create tutorial screens
    ├── Task: Implement skip option
    └── Task: Track completion rate
```

## 📝 Acceptance Criteria Templates

### Given-When-Then Format
```markdown
**Given** [context/precondition]
**When** [action/trigger]
**Then** [expected outcome]

Example:
**Given** I am a logged-in user with items in cart
**When** I click "Checkout"
**Then** I see the payment page with my cart total
```

### Checklist Format
```markdown
**Acceptance Criteria**:
- [ ] User can perform [action]
- [ ] System displays [feedback]
- [ ] Data is [stored/updated/deleted]
- [ ] Email notification sent if [condition]
- [ ] Error shows when [invalid input]
- [ ] Success message appears after [completion]
```

### Scenario Format
```markdown
**Scenario 1**: Successful Login
- Enter valid email
- Enter valid password
- Click login → Dashboard appears

**Scenario 2**: Invalid Credentials
- Enter invalid email/password
- Click login → Error message
- Login count incremented
- Account locked after 5 attempts
```

## 💡 Story Writing Best Practices

### Do's ✅
```markdown
1. **Focus on User Value** - Always include the "so that"
2. **Keep it Simple** - One story, one goal
3. **Be Specific** - Avoid vague terms
4. **Include Context** - Add notes for clarity
5. **Collaborate** - Write with the team
```

### Don'ts ❌
```markdown
1. **Technical Jargon** - Keep user-focused
2. **Solution in Story** - Describe what, not how
3. **Compound Stories** - Split complex stories
4. **Missing Criteria** - Always define done
5. **Huge Stories** - Break down if >13 points
```

## 🔄 Story Refinement Process

```markdown
## Story Refinement Checklist

### Before Refinement
- [ ] Story has basic description
- [ ] Initial acceptance criteria drafted
- [ ] Questions documented
- [ ] Dependencies identified

### During Refinement
- [ ] Clarify requirements
- [ ] Update acceptance criteria
- [ ] Identify edge cases
- [ ] Estimate story points
- [ ] Assign sprint (if ready)

### After Refinement
- [ ] Story marked as "Ready"
- [ ] Team understands scope
- [ ] Test scenarios defined
- [ ] No blocking questions
```

## 📚 Related Resources

- [PRD Templates](prd-templates.md) - Product requirements
- [Agile & Scrum](../methods/agile-scrum.md) - Agile methodology
- [Meeting Templates](meeting-templates.md) - Refinement meetings

## 📖 Recommended Reading (To be added)

- [ ] "User Stories Applied" - Mike Cohn
- [ ] "Fifty Quick Ideas to Improve Your User Stories" - Impact Mapping
- [ ] "Writing Effective Use Cases" - Alistair Cockburn
- [ ] "Agile Estimating and Planning" - Mike Cohn

---

**Navigation**  
← [PRD Templates](prd-templates.md) | [Meeting Templates](meeting-templates.md) →

---

*Downloadable story templates coming soon!*

*Last updated: 2025-01-26*
