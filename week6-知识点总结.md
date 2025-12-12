# Week 6 Knowledge Summary - Technical Debt / Week 6 知识点总结 - 技术债

## Table of Contents / 目录

- [1. Definition & Metaphor / 1. 定义与比喻](#1-definition--metaphor--1-定义与比喻)
- [2. Lifecycle of TD / 2. 技术债生命周期](#2-lifecycle-of-td--2-技术债生命周期)
- [3. What is NOT TD / 3. 不属于技术债](#3-what-is-not-td--3-不属于技术债)
- [4. Practice Reality / 4. 实践现状](#4-practice-reality--4-实践现状)
- [5. Dimensions of TD / 5. 技术债维度](#5-dimensions-of-td--5-技术债维度)
- [6. Management Basics / 6. 管理要点](#6-management-basics--6-管理要点)
- [Additional Detail / 补充要点](#additional-detail--补充要点)

---

## 1. Definition & Metaphor / 1. 定义与比喻

#### English
Technical Debt (TD): doing things “quick and dirty” creates a debt; short-term expedient choices make future work cost more than doing it now. Debt has principal (the gap) and interest (extra costs: slower dev/test, more bugs, support cost, brittle code).

#### 中文
技术债：以“快速但粗糙”的方式做事会形成债务；短期权宜之计使未来同样工作成本更高。债务有本金（缺口）和利息（额外成本：开发/测试变慢、更多缺陷、支持成本、代码脆弱）。

---

## 2. Lifecycle of TD / 2. 技术债生命周期

#### English
Typical: incur debt → pay interest (workarounds, slower change) → pay back (refactor/fix). Interest examples: no tests on legacy code, brittle system causing regressions, high support cost, slow build/debug cycles.

#### 中文
典型流程：产生债务 → 支付利息（权宜与变慢） → 还债（重构/修复）。利息示例：遗留代码缺少测试、系统脆弱导致回归、高支持成本、构建调试缓慢。

#### 通俗解释

技术债就像借钱：为了快速完成（比如为了赶工期写烂代码），以后要还（重构代码），还要付利息（维护成本高、改bug慢、容易出错）。比如为了赶时间没写测试，以后每次改代码都要手动测试，很慢；代码写得乱，以后加功能要改很多地方，容易出错。就像信用卡，现在方便了，以后要还更多。

---

## 3. What is NOT TD / 3. 不属于技术债

#### English
Feature backlog, deferred/cut features: if doing later does not cost more than now, it is not TD.

#### 中文
功能积压、延期/砍掉的功能：若以后做的成本不高于现在，则不算技术债。

#### 通俗解释

不是所有"以后再做"的都是技术债。如果以后做的成本和现在一样，那只是功能延期，不是债。比如"这个功能下个版本再做"，如果下个版本做的成本一样，就不是技术债。技术债的特点是：**现在偷懒，以后要付出更多代价**。就像借钱要还利息，如果以后做不需要额外成本，就不算债。

---

## 4. Practice Reality / 4. 实践现状

#### English
- Surveys: TD often implicit/ad-hoc in shadow backlogs; rarely formal in sprint backlog.
- Reducing TD effectively: refactor the software.
- Large orgs spend ~25% (sometimes 40–50%) effort on TD management.
- Companies may trade long-term velocity/quality for short-term features, risking competitiveness.

#### 中文
- 调查显示：TD 常以隐式/临时方式存在于“影子”待办中，很少正式记录在冲刺待办。
- 有效降低 TD：重构软件。
- 大型组织在 TD 管理上投入约 25%（甚至 40–50%）精力。
- 企业可能以长期速度/质量换短期功能，存在竞争风险。

---

## 5. Dimensions of TD / 5. 技术债维度

#### English
Common classification:
1) **Type**: design, code, test, documentation, build/env, requirements, architecture, etc. (TD is not just coding; refactoring code smells cannot solve all)
2) **Intentionality**: 
   - **Intentional**: Deliberate shortcuts (e.g., "minimal testing to meet deadline", "iOS only now, Android later", "skip unit tests, add later")
   - **Unintentional**: Low-quality work (junior programmer, newcomer not following standards, poor design strategy, failed refactoring, honest/careless mistakes)
3) **Time horizon**: 
   - **Short-term**: Reactive, quick actions (skip integration tests, hack it in, violate standards for urgent patch)
   - **Long-term**: Proactive, strategic (single platform for 3 years, COBOL core for 40 years)
4) **Degree of focus**: 
   - **Focused short-term**: Individually identifiable shortcuts (partial class implementation)
   - **Unfocused short-term**: Numerous tiny shortcuts (frequent coding standard violations, loose documentation)
   - **Focused long-term**: Strategic decisions (single platform support)
   - **Unfocused long-term**: Using most productive languages/frameworks per feature

**Patterns that Increase TD**:
1. **Schedule Pressure**: Unreasonable commitments lead to corner-cutting (creeping scope, team changes, late integration) → Use flexible planning
2. **Code Duplication**: Lack of experience, copy-paste, conforming to poor design, delivery pressure → Use static analysis, pair programming, track/repay debts
3. **Get it "right" the first time**: Over-engineering, over-generalization → Costs keep growing

#### 中文
常见分类：
1) **类型**：设计、代码、测试、文档、构建/环境、需求、架构等（TD 不仅是编码；重构代码异味无法解决全部）
2) **意图性**：
   - **有意**：故意的捷径（如"最少测试以达期限"、"先 iOS 后 Android"、"跳过单元测试，后续补"）
   - **无意**：低质量工作（初级程序员、新人不遵循标准、设计策略差、重构失败、诚实/粗心错误）
3) **时间跨度**：
   - **短期**：被动、快速行动（跳过集成测试、临时方案、为紧急补丁违反标准）
   - **长期**：主动、战略性（单平台 3 年，COBOL 核心 40 年）
