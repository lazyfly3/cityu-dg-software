# Week 4 Knowledge Summary - Requirements Engineering / Week 4 知识点总结 - 需求工程

## Table of Contents / 目录

- [1. What & Why / 1. 是什么与为何](#1-what--why--1-是什么与为何)
- [2. Functional vs. Non-Functional / 2. 功能性 vs 非功能性](#2-functional-vs-non-functional--2-功能性-vs-非功能性)
- [3. Common RE Pitfalls / 3. 常见问题](#3-common-re-pitfalls--3-常见问题)
- [4. RE Main Steps / 4. RE 主要步骤](#4-re-main-steps--4-re-主要步骤)
- [5. Conceptual Modeling / 5. 概念建模](#5-conceptual-modeling--5-概念建模)
- [6. Analyst Positions / 6. 分析员立场](#6-analyst-positions--6-分析员立场)
- [7. Good Practices / 7. 良好实践](#7-good-practices--7-良好实践)
- [Additional Detail / 补充要点](#additional-detail--补充要点)
- [RE Artifacts & Validation / 需求工件与验证](#re-artifacts--validation--需求工件与验证)

---

## 1. What & Why / 1. 是什么与为何

#### English
Requirements Engineering (RE) is the process to find out and structure functional and non-functional requirements of the software to be built. Both parts are essential: functional describes what the system does; non-functional (quality attributes/constraints) describe how well it should do it.

#### 中文
需求工程（RE）是发现并组织待构建软件的功能性与非功能性需求的过程。两部分都重要：功能性描述系统做什么；非功能性（质量属性/约束）描述系统做得有多好。

---

## 2. Functional vs. Non-Functional / 2. 功能性 vs 非功能性

#### English
- Functional: verifiable behaviors (e.g., “buy PS5 on website”).
- Non-functional: performance, scalability, security, reliability, usability, etc. Many requirements in practice are non-functional, vary by domain, and can be vague; if not measurable/verified, rely on user evaluation.
- Handle multi-level concerns: industry-level, application-type level, and application-specific, all including non-functional needs.

#### 中文
- 功能性：可验证的行为（如“在网站购买 PS5”）。
- 非功能性：性能、可扩展性、安全性、可靠性、可用性等。实践中大量需求是非功能性的，随领域变化且可能模糊；若不可度量/验证，只能依赖用户评价。
- 需处理多层关注点：行业层、应用类型层、具体应用层，均包含非功能需求。

---

## 3. Common RE Pitfalls / 3. 常见问题

#### English
Noise, silence (missing features), over-specification (solution not problem), contradictions, ambiguity, forward references, wishful thinking. Natural language specs are risky; validate to avoid misunderstanding.

#### 中文
噪声、沉默（缺失特性）、过度规范（谈方案不谈问题）、矛盾、模糊、前向引用、空想。自然语言规格有风险；需验证以避免误解。

---

## 4. RE Main Steps / 4. RE 主要步骤

#### English
Iterative four steps: (1) Elicitation (understand problem), (2) Specification (describe), (3) Validation (agree on nature), (4) Negotiation (agree on boundaries). Validation is key to resolve ambiguity.

**Elicitation Process (5 iterative activities)**:
1. Understanding the application domain (political, organizational, social aspects, constraints)
2. Identifying sources (people: stakeholders, users, experts; things: existing systems, documentation)
3. Analyzing stakeholders (internal/external, customers, key representatives, product champions)
4. Selecting techniques, approaches, and tools
5. Eliciting requirements (establish scope, investigate needs, determine processes, examine support for objectives)

**Common Elicitation Techniques**:
- **Interview**: Three types - unstructured (exploratory, risky), structured (predetermined questions, Volere template), semi-structured (hybrid). Open-ended then close-ended questions.
- **Brainstorming**: Group-based iterative idea gathering (Osborn's method)
- **Task Analysis**: Top-down decomposition of high-level tasks into subtasks and detailed sequences; determines knowledge needed
- **Scenario-Based Analysis**: User-oriented perspective; observe real scenarios, ask about uncovered cases
- **Form Analysis**: Identify items (certain/varied) and timing (past/while filling/future) of information availability
- **Focus Group**: Small demographically diverse group; guided/open discussions; analyst records vital points
- **Facilitated Workshop**: Cross-functional team; study from all perspectives; make decisions
- **Mind Mapping, Group Storytelling, User Stories**: Agile techniques (co-construct, share, complete, roleplay, analyze stories)
- **Other techniques**: Delphi, ethnography, questionnaire, synthesis from existing system, domain analysis, BPR, prototyping

**Expert Selection Guidance**: Interviewing (new projects/domains), Collaborative sessions (effective), Data gathering (must do, don't over-analyze), Agile techniques (popular), Questionnaires (not effective)

#### 中文
迭代的四步：① 需求获取（理解问题），② 规格说明（描述问题），③ 验证（认同问题本质），④ 协商（确定边界）。验证用于消除歧义。

**需求获取流程（5 个迭代活动）**：
1. 理解应用领域（政治、组织、社会方面，约束）
2. 识别来源（人：利益相关者、用户、专家；物：现有系统、文档）
3. 分析利益相关者（内部/外部、客户、关键代表、产品拥护者）
4. 选择技术、方法和工具
5. 获取需求（确定范围、调查需求、确定流程、检查对目标的支持）

**常见获取技术**：
- **访谈**：三种类型 - 非结构化（探索性，有风险）、结构化（预定问题，Volere 模板）、半结构化（混合）。先开放后封闭式问题。
- **头脑风暴**：基于团队的迭代想法收集（Osborn 方法）
- **任务分析**：自顶向下将高级任务分解为子任务和详细序列；确定所需知识
- **场景分析**：面向用户的视角；观察真实场景，询问未覆盖的情况
- **表单分析**：识别项目（确定/变化）和信息可用性的时间（过去/填写时/未来）
- **焦点小组**：小型人口多样化小组；引导/开放讨论；分析员记录要点
- **引导式研讨会**：跨职能团队；从所有角度研究；做出决策
- **思维导图、群体故事、用户故事**：敏捷技术（共同构建、分享、完成、角色扮演、分析故事）
- **其他技术**：德尔菲法、民族志、问卷、从现有系统综合、领域分析、BPR、原型

**专家选择指导**：访谈（新项目/领域）、协作会议（有效）、数据收集（必须做，不要过度分析）、敏捷技术（流行）、问卷（无效）

---

## 5. Conceptual Modeling / 5. 概念建模

#### English
Make scope explicit via a domain model to reduce surprises. Analyst must analyze (find/clear ambiguity) and negotiate (resolve stakeholder goal conflicts).

#### 中文
用领域模型显式化范围以减少后期意外。分析员需分析（发现/澄清歧义）并协商（解决利益冲突）。

---

## 6. Analyst Positions / 6. 分析员立场

#### English
Four positions combining objective/subjective and order/conflict:
1) Functional (objective+order): analyst as expert; management resolves conflicts.
2) Social-relativism (subjective+order): analyst as change agent; seek consensus.
3) Radical-structuralism (objective+conflict): choose side in class struggle.
4) Neohumanism (subjective+conflict): social therapist, remove barriers.

#### 中文
四种立场（客观/主观 × 秩序/冲突）：
1) 功能主义：分析员为专家；冲突由管理解决。
2) 社会相对主义：分析员为变革者；追求共识。
3) 激进结构主义：在阶级冲突中选边。
4) 新人文主义：社会治疗者，消除壁垒。

---

## 7. Good Practices / 7. 良好实践

#### English
- Validate requirements early; avoid ambiguity.
- Capture both functional and non-functional; ensure measurability/verification.
- Use domain models and agreed terminology.
- Document and negotiate conflicting goals across stakeholders.

#### 中文
- 尽早验证需求，避免歧义。
- 同时捕获功能与非功能，确保可度量/可验证。
- 使用领域模型与约定术语。
- 记录并协商利益相关者的冲突目标。

---

## Additional Detail / 补充要点

### Non-Functional Requirements Terminology / 非功能需求术语

#### English

**Alternative Names**: Quality attributes, system characteristics/constraints, concerns, goals, extra/quality requirements. These are refined across layers: industry → application type → specific scenarios.

#### 中文

**别名**：质量属性、系统特性/约束、concerns、goals、extra/quality requirements。跨行业/应用类型/具体场景层层细化。

---

### Common Problems in Requirement Specification / 需求规约常见问题

#### English

**Issues**: Noise, silence, over-specification, contradiction, ambiguity, forward references, wishful thinking. Natural language is high-risk and requires validation and review.

#### 中文

**问题**：噪声、沉默、过度规范、矛盾、模糊、前向引用、空想。自然语言高风险，需验证与评审。

---

### RE Four-Step Iteration / RE 四步迭代

#### English

**Iterative Process**: (1) Elicitation (interviews/observation/use cases/user stories), (2) Specification (structured/semi-structured), (3) Validation (review/prototype/trial), (4) Negotiation (conflict resolution/prioritization).

#### 中文

**迭代过程**：① 获取（访谈/观察/用例/用户故事），② 规格（结构化/半结构化），③ 验证（评审/原型/试用），④ 协商（冲突解决/优先级）。

---

### Conceptual Modeling / 概念建模

#### English

**Purpose**: Explicit domain models clarify terminology and boundaries, analyze and resolve ambiguity, negotiate multiple stakeholder goals.

#### 中文

**目的**：显式领域模型以澄清术语与边界，分析消歧，协商多方目标。

---

### Analyst Positions and Methods / 分析员立场与方法

#### English

**Four Positions**:
- **Functionalism**: Objective + order
- **Social Relativism**: Subjective + order
- **Radical Structuralism**: Objective + conflict
- **Neo-Humanism**: Subjective + conflict

Analyst position influences the choice of requirements engineering methods.

#### 中文

**四种立场**：
- **功能主义**：客观 + 秩序
- **社会相对主义**：主观 + 秩序
- **激进结构主义**：客观 + 冲突
- **新人文主义**：主观 + 冲突

分析员立场影响需求工程方法的选择。

---

### Non-Functional Requirements Measurement / 非功能需求度量

#### English

**If Non-Measurable/Non-Verifiable**: Design observable indicators or user evaluation methods (e.g., performance SLA, security compliance, usability testing).

#### 中文

**若不可度量/验证**：需设计可观测指标或用户评估方法（如性能 SLA、安全合规、可用性测试）。

---

## RE Artifacts & Validation / 需求工件与验证

#### English
- **Elicitation techniques**: interviews, observation, workshops, use cases/user stories, prototypes.
- **Specification**: While collecting requirements, we should structure them:
  - Hierarchical structure: Higher-level requirements decomposed into lower-level requirements
  - Link requirements to specific stakeholders (e.g., management and end users each have their own set)
  - Structured/semistructured docs, models (domain model, use-case model, sequence/state/DFD)
- **Validation/verification**: 
  - Inspection of requirement specification w.r.t. correctness, completeness, consistency, accuracy, readability, and testability
  - Direct vs indirect links: Same requirements from multiple sources help reason validity. Lesson 1: don't rely too much on indirect links (intermediaries, surrogate users). Lesson 2: The more links, the better (but up to a point)
  - Aids at different stages: Early structured walkthroughs with customers, prototypes of initial versions, test plan or unit testing in Agile development, user acceptance testing when delivery
  - Detect noise, silence, ambiguity, contradiction, wishful thinking
- **Negotiation**: 
  - Apart from negotiating during elicitation, also negotiate when prioritizing requirements
  - Label as "high", "medium", or "low" priority
  - Use MoSCoW Method: Must haves (mandatory), Should haves (important but not mandatory), Could haves (if time allows), Won't haves (not today, may be tomorrow)
  - Resolve conflicts across stakeholders

#### 中文
- **获取技术**：访谈、观察、研讨会、用例/用户故事、原型。
- **规格说明**：在收集需求时，应结构化需求：
  - 层次结构：高级需求分解为低级需求
  - 将需求链接到特定利益相关者（如管理和最终用户各有自己的集合）
  - 结构化/半结构化文档，模型（领域模型、用例模型、时序/状态/数据流图）
- **验证/确认**：
  - 检查需求规格的正确性、完整性、一致性、准确性、可读性和可测试性
  - 直接 vs 间接链接：来自多个来源的相同需求有助于推理有效性。教训 1：不要过度依赖间接链接（中介、代理用户）。教训 2：链接越多越好（但有限度）
  - 不同阶段的辅助：与客户的早期结构化走查、初始版本的原型、敏捷开发中的测试计划或单元测试、交付时的用户验收测试
  - 发现噪声、沉默、模糊、矛盾、空想
- **协商**：
  - 除了在获取期间协商，还在确定优先级时协商
  - 标记为"高"、"中"或"低"优先级
  - 使用 MoSCoW 方法：必须有（强制）、应该有（重要但不强制）、可以有（如果时间允许）、不会有（今天不，可能明天）
  - 解决利益相关者之间的冲突

