# Week 4 Knowledge Summary - Requirements Engineering / Week 4 知识点总结 - 需求工程

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

#### 中文
迭代的四步：① 需求获取（理解问题），② 规格说明（描述问题），③ 验证（认同问题本质），④ 协商（确定边界）。验证用于消除歧义。

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

- 非功能需求别名：质量属性、系统特性/约束、concerns、goals、extra/quality requirements；跨行业/应用类型/具体场景层层细化
- 需求规约常见问题：噪声、沉默、过度规范、矛盾、模糊、前向引用、空想；自然语言高风险，需验证与评审
- RE 四步迭代：获取（访谈/观察/用例/用户故事）、规格（结构化/半结构化）、验证（评审/原型/试用）、协商（冲突解决/优先级）
- 概念建模：显式领域模型以澄清术语与边界，分析消歧，协商多方目标
- 分析员立场影响方法：功能主义（客观+秩序）、社会相对主义（主观+秩序）、激进结构主义（客观+冲突）、新人文主义（主观+冲突）
- 非功能若不可度量/验证，需设计可观测指标或用户评估方法（如性能 SLA、安全合规、可用性可用性测试）

---

## RE Artifacts & Validation / 需求工件与验证

#### English
- Elicitation techniques: interviews, observation, workshops, use cases/user stories, prototypes.
- Specification: structured/semistructured docs, models (domain model, use-case model, sequence/state/DFD).
- Validation/verification: reviews, walkthroughs, prototypes, acceptance tests; detect noise, silence, ambiguity, contradiction, wishful thinking.
- Negotiation: resolve conflicts across stakeholders; prioritize requirements.

#### 中文
- 获取：访谈、观察、研讨会、用例/用户故事、原型。
- 规格：结构化/半结构化文档，模型（领域模型、用例模型、时序/状态/数据流图）。
- 验证：评审、走查、原型、验收测试；发现噪声、沉默、模糊、矛盾、空想。
- 协商：解决多方冲突，做优先级排序。