4) **关注度**：
   - **聚焦短期**：可单独识别的捷径（部分类实现）
   - **分散短期**：众多小捷径（频繁违反编码标准、文档松散）
   - **聚焦长期**：战略决策（单平台支持）
   - **分散长期**：每个功能使用最高效的语言/框架

**增加 TD 的模式**：
1. **进度压力**：不合理承诺导致走捷径（范围蔓延、团队变化、集成延迟）→ 使用灵活规划
2. **代码重复**：经验不足、复制粘贴、遵循差设计、交付压力 → 使用静态分析、结对编程、跟踪/偿还债务
3. **一次做对**：过度工程、过度泛化 → 成本持续增长

#### 通俗解释

技术债的四个维度就像给债务分类：

**类型**：欠了什么债？设计债、代码债、测试债、文档债等等。就像欠钱，可能欠银行、欠朋友、欠信用卡，类型不同。

**意图性**：是故意的还是无意的？**有意**就像"我知道这样不好，但为了赶时间先这样"，**无意**就像"我不知道这样不好，就写成了这样"。

**时间跨度**：短期还是长期？**短期**就像"这个版本先这样，下个版本改"，**长期**就像"这个架构用3年"。

**关注度**：是局部问题还是系统性问题？**聚焦**就像"这个类有问题"，**分散**就像"整个项目到处都有小问题"。

**增加技术债的模式**：
1. **进度压力**：就像考试时间不够，只能乱写，以后要重做。
2. **代码重复**：就像抄作业，抄多了就不知道哪是哪了。
3. **一次做对**：就像想一次做完美，结果想太多，反而做不出来或做过头了。

---

## 6. Management Basics / 6. 管理要点

#### English
- **Identify and track TD in backlog**: Discuss openly. Make TD items explicit ("glue code now, reconcile DB later"). All "good debt" can be tracked (at least by definition). Log as defects, include in product backlogs, monitor project velocity, monitor amount of rework.
- **Ways to Measure Debt**: Total debt in product backlog, maintenance budget (or fraction), measure debt in money not features (e.g., "50% of R&D budget is nonproductive maintenance work").
- **Visual Tracking**: Visualize TD on task boards (Kanban board) with different card colors/types (New features, Tech debt, Defects, Investigations, External Issues). Include limits, avatars, arrows (movement), blockers, waste, continuous improvements.
- **Repay Technical Debts**: Periodically reserve timeslot to deal with TD. Longer time for refactoring trades for smaller number of refactoring cycles, and vice versa. Prioritize refactoring tasks to address critical areas first. Involve product owners and stakeholders.
- **Discuss Technical Debts**: Educate technical staff about business decision-making; educate business staff about technical decision-making. Raises awareness/transparency, allows TDs to be managed more explicitly and visually.
- **Strategies in Practice** (from survey on 26 companies):
  1. Do nothing - "if it ain't broke, don't fix it" - debt might never become visible to customer
  2. Use risk management approach - allocate 5-10% of each release cycle to addressing TD
  3. Manage expectations - make customers/nontechnical stakeholders equal partners, facilitate open dialogue
  4. Conduct audits - make TD visible and explicit, track using backlog/task board
- **Effective Practices** (from survey on 226 participants from 15 large organizations): Backlogs (most used: Jira, Hansoft, Excel), static analyzers and lint programs - increase tracking level with least overhead, seem to be best practices. Comments in code help awareness but not considered tracking (used by 1%). Documentation increases awareness but highest overhead (Excel/Word) - not recommendable. Bug system and test coverage - not best way.

