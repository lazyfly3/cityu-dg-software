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

---

## 3. What is NOT TD / 3. 不属于技术债

#### English
Feature backlog, deferred/cut features: if doing later does not cost more than now, it is not TD.

#### 中文
功能积压、延期/砍掉的功能：若以后做的成本不高于现在，则不算技术债。

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
1) **Type**: design, code, test, documentation, build/env, requirements, architecture, etc.
2) **Intentionality**: intentional vs unintentional.
3) **Time horizon**: short vs long term.
4) **Degree of focus** (how localized/systemic).

#### 中文
常见分类：
1) **类型**：设计、代码、测试、文档、构建/环境、需求、架构等。
2) **意图性**：有意/无意。
3) **时间跨度**：短期/长期。
4) **关注度**：局部/系统性。

---

## 6. Management Basics / 6. 管理要点

#### English
- Identify and track TD in backlog; discuss openly.
- Make TD items explicit (“glue code now, reconcile DB later”).
- Prioritize payback vs. features considering interest cost.
- Refactor to pay down; prevent new TD by better design, testing, tooling.

#### 中文
- 识别并在待办中跟踪 TD，公开讨论。
- 将 TD 条目显式化（如“先用胶水代码，后续合并数据库”）。
- 在利息成本下权衡还债与新功能优先级。
- 通过重构偿还；通过更好设计、测试、工具避免新增 TD。

---

## Additional Detail / 补充要点

- 意图性：有意债（知情权衡，如暂不支持多平台、暂缺测试）、无意债（经验/流程不足导致）
- 类型示例：设计债、代码债、测试债、文档债、需求债、构建/环境债、架构债等
- 利息表现：缺测试→开发/调试变慢；架构脆弱→改动牵一发动全身；支持成本高；构建/调试周期长
- 还债方式：重构、补测试、补文档、改进架构/环境；需时间盒与优先级管理
- 取舍：业务可能用短期交付换长期效率，需量化利息与机会成本（速度、质量、风险）
- 记录：TD 不应仅在“影子”待办，应显式入待办并在冲刺中评估/调度