#### 中文
- **识别和跟踪**：在待办中识别和跟踪 TD，公开讨论。将 TD 条目显式化（如"先用胶水代码，后续合并数据库"）。所有"好债"都可以跟踪（至少按定义）。记录为缺陷，包含在产品待办中，监控项目速度，监控返工量。
- **衡量债务的方法**：产品待办中的总债务、维护预算（或比例）、用金钱而非功能衡量债务（如"50% 的研发预算是非生产性维护工作"）。
- **可视化跟踪**：在任务板（看板）上可视化 TD，使用不同的卡片颜色/类型（新功能、技术债、缺陷、调查、外部问题）。包括限制、头像、箭头（移动）、阻碍、浪费、持续改进。
- **偿还技术债**：定期预留时间段处理 TD。更长的重构时间换取更少的重构周期，反之亦然。优先处理关键区域的重构任务。让产品负责人和利益相关者参与。
- **讨论技术债**：教育技术人员了解业务决策；教育业务人员了解技术决策。提高意识/透明度，允许更明确和可视化地管理 TD。
- **实践策略**（来自对 26 家公司的调查）：
  1. 什么都不做 - "没坏就别修" - 债务可能永远不会对客户可见
  2. 使用风险管理方法 - 将每个发布周期的 5-10% 用于解决 TD
  3. 管理期望 - 让客户/非技术利益相关者成为平等伙伴，促进开放对话
  4. 进行审计 - 使 TD 可见和明确，使用待办/任务板跟踪
- **有效实践**（来自对 15 个大型组织的 226 名参与者的调查）：待办（最常用：Jira、Hansoft、Excel）、静态分析器和 lint 程序 - 以最低开销提高跟踪水平，似乎是最佳实践。代码中的注释有助于意识但不被视为跟踪（1% 使用）。文档提高意识但开销最高（Excel/Word）- 不推荐。错误系统和测试覆盖率 - 不是最佳方式。

#### 通俗解释

技术债管理就像"管理债务"：**识别和跟踪**，把技术债明确列出来，不要藏在"影子"里。就像记账，欠了什么债要记下来。**可视化跟踪**，用看板（Kanban）把技术债可视化，用不同颜色的卡片表示不同类型的工作（新功能、技术债、缺陷等），一目了然。

**偿还技术债**，定期留时间还债，可以一次还多点（时间长但次数少），也可以经常还一点（时间短但次数多）。优先还关键的债。

**讨论技术债**，技术人员要懂业务（为什么有这些债），业务人员要懂技术（这些债的影响），大家要透明沟通。

**实践策略**：有的公司"不坏不修"（如果客户看不到问题就不管），有的公司"风险管理"（每个版本留5-10%时间还债），有的公司"管理期望"（让客户理解技术债），有的公司"审计跟踪"（把技术债显式化）。

**有效实践**：用待办工具（Jira等）和静态分析工具最有效，成本低效果好。代码注释有用但不算跟踪。文档成本太高。错误系统和测试覆盖率效果不好。

---

## Additional Detail / 补充要点

### Technical Debt Intentionality / 技术债意图性

#### English

**Intentional Debt**: Informed trade-offs (e.g., temporarily not supporting multiple platforms, temporarily missing tests).

**Unintentional Debt**: Caused by lack of experience or insufficient processes.

#### 中文

**有意债**：知情权衡（如暂不支持多平台、暂缺测试）。

**无意债**：经验/流程不足导致。

---

### Technical Debt Types / 技术债类型

#### English

**Examples**: Design debt, code debt, test debt, documentation debt, requirements debt, build/environment debt, architecture debt, etc.

#### 中文

**类型示例**：设计债、代码债、测试债、文档债、需求债、构建/环境债、架构债等。

#### 通俗解释

技术债类型就像"欠了什么债"：设计债（设计不好）、代码债（代码质量差）、测试债（测试不足）、文档债（文档不全）、需求债（需求不清）、构建/环境债（环境配置问题）、架构债（架构不合理）等。就像欠债，可能欠银行、欠朋友、欠信用卡，类型不同。

---

### Interest Manifestations / 利息表现

#### English

**Costs**: Missing tests → slower development/debugging; fragile architecture → changes affect everything; high support costs; long build/debug cycles.

#### 中文

**成本**：缺测试 → 开发/调试变慢；架构脆弱 → 改动牵一发动全身；支持成本高；构建/调试周期长。

---

### Debt Repayment Methods / 还债方式

#### English

**Strategies**: Refactoring, adding tests, adding documentation, improving architecture/environment. Requires time-boxing and priority management.

#### 中文

**策略**：重构、补测试、补文档、改进架构/环境。需时间盒与优先级管理。

---

### Trade-offs / 取舍

#### English

**Business Decisions**: Business may trade short-term delivery for long-term efficiency. Need to quantify interest and opportunity costs (speed, quality, risk).

#### 中文

**业务决策**：业务可能用短期交付换长期效率。需量化利息与机会成本（速度、质量、风险）。

---

### Technical Debt Tracking / 技术债记录

#### English

**Visibility**: TD should not only be in "shadow" backlog. Should be explicitly added to backlog and evaluated/scheduled in sprints.

#### 中文

**可见性**：TD 不应仅在"影子"待办。应显式入待办并在冲刺中评估/调度。

