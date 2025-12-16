## Topic 1: Software Process & Requirements（软件过程与需求）

### 1. Software Process (Agile/Scrum) / 软件过程（敏捷 / Scrum）

- **通俗理解**：这部分就是讲“敏捷团队怎么组织人和活儿”，包括谁负责什么、每天怎么开会、怎么估算工作量、怎么看进度。

- **Scrum Roles, Events, Artifacts / Scrum 的角色、事件与工件**  
  - **EN**: Scrum defines roles (Product Owner, Scrum Master, Development Team), events (Sprint, Sprint Planning, Daily Scrum, Sprint Review, Sprint Retrospective), and artifacts (Product Backlog, Sprint Backlog, Increment).  
  - **中**：Scrum 里有三类**角色**、一组固定的**事件**，以及**工件**。  
  - **详细说明（PDF）**：
    
    **角色（Roles）**：
    - **Product Owner（产品负责人）**：负责维护**优先级明确的 Product Backlog**（包含功能、bug、技术工作、知识获取等），在 Sprint Planning 中向团队描述高优先级项，在 Sprint Review 中与用户一起验证用户故事是否已交付，并演示完成的增量。
    - **Scrum Master（Scrum 主管）**：是团队的**教练**，帮助团队达到最佳表现；**不提供日常指导**，**不分配任务给个人**；主要职责是**移除障碍、维护 Scrum 流程**；在很多项目中，这个角色由项目经理担任。
    - **Development Team（开发团队）**：作为**整体**自主工作，通过每日站会从 Sprint Backlog 中**自主选择任务**，负责在 Sprint 内交付用户故事和增量；任务在 Task Board 上可视化（to-do → in-progress → to verify → Done）。
    
    **事件（Events）**：
    - **Sprint Planning（Sprint 计划会）**：Product Owner 带着优先级排序的 Product Backlog 参会，向团队描述**高优先级项**；团队根据历史速度（story points）决定**能在即将到来的 Sprint 中完成哪些项**；团队将选中的 Product Backlog 项**展开成一个或多个 Sprint Backlog 任务**，并放到 Task Board 的 "to-do" 列。
    - **Daily Scrum（每日站会）**：**15 分钟站立会议**，每人用约 3 分钟报告：（1）昨天做了什么；（2）今天准备做什么；（3）遇到什么阻碍（其他队友可帮助解决）。目的是快速同步进度、尽早暴露问题。
    - **Sprint Review（Sprint 评审会）**：在 Sprint 结束时举行，**Product Owner 和用户验证用户故事是否已交付**；如果通过，将任务移到 Task Board 的 "Done" 列；团队**演示已完成的增量**给干系人看。
    - **Sprint Retrospective（Sprint 回顾会）**：在 Sprint Review 之后举行，团队**反思什么做得好、什么需要改进**，以减少阻碍、提升生产力；可以讨论流程、工具、沟通等方面的问题。
    - **Sprint（迭代）**：一个固定时长的周期（通常 1-4 周），团队在这个周期内完成一组选定的用户故事；每个 Sprint 结束时必须产出**可交付的增量**。
    
    **工件（Artifacts）**：
    - **Product Backlog（产品待办列表）**：包含**最终产品所需的功能、待修复的 bug、技术工作**（如搭建和维护开发环境、用户站点）以及**知识获取**（如学习新框架）；需要**持续维护优先级**；是动态的，客户可以随时改变想法。
    - **Sprint Backlog（Sprint 待办列表）**：从 Product Backlog 中选出的**高优先级子集**，大小由团队历史速度（story points）决定；包含**具体任务**，**每天更新一次**；任务在 Task Board 上可视化流转。
    - **Increment（增量）**：每个 Sprint 结束时产出的**可交付、可演示的功能**，必须通过 Product Owner 和用户的验收；多个 Sprint 的增量累积成最终产品。
    - **Task Board（任务看板）**：可视化展示每个任务的状态，通常包含列：Stories（用户故事）、To-do（待办）、In-progress（进行中）、To verify（待验证）、Done（完成）；团队成员可以随时更新任务状态；可以挂在墙上或数字化（如 Jira、Trello）。

- **Daily Scrum purpose / 每日站会的目的**  
  - **EN**: A 15‑minute stand‑up meeting where each member briefly states what was done yesterday, what will be done today, and what blockers exist, to synchronize the team and surface problems early.  
  - **中**：每日站会是约 15 分钟的**站立式短会**，每个人回答“昨天做了什么、今天准备做什么、遇到什么阻碍”，让团队快速同步、尽早发现风险。

- **User Stories, Story Points & Estimation / 用户故事与故事点估算**  
  - **EN**: Requirements are captured as user stories ("As a \<role>, I want \<action>, so that \<goal>"), and effort is estimated in relative story points using scales like Fibonacci or T‑shirt sizes.  
  - **中**：需求通常写成用户故事（"作为\<角色>，我想要\<行动>，以便\<目标>"），工作量用**相对的故事点**估算（如斐波那契数列或 T 恤尺码），反映复杂度和不确定性，而不是精确工时。  
  - **详细说明（PDF）**：
    - **用户故事格式**：`As a <role>, I want <action>, so that <goal>`。其中 `<role>` 从需求工程中识别（如 CityU Student），`<action>` 应该是**可执行的、具体的**（如 "download a testimonial by submitting a request in AIMS"），`<goal>` 应该是**可度量、可量化的**（如 "apply for student visa extension through HKSAR Immigration Department"）。用户故事通常还包含用例、图表草图、用户笔记、数据、现有系统报告等**补充信息**，以澄清上下文和范围。
    - **故事点估算方法**：采用**相对估算**而非绝对估算（因为直接判断"A 有多长"很难，但判断"A 比 B 长"更容易）。常用标度有：**斐波那契数列**（1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144...）或 **T 恤尺码**（XXS, XS, S, M, L, XL, XXL）。团队先**选一个或多个用户故事作为锚点**，全体同意其故事点值（考虑不确定性和实现复杂度），然后其他故事与锚点比较，得出相对大小。例如：如果 B 被定为 3 点，团队认为 A 比 B 大但不太多，A 可定为 5 点。
    - **用户故事拆分原则**：如果一个用户故事太大，**无法在一个 Sprint 内完成**，应该**拆分成多个更小的用户故事**，确保每个 Sprint 都能交付完整功能。

- **Project Velocity / 项目速度**  
  - **EN**: Velocity is the number of story points completed in a cycle; using the min/avg/max velocity over past sprints, teams forecast how many cycles are needed to finish remaining points.  
  - **中**：项目速度是每个迭代实际完成的故事点总数，可以用历史迭代的**最小/平均/最大速度**来估算"还剩多少故事点、大概还要多少个迭代"。  
  - **详细说明（PDF）**：
    - **速度的计算**：一个用户故事只有在**通过 Sprint Review（由用户和 Product Owner 验收）**后才算"已完成"，其故事点才计入该 Sprint 的速度。例如：Sprint 1-5 的速度分别是 10, 12, 11, 15, 12，则最小速度 = 10，最大速度 = 15，平均速度 = 12。
    - **速度的用途**：如果剩余故事点总数是 100，平均速度是 12，则预计还需要 `ceiling(100/12) = 9` 个 Sprint 才能完成。速度的**斜率**（连续多个 Sprint 的速度趋势）反映团队的生产力变化。
    - **速度异常的处理**：如果速度持续下降或波动很大，项目经理需要在每个 Sprint 后采取行动，例如：**裁剪一些用户故事**，或要求团队每个 Sprint 交付更多故事点。

- **Burndown charts / 燃尽图**  
  - **EN**: A burndown chart plots remaining story points against time in the sprint, showing whether progress matches the ideal burndown line and revealing scope creep or under‑estimation.  
  - **中**：燃尽图把**剩余故事点随时间变化**画出来，对照理想直线可以看出进度是否落后、是否中途增加了需求或原来估算过低。  
  - **详细说明（PDF）**：
    - **Sprint Burndown Chart（Sprint 燃尽图）**：横轴是 Sprint 内的天数，纵轴是剩余故事点；理想情况下应该是一条从左上到右下的直线；如果实际曲线**高于理想线**，说明进度落后；如果曲线**上升**，说明中途增加了新需求或原估算过低。
    - **Release Burndown Chart（发布燃ndown图）**：横轴是 Sprint 编号，纵轴是项目剩余故事点总数；**每个 Sprint 结束后更新一次**；团队可以选择任何单位来度量进度（故事点、小时数等）。例如：初始 160 点，Sprint 1 后剩 150，Sprint 2 后剩 138...如果曲线**不下降**或**上升**，说明项目无法按计划推进，或中途增加了新用户故事，或原估算被低估。

### 2. Requirements Engineering / 需求工程

- **通俗理解**：这部分可以理解成“在写代码前，把客户到底想要什么问清楚、写清楚、讲清楚、排好优先级”的一整套方法。

- **RE Definition & Outcome / RE 定义与产物**  
  - **EN**: Requirements Engineering (RE) is the process of finding and structuring functional and non‑functional requirements; its main outcome is a requirements specification that is both a contract with the customer and a starting point for design.  
  - **中**：需求工程是**发现并组织功能与非功能需求**的过程，结果是需求规格说明书，它既是与客户的“合同”，也是后续设计工作的起点。

- **4 Main Steps / 四个主要步骤**  
  - **EN**:  
    1) Elicitation – understand the problem and gather requirements;  
    2) Specification – describe and structure requirements;  
    3) Validation – agree on the nature/correctness of the problem;  
    4) Negotiation – agree on priorities and boundaries.  
  - **中**：  
    1）**获取（Elicitation）**：理解业务域和问题，向各类干系人收集需求；  
    2）**规约（Specification）**：用结构化文本、模型等清晰表达并分层组织需求；  
    3）**验证（Validation）**：检查需求是否正确、完整、一致、无二义且可测试；  
    4）**协商（Negotiation）**：在冲突和资源受限的情况下，就范围与优先级达成共识。

- **Elicitation Activities & Techniques / 获取活动与技术概览**  
  - **EN**: Elicitation involves understanding the domain, identifying requirement sources, analyzing stakeholders, selecting techniques, and then actually eliciting via interviews, brainstorming, task/scenario analysis, ethnography, form analysis, focus groups, workshops, questionnaires, domain analysis, BPR, prototyping, mind‑mapping, group storytelling, user stories, etc.  
  - **中**：获取需求要先**理解业务域、识别需求来源、分析干系人、选择技术**，然后用多种方法实际收集：如访谈、头脑风暴、任务/场景分析、田野调查、表单分析、焦点小组、工作坊、问卷、从现有系统综合、领域分析、业务流程重组、原型、思维导图、群体讲故事、用户故事等。
  - **补充（PDF）**：课件中特别展开了 **访谈的三种形式（非结构化、结构化、半结构化）**、任务分析的“自顶向下分解任务—子任务—动作序列”、场景分析通过“先观察真实场景再补问未覆盖情况”、以及表单分析要区分“信息产生时间点”和“哪些字段恒定、哪些有变化”，这些都可以直接写进需求文档或用例里。

- **Common RE Mistakes / 需求规格常见错误**  
  - **EN**: Typical problems include noise (irrelevant info), silence (missing features), over‑specification (describing solutions instead of problems), contradictions, ambiguity, forward references, and wishful thinking.  
  - **中**：典型错误有：**噪声**（无关信息）、**沉默**（重要点没写）、**过度规定**（写成解决方案而不是问题）、**自相矛盾**、**歧义**、**前向引用**（长文档里东西写在后面）和**一厢情愿**（技术上实现不了却当真写进需求）。

- **Conceptual Modeling & Analyst Positions / 概念建模与分析者立场**  
  - **EN**: Conceptual models (domain models) make assumptions explicit, reduce ambiguity, and support negotiation among stakeholders with different goals; analysts can take different positions (functional, social‑relativist, radical‑structuralist, neohumanist) depending on how they view truth and conflict.  
  - **中**：通过领域模型把概念、关系画出来，可以**显式化假设、减少歧义、支撑不同利益方协商**；分析者可以站在“功能主义”“社会相对主义”“激进结构主义”“新人文主义”等不同立场看待需求与冲突。

- **NFRs: Quality Attributes vs. Constraints / 非功能需求：质量属性 vs 约束**  
  - **EN**: Non‑functional requirements include quality attributes (performance, security, usability, availability, etc.) and constraints (laws, standards, platform limits); many domains have their own typical attribute sets.  
  - **中**：非功能需求既包括**质量属性**（性能、安全性、可用性、可维护性、可测试性等），也包括**约束条件**（法规、行业标准、平台/硬件限制），不同领域会有各自典型的一组质量关注点。  
  - **约束条件示例**：**可用性要求（Availability）**、**时间/预算（Time/Budget）**等。

- **Measurable & Testable NFRs / 可度量与可测试**  
  - **EN**: Vague qualities (“quickly”) should be refined into measurable forms (“20 selected cryptocurrencies within 1 second”), otherwise they cannot be designed for or validated.  
  - **中**：模糊描述（比如“很快”）要细化成**可量化指标**（例如“用户选的 20 个币价在 1 秒内显示完”），否则架构与实现都无法针对性设计，更无法验证。

- **Validation & Negotiation (MoSCoW) / 验证与优先级协商**  
  - **EN**: Validation uses multiple sources and aids (walkthroughs, prototypes, test plans, user acceptance tests); negotiation often prioritizes with schemes like MoSCoW (Must, Should, Could, Won’t).  
  - **中**：验证可以结合**多源交叉验证、早期走查、原型、单元测试/验收测试**等；协商优先级时常用 **MoSCoW** 法——“必须有、应该有、可以有、这次不要”，指导在时间/预算约束下先做哪些需求。
  - **补充（PDF）**：讲义中把验证要看的点列成清单：**正确性、完整性、一致性、准确性、可读性、可测试性**，并强调“直接链路”比“间接链路”（例如只通过中间经理转述用户意见）更可靠，优先考虑多源直接证据。

---

## Topic 2: Architecture & Technical Debt（架构与技术债）

### 1. Software Architecture / 软件架构

- **通俗理解**：这里是在说“系统大框架怎么搭”，比如是一整坨还是拆成很多服务、怎么保证高可用、高性能、好扩展。

- **Role of Architecture / 架构在生命周期中的作用**  
  - **EN**: Architecture is conceptual and focuses on fundamental design decisions about elements and their relations; it is the earliest set of design decisions, a vehicle for stakeholder communication, and a key enabler or inhibitor of quality attributes.  
  - **中**：架构是**概念层的、高层的设计决策集合**，决定有哪些组件/连接以及它们如何协作，是最早确定的一批设计决策，也是与干系人沟通的主要载体，会直接**成就或限制**各类质量属性。

- **Styles: Monolithic vs. Microservices / 风格：单体 vs 微服务**  
  - **EN**: Monolithic systems put most features into a single deployable; microservices decompose functionality into many small, independently deployable services and often align with organizational boundaries.  
  - **中**：单体架构把主要功能打包在一个整体应用里；微服务把系统拆成多个可独立部署的小服务，常按业务边界或团队边界划分。

- **Pros/Cons: Availability & Complexity / 优缺点：可用性与复杂度**  
  - **EN**: Monoliths are simpler to build, test, and deploy but harder to scale and evolve; microservices can improve availability, scalability and cross‑platform support (e.g., FPS vs traditional payment systems example) but add distributed‑system complexity in communication, consistency, deployment and monitoring.  
  - **中**：单体在**开发、测试、部署**上更简单，却难以水平扩展和独立演进；微服务有利于高可用、易扩展和多平台接入（如 FPS 对比传统支付系统），代价是引入**分布式通信、一致性、部署运维、监控追踪**等复杂度。

- **Architectural Drivers & Quality Attributes / 架构驱动因素与质量属性**  
  - **EN**: Architectural drivers are design requirements (mostly quality attributes like performance, availability, security, modifiability, scalability, usability, etc.) that heavily influence early design; quality attributes must be measurable/testable and are often observable (performance, availability) or non‑observable (modifiability, portability, testability).  
  - **中**：**架构驱动因素**是会显著影响早期设计的需求，多数是质量属性，如性能、可用性、安全性、可修改性、可扩展性、易用性等；这些属性必须**可量化、可测试**，部分在运行期可直接观察（性能、可用性），部分则偏内部（可修改性、可移植性、可测试性）。

- **Quality Trade‑offs / 质量属性冲突**  
  - **EN**: Improving one quality often hurts others (e.g., privacy vs usability, reliability vs performance); architects must evaluate decompositions and tactics for their impact on multiple attributes.  
  - **中**：很多质量属性存在**此长彼短**：提高隐私可能牺牲易用性，提高可靠性可能降低性能，加快上市时间可能降低稳定性，因此架构拆分和策略选择时要评估对多种属性的综合影响。

- **Tactics for High Availability & Other Qualities / 提高可用性等的策略**  
  - **EN**: Architectural tactics include separating UI from core logic (MVC/three‑tier), using active redundancy, replication, load‑balancing, authentication/authorization for security, and designing testable modules for correctness.  
  - **中**：常见策略有：用 **MVC/三层架构**把 UI 与核心逻辑分离、通过**主动冗余/多副本/负载均衡**提升可用性，用认证/授权等手段提升安全，设计**易测试的模块**来保证正确性。

- **Design Patterns: Redundancy / 设计模式：冗余**  
  - **EN**: Redundancy is a design pattern that improves system availability and fault tolerance by maintaining duplicate components or resources. Active redundancy keeps multiple components running simultaneously (all processing requests), while passive redundancy keeps backup components in standby mode (activated only when primary fails). Redundancy helps systems continue operating even when individual components fail.  
  - **中**：冗余是一种设计模式，通过维护重复的组件或资源来提升系统可用性和容错能力。**主动冗余（Active Redundancy）**让多个组件同时运行（都处理请求），而**被动冗余（Passive Redundancy）**让备用组件处于待机状态（仅在主组件故障时激活）。冗余使系统在单个组件故障时仍能继续运行。

- **Attribute‑Driven Design (ADD) & Tactics / 属性驱动设计**  
  - **EN**: ADD iteratively decomposes modules by choosing architectural drivers, selecting patterns/tactics/styles that satisfy them, and assigning responsibilities; examples include addressing usability via separated UI, security via authentication in presentation tier, and availability via redundancy in data tier.  
  - **中**：属性驱动设计按迭代方式：选定**架构驱动因素 → 选模式/策略/风格 → 分解模块并分配职责**，例如顶层先为“易用性”拆出表示层，再在表示层为“安全性”加认证，在数据层为“可用性”加冗余。

- **Integration Patterns (Messaging) / 企业集成模式**  
  - **EN**: Enterprise Integration Patterns like Content‑Based Router, Splitter, Aggregator, and Scatter‑Gather specify how messages flow between components to achieve scalability, flexibility and reliability.  
  - **中**：在系统集成中，可用**内容路由器、拆分器、聚合器、广播‑聚合对**等企业集成模式来组织消息流动，从而在组件连线层面提升系统的可扩展性与可靠性。
  - **补充（PDF）**：课件中的订单处理示例展示了：**Content‑Based Router** 根据消息内容把订单路由到不同库存服务，**Splitter+Router** 将包含多个订单项的消息拆分后分别路由，**Aggregator** 再把各子结果合并成一个整体响应，最后 **Scatter‑Gather** 支持“一条请求广播给多家供应商，再聚合报价选最优”。

### 2. Technical Debt / 技术债

- **通俗理解**：技术债可以想成“现在图省事、以后还账加倍辛苦”的各种技术性妥协，以及团队怎么有计划地记录、评估和慢慢还这些债。

- **Definition: "Quick & dirty" vs. Strategic / 定义：“又快又脏”与战略性取舍**  
  - **EN**: Technical debt is the cost of extra rework caused by choosing an expedient “quick & dirty” solution now instead of a cleaner one, or by a deliberate decision to postpone ideal design for business reasons.  
  - **中**：技术债是为了图省时/省成本而先用“将就方案”，导致未来需要额外返工的成本，也包括基于商业考虑有意识推迟理想设计的决策。

- **Dimensions: Intentional vs. Unintentional / 维度一：有意 vs 无意**  
  - **EN**: Intentional debt is incurred knowingly (e.g., skip documentation to hit a release); unintentional debt arises from low‑quality work, lack of skills, or bad architectural choices.  
  - **中**：有意技术债是团队清楚权衡后故意欠下的（如赶版本先不上所有测试）；无意技术债来自代码质量差、经验不足或选错架构等。

- **Time Horizon: Short‑term vs. Long‑term / 维度二：短期 vs 长期**  
  - **EN**: Short‑term debt comes from urgent shortcuts (e.g., hotfix without tests); long‑term debt is baked into long‑lived design decisions (e.g., single‑platform design for years).  
  - **中**：短期债多见于紧急修补、跳过某些测试；长期债来自会持续很多年的设计决策（例如只支持一个平台的核心系统）。

- **Degree of Focus: Focused vs. Unfocused / 维度三：聚焦 vs 分散**  
  - **EN**: Focused debt is localized (a known workaround, a module lacking tests); unfocused debt is many small shortcuts scattered across the system (loose standards, lots of copy‑paste).  
  - **中**：聚焦债集中在少数明确位置（某模块临时绕过、缺少测试）；分散债是全系统到处都是小“凑合”（不按规范、复制粘贴泛滥）。

- **Management: Backlog vs. Code Comments / 管理：待办列表 vs 代码注释**  
  - **EN**: Effective management tracks debt items explicitly in product backlogs or boards, measures their cost, visualizes them, plans repayment, and regularly allocates time to refactor; relying only on scattered “TODO” comments is ineffective.  
  - **中**：有效管理会把技术债登记到 backlog / 看板，估算成本、可视化展示、安排“还债”迭代；只在代码里写几行 `// TODO` 基本不算真正跟踪。

- **Patterns that Increase TD & Solutions / 加剧技术债的模式与对策**  
  - **EN**: Known TD‑increasing patterns include schedule pressure (cutting corners to meet unrealistic commitments), code duplication (copy‑paste, poor reuse), and “get it right the first time” over‑engineering; solutions involve flexible planning, static analysis and pairing, tracking and repaying debt rather than hiding it.  
  - **中**：典型“加债模式”有：**进度压力**（承诺不现实只好偷工减料）、**代码复制**（复制粘贴+重复实现）、以及“第一次就做极其通用”的**过度设计**；应对方式包括更灵活的计划与迭代、用静态分析和结对编程控制重复、把债显式记入 backlog 并安排重构偿还。

- **Managing TD in Practice / 实务中的技术债管理**  
  - **EN**: Surveys show teams dedicate a significant portion of time to TD (25–40%); effective practices are tracking via backlogs/Kanban, static analyzers, periodic audits, reserving time each release to refactor, and involving business stakeholders in trade‑offs.  
  - **中**：调研显示不少团队有 **1/4 甚至更多开发时间**在处理技术债；比较有效的做法有：在 backlog/看板中跟踪债项、结合静态分析工具、定期代码审计、每个版本留出固定比例时间专做重构，并让业务方参与“短期收益 vs 长期速度”的权衡。

---

## Topic 3: Code Quality & Design Principles（代码质量与设计原则）

### 1. Fundamental Principles / 基本原则

- **通俗理解**：这一块讲的是“写代码的底层哲学”，比如函数和数据怎么抽象、哪些细节要藏起来、如何保证别人用你的代码不会轻易把内部搞坏。

- **Abstraction / 抽象**  
  - **EN**: Encapsulate a well‑defined functional purpose into functions or classes so clients rely on the abstraction (interface) instead of internal implementation; abstraction can be functional (e.g., `int[] sort(int[] xs)`) or via generalization across similar pieces of code.  
  - **中**：把一段有明确功能目的的代码封装成函数或类（比如 `sort` 函数），调用方只依赖接口而不关心内部算法；抽象既包括**功能抽象**，也包括在多段类似代码之间**找共性、隐藏差异**的“泛化抽象”。  
  - **通俗理解**：抽象就像用遥控器开电视——你按按钮就行，不需要知道电视内部是怎么接收信号、怎么解码的。写代码时，把复杂操作包装成一个简单的函数名（比如 `calculateTotal()`），调用的人不需要知道里面是加法还是乘法，只要知道“调用这个函数能算出总数”就够了。  
  - **详细说明**：
    - **功能抽象**：将一组操作封装成一个有意义的函数，隐藏实现细节。例如 `sort()` 函数隐藏了排序算法（冒泡、快排等）的具体实现。
    - **泛化抽象**：在多个相似的代码片段中找出共同模式，提取成通用接口或基类。例如多个支付方式（信用卡、支付宝、微信）都有“支付”这个共同行为，可以抽象成 `PaymentMethod` 接口。
    - **好处**：降低复杂度、提高复用性、便于维护（改实现不影响调用方）。

- **Data Abstraction / 数据抽象**  
  - **EN**: Data abstraction models a data structure by a set of related operations (interfaces) while hiding its representation; good examples (stack with `push/pop/isEmpty/length`) preserve invariants, whereas bad ones expose the representation and break semantics.  
  - **中**：数据抽象用一组相关操作来刻画某种数据结构，同时**隐藏其内部实现**；好的栈接口只有 `push/pop/isEmpty/length` 等操作并保持“后进先出”不变式，坏例子则把数组下标、内部结构都暴露出来，破坏了“像栈一样用”的语义。  
  - **通俗理解**：数据抽象就像银行账户——你只能通过“存钱、取钱、查余额”这些操作来使用，银行不会让你直接打开金库去数钞票。写代码时，栈（Stack）应该只提供 `push()`、`pop()` 这些操作，不应该让外部直接访问内部数组的下标，否则外面可能乱改，破坏“后进先出”的规则。  
  - **详细说明**：
    - **核心思想**：用操作（接口）定义数据结构的行为，而不是暴露内部存储方式（数组、链表等）。
    - **不变式（Invariant）**：数据抽象必须维护数据结构的语义不变式。例如栈必须保证“后进先出”，队列必须保证“先进先出”。
    - **好的例子**：`Stack` 类只提供 `push()`, `pop()`, `isEmpty()`, `size()` 等方法，内部用数组还是链表实现，调用方不知道也不关心。
    - **坏的例子**：把 `Stack` 的内部数组 `int[] elements` 设为 `public`，或者提供 `getElement(int index)` 方法，让外部可以直接访问任意位置，破坏了栈的语义。

- **Information Hiding / 信息隐藏**  
  - **EN**: Interfaces should expose only essential information; parameter lists and types should not leak unnecessary internal details (e.g., `canVote(Voter v)` vs `canVote(HKID, age, districtCode)`).  
  - **中**：接口只暴露**完成功能所必需的信息**，形参与返回值尽量不泄露内部结构，例如用 `Voter` 对象承载身份证号/年龄/选区，而不是把三个字段全部摊在接口上。  
  - **通俗理解**：信息隐藏就像去医院看病——医生只需要知道你的症状和基本信息，不需要知道你的银行密码、社交账号这些无关信息。写代码时，判断一个人能否投票的函数应该接收一个 `Voter` 对象，而不是把身份证号、年龄、选区这三个字段都列在参数里，因为这样会暴露内部数据结构，而且如果以后要加新字段（比如居住年限），所有调用这个函数的地方都要改。  
  - **详细说明**：
    - **原则**：接口参数和返回值应该使用抽象类型（对象、接口），而不是暴露具体的内部字段。
    - **好处**：降低耦合（内部结构改变不影响调用方）、提高封装性、便于扩展。
    - **例子对比**：
      - **泄露信息**：`canVote(String hkid, int age, String districtCode)` —— 暴露了内部用三个字段存储选民信息。
      - **隐藏信息**：`canVote(Voter voter)` —— 只暴露“需要选民对象”这个抽象概念，内部字段可以随时调整。

- **Encapsulation & Violations / 封装与破坏封装**  
  - **EN**: Encapsulation protects internal state so that only designated operations can mutate it; violations occur when client code can directly manipulate internal structures (e.g., exposing `int[] a` of `Stack` or passing out mutable references).  
  - **中**：封装要求**内部状态只能通过少数方法修改**，而且这些方法会维护好不变式；当类把内部数组设为 `public`，或者把内部数组直接返回给调用方时，外部代码能绕过接口随意改，就形成了**封装破坏**。  
  - **通俗理解**：封装就像给房子装门锁——只有通过门（公开方法）才能进出，不能直接从窗户（内部字段）爬进去。如果 `Stack` 类把内部数组设为 `public`，就像把窗户拆了，外面可以随便改，`Stack` 自己都不知道数据被改了，可能还以为栈是空的，结果 `pop()` 时出错。  
  - **详细说明**：
    - **封装的核心**：内部状态（字段）应该是 `private`，只能通过公开的方法（如 `push()`, `pop()`）来修改，这些方法会维护数据的不变式。
    - **封装破坏的常见情况**：
      1. **暴露内部字段**：`public int[] elements;` —— 外部可以直接修改数组。
      2. **返回可变引用**：`public int[] getElements() { return elements; }` —— 返回内部数组的引用，外部修改会影响内部。
      3. **持有外部可变引用**：构造函数直接保存外部传入的数组引用，外部修改会影响对象内部状态。
    - **正确的做法**：
      - 字段设为 `private`。
      - 如果需要返回数据，返回副本（`return Arrays.copyOf(elements, size);`）。
      - 如果需要接收数据，复制一份保存（`this.elements = Arrays.copyOf(inputArray, inputArray.length);`）。
  - **补充（PDF）**：讲义里用 `Stack` 与 `myArray` 的例子说明：如果 `Stack` 内部直接持有外部传进来的 `myArray` 引用，并且客户代码还能对这个数组做 `get/set` 操作，就会出现“`Stack.push()` 之后，外面一改数组，`Stack` 自己却以为结构完好”的情况，这是典型的封装破坏。

### 2. SOLID Principles / SOLID 设计原则

- **通俗理解**：SOLID 可以看成是“面向对象写得不难维护”的五条经验法则，照着做一般能少踩很多设计坑。

- **SRP – Single Responsibility Principle / 单一职责原则**  
  - **EN**: A class should have one logical reason to change, tied to a single responsibility (e.g., `Stack` only responsible for “behaving like a stack”).  
  - **中**：一个类应只因一种逻辑职责而改变，例如 `Stack` 只负责“栈行为”，与 UI、日志等职责分离。  
  - **通俗理解**：单一职责就像“一个萝卜一个坑”——每个类只做一件事，做好就行。如果一个类既管用户登录，又管发送邮件，还管写日志，那当邮件服务出问题时，你改邮件代码可能会把登录功能也搞坏。就像餐厅里，厨师负责做菜，服务员负责上菜，收银员负责收钱，各司其职，不能一个人全包。  
  - **详细说明**：
    - **核心思想**：一个类应该只有一个引起它变化的原因。如果类有多个职责，修改一个职责可能影响其他职责。
    - **判断标准**：问自己“这个类会因为什么原因而需要修改？”如果答案不止一个，说明违反了 SRP。
    - **例子**：
      - **违反 SRP**：`User` 类既负责用户数据管理，又负责发送邮件通知，还负责写日志。如果邮件服务改变，`User` 类要改；如果日志格式改变，`User` 类也要改。
      - **遵循 SRP**：`User` 类只负责用户数据，`EmailService` 负责发邮件，`Logger` 负责写日志。各自独立，互不影响。
    - **好处**：降低复杂度、提高可维护性、便于测试、减少修改影响范围。

- **OCP – Open/Closed Principle / 开闭原则**  
  - **EN**: Classes should be open for extension but closed for modification—new behavior is added by extending abstractions, not editing existing core code.  
  - **中**：代码应当通过扩展而不是修改来加新功能，比如用多态的 `SalaryType.doThis()` 替代不断扩大的 `switch` 语句。  
  - **通俗理解**：开闭原则就像乐高积木——现有的积木块（核心代码）不能改，但你可以用新积木块（新类）扩展出新的组合。如果每次要新功能都去改旧代码，就像每次都要把已经搭好的房子拆了重建，风险很大。正确的做法是：定义好接口（比如“工资计算接口”），以后要加新的工资类型（小时工、月薪、提成），就写新类实现这个接口，不需要改原来的代码。  
  - **详细说明**：
    - **核心思想**：对扩展开放，对修改关闭。新功能通过添加新代码（继承、实现接口）来实现，而不是修改已有代码。
    - **违反 OCP 的例子**：
      ```java
      // 每次加新工资类型都要改这个函数
      double calculateSalary(Employee e) {
          switch(e.type) {
              case "HOURLY": return e.hours * e.rate;
              case "SALARY": return e.monthlySalary;
              case "COMMISSION": return e.base + e.sales * 0.1;
              // 加新类型要在这里加 case
          }
      }
      ```
    - **遵循 OCP 的例子**：
      ```java
      // 定义接口
      interface SalaryCalculator {
          double calculate(Employee e);
      }
      // 新类型只需实现接口，不需要改现有代码
      class HourlyCalculator implements SalaryCalculator { ... }
      class SalaryCalculator implements SalaryCalculator { ... }
      ```
    - **好处**：降低修改风险、提高稳定性、便于扩展、符合“开闭原则”的设计更灵活。

- **LSP – Liskov Substitution Principle / 里氏替换原则**  
  - **EN**: Subclasses must preserve the behavior expected from the base type, so any client using the base can safely use the subtype.  
  - **中**：子类必须保持父类的语义契约，在任何需要父类的地方都能安全换成子类，不能靠“假实现（dummy）方法”硬凑。  
  - **通俗理解**：里氏替换原则就像“以假乱真”——如果你说“这是鸟”，那它必须真的能飞、能叫，不能是“企鹅”（不会飞）或者“玩具鸟”（不会叫）。写代码时，如果 `Rectangle` 是父类，`Square` 是子类，那任何用 `Rectangle` 的地方换成 `Square` 应该还能正常工作。如果 `Square` 重写了 `setWidth()` 方法，让宽度改变时高度也自动改变（保持正方形），那调用方可能就懵了——我明明只改了宽度，怎么高度也变了？这就违反了 LSP。  
  - **详细说明**：
    - **核心思想**：子类对象必须能够替换其父类对象，且替换后程序行为不变。子类可以扩展功能，但不能改变父类的预期行为。
    - **违反 LSP 的经典例子**：
      ```java
      class Rectangle {
          int width, height;
          void setWidth(int w) { width = w; }
          void setHeight(int h) { height = h; }
      }
      class Square extends Rectangle {
          void setWidth(int w) { 
              width = w; 
              height = w; // 违反：改变了父类的行为预期
          }
      }
      // 使用方期望：setWidth 只改宽度，但 Square 把高度也改了
      ```
    - **遵循 LSP 的做法**：
      - 子类不应该重写父类方法并改变其语义。
      - 子类的前置条件不能比父类更严格，后置条件不能比父类更弱。
      - 子类不应该抛出父类不抛出的异常。
    - **好处**：保证多态的正确性、提高代码可靠性、便于理解和维护。

- **ISP – Interface Segregation Principle / 接口隔离原则**  
  - **EN**: Clients should not be forced to depend on methods they do not use; large interfaces should be split into smaller, cohesive ones.  
  - **中**：接口要精瘦、专一，不要让实现类为了一个有用方法被迫实现一堆无用的空方法，应拆成多个小接口。  
  - **通俗理解**：接口隔离就像“按需点餐”——如果你只想吃米饭，餐厅不应该强迫你点“套餐A”（包含米饭、汤、沙拉、甜点）。写代码时，如果一个接口有10个方法，但某个类只需要其中2个，那这个类就被迫实现了另外8个空方法（或者抛出异常），这是浪费且容易出错。正确的做法是把大接口拆成多个小接口，需要什么就实现什么。  
  - **详细说明**：
    - **核心思想**：客户端不应该被迫依赖它不使用的方法。接口应该尽可能小，只包含客户端真正需要的方法。
    - **违反 ISP 的例子**：
      ```java
      // 大而全的接口
      interface Worker {
          void work();
          void eat();
          void sleep();
          void code();
          void design();
          void test();
      }
      // 程序员只需要 work, code, test，但被迫实现 eat, sleep, design
      class Programmer implements Worker {
          void eat() { throw new UnsupportedOperationException(); }
          void sleep() { throw new UnsupportedOperationException(); }
          void design() { throw new UnsupportedOperationException(); }
      }
      ```
    - **遵循 ISP 的做法**：
      ```java
      // 拆分成小接口
      interface Workable { void work(); }
      interface Codable { void code(); }
      interface Testable { void test(); }
      interface Eatable { void eat(); }
      // 按需实现
      class Programmer implements Workable, Codable, Testable { ... }
      ```
    - **好处**：减少不必要的依赖、提高代码清晰度、降低实现复杂度、避免“空实现”或异常。

- **DIP – Dependency Inversion Principle / 依赖倒置原则**  
  - **EN**: High‑level modules and low‑level modules both depend on abstractions; details depend on abstractions, often realized via dependency injection and factories.  
  - **中**：高层与底层都应该依赖抽象接口而不是具体类，通过依赖注入、工厂等方式，把实现细节“插入”到高层逻辑中。  
  - **通俗理解**：依赖倒置就像“用标准插座”——你的手机充电器（高层）依赖的是“USB接口”（抽象），而不是“某个特定品牌的USB线”（具体实现）。这样你可以随时换不同的USB线，只要符合USB标准就行。写代码时，业务逻辑（高层）应该依赖“数据访问接口”（抽象），而不是直接依赖“MySQL数据库类”（具体实现）。这样以后要换成MongoDB，只需要换实现类，业务逻辑不用改。  
  - **详细说明**：
    - **核心思想**：
      1. 高层模块不应该依赖低层模块，两者都应该依赖抽象。
      2. 抽象不应该依赖细节，细节应该依赖抽象。
    - **违反 DIP 的例子**：
      ```java
      // 高层直接依赖具体实现
      class OrderService {
          private MySQLDatabase db; // 直接依赖具体类
          void saveOrder(Order o) {
              db.insert(o); // 如果换成 MongoDB，这里要改
          }
      }
      ```
    - **遵循 DIP 的做法**：
      ```java
      // 定义抽象接口
      interface Database {
          void insert(Object obj);
      }
      // 高层依赖抽象
      class OrderService {
          private Database db; // 依赖抽象
          OrderService(Database db) { this.db = db; } // 依赖注入
          void saveOrder(Order o) {
              db.insert(o); // 换实现类不影响这里
          }
      }
      // 具体实现
      class MySQLDatabase implements Database { ... }
      class MongoDB implements Database { ... }
      ```
    - **实现方式**：
      - **依赖注入（Dependency Injection）**：通过构造函数、Setter 或框架注入依赖。
      - **工厂模式（Factory Pattern）**：用工厂创建具体实现，返回抽象类型。
    - **好处**：提高灵活性、便于测试（可以注入 Mock 对象）、降低耦合、符合“面向接口编程”。

### 3. Coupling & Cohesion / 耦合与内聚

- **通俗理解**：这一块就是在教你“哪些东西应该绑在一起、哪些应该松开”，目标是改一处不会牵出一大片，又能让代码块各自职责清晰。

- **Coupling Types & Goal / 耦合类型与目标**  
  - **EN**: Coupling is compile‑time structural dependency; we aim for lower coupling by avoiding content and common coupling (direct code use/global variables) and preferring data coupling over stamp/control coupling.  
  - **中**：耦合是编译期的结构依赖，目标是**尽量降低耦合**：避免内容耦合和公共耦合（直接用别人的代码片段或全局变量），比起传整个大结构（标记耦合）或用控制参数驱动流程（控制耦合），更倾向于传入刚好需要的数据（数据耦合）。  
  - **通俗理解**：耦合就像“两个人绑在一起”——绑得越紧，一个人动，另一个人也被迫跟着动。写代码时，如果类A直接用了类B的内部实现，那B一改，A就得跟着改，这就是高耦合。低耦合就像两个人只是“握手”（通过接口交互），各自内部怎么变都不影响对方。  
  - **详细说明**：
    - **耦合类型（从高到低）**：
      1. **内容耦合（Content Coupling）**：一个模块直接访问另一个模块的内部数据或代码。例如：A 类直接修改 B 类的私有字段。
      2. **公共耦合（Common Coupling）**：多个模块共享同一个全局变量或数据。例如：多个类都读写同一个全局变量 `globalCounter`。
      3. **外部耦合（External Coupling）**：多个模块依赖同一个外部接口或文件格式。例如：多个类都直接读写同一个文件。
      4. **控制耦合（Control Coupling）**：一个模块通过控制参数（如布尔值、枚举）控制另一个模块的行为。例如：`process(data, isUrgent)`，用 `isUrgent` 控制处理方式。
      5. **标记耦合（Stamp Coupling）**：模块之间传递整个数据结构，但只使用其中一部分。例如：传整个 `User` 对象，但只用 `userId`。
      6. **数据耦合（Data Coupling）**：模块之间只通过参数传递必要的数据。例如：只传 `userId`（int 类型）。
    - **目标**：尽量使用数据耦合，避免内容耦合和公共耦合。
    - **好处**：降低修改影响范围、提高可维护性、便于独立测试和部署。

- **External Coupling Example / 外部耦合示例**  
  - **EN**: When many components read/write the same file or external resource directly, changes to that resource affect all of them; introducing a dedicated component or adapter for that resource reduces coupling.  
  - **中**：如果多个函数/模块直接读写同一个文件或外部资源，一旦访问方式改变，所有地方都要改；用一个专门的“文件访问模块/适配器”统一处理，可以把对外部资源的耦合集中起来。

- **Cohesion Types & Goal / 内聚类型与目标**  
  - **EN**: Cohesion is about why things are grouped together; we want higher cohesion—ideally functional cohesion (all parts contribute to a single, well‑defined task)—instead of coincidental or purely logical/temporal grouping.  
  - **中**：内聚关心“**为什么把这些东西放在一起**”，目标是尽量靠近**功能内聚**（一起完成一个明确任务），减少“碰巧写在一起”的偶然内聚，避免一个类/模块什么都做、什么都沾。  
  - **通俗理解**：内聚就像“物以类聚”——一个工具箱里的工具都是用来修东西的（功能内聚），而不是把锤子、菜刀、牙刷、手机放在一起（偶然内聚）。写代码时，一个类里的方法应该都是为了完成同一个目标，比如 `Stack` 类里的 `push()`, `pop()`, `isEmpty()` 都是为了“实现栈的功能”。如果一个类既有“计算工资”、又有“发送邮件”、还有“写日志”，那就是低内聚，应该拆开。  
  - **详细说明**：
    - **内聚类型（从低到高）**：
      1. **偶然内聚（Coincidental Cohesion）**：元素之间没有逻辑关系，只是碰巧放在一起。例如：一个工具类里既有 `calculateTax()`，又有 `sendEmail()`，还有 `formatDate()`。
      2. **逻辑内聚（Logical Cohesion）**：元素在逻辑上相关，但功能不同。例如：一个 `InputHandler` 类处理所有类型的输入（键盘、鼠标、触摸），但处理方式完全不同。
      3. **时间内聚（Temporal Cohesion）**：元素在同一时间执行，但功能不相关。例如：`initialize()` 方法里初始化数据库、加载配置、启动定时任务，它们都在启动时执行，但功能无关。
      4. **过程内聚（Procedural Cohesion）**：元素按执行顺序组织，但功能不紧密相关。例如：一个函数先验证输入，再处理数据，最后写日志，虽然按顺序执行，但每个步骤功能独立。
      5. **通信内聚（Communicational Cohesion）**：元素操作相同的数据，但功能不同。例如：一个类里所有方法都操作 `User` 对象，但有的是验证、有的是格式化、有的是转换。
      6. **顺序内聚（Sequential Cohesion）**：元素的输出是下一个元素的输入，形成处理链。例如：先读取文件，再解析内容，最后计算结果，前一步的输出是后一步的输入。
      7. **功能内聚（Functional Cohesion）**：所有元素共同完成一个明确、单一的功能。例如：`Stack` 类的所有方法都是为了实现“栈数据结构”这个单一功能。
    - **目标**：追求功能内聚，避免偶然内聚和逻辑内聚。
    - **好处**：提高代码可读性、便于理解和维护、降低修改风险、符合单一职责原则。

- **Bubble Sort Example / 冒泡排序示例**  
  - **EN**: Splitting comparison and swap into one class and sorting loop into another can lead to awkward procedural cohesion and more coupling; often a clearer design is to keep closely related operations together.  
  - **中**：将比较和交换写在类 A，把排序循环写在类 B，虽然“分开了”，但会产生奇怪的过程内聚和额外耦合；很多时候应让**强相关的操作待在一起**，既提高内聚又减轻耦合。

### 4. Code Smells & Refactoring / 代码坏味道与重构

- **通俗理解**：这里讲的是“怎么看出代码写得有问题（有味道）”以及“用重构一点点把味道减轻”，而不是一上来就重写全部。

- **Definition & Examples / 定义与示例**  
  - **EN**: A code smell is a symptom of violating design principles that may lead to more changes, more bugs, and worse comprehension; examples include magic numbers, hardcoding, long methods, poor naming, duplicated code, Blob, and Spaghetti Code.  
  - **中**：代码坏味道是违反设计原则的征兆，会让类更易变、更易出错且难以理解，典型例子有魔法数字、硬编码、超长函数、命名混乱、重复代码、大泥团（Blob）、意大利面代码等。

- **Magic Numbers / 魔法数字**  
  - **EN**: Magic numbers are unexplained numeric literals in code that lack clear meaning, making code hard to understand and maintain.  
  - **中**：魔法数字是代码中未解释的数字字面量，缺乏明确含义，使代码难以理解和维护。  
  - **通俗理解**：魔法数字就像在文章里突然写“3.14159”而不说这是圆周率——读者不知道这个数字是什么意思，为什么要用这个值。写代码时，如果看到 `if (age >= 18)` 还好理解，但看到 `if (price * 0.08 > 100)` 就不知道 0.08 是什么（可能是税率？），100 是什么（可能是阈值？）。  
  - **详细说明**：
    - **问题**：数字字面量直接出现在代码中，没有注释或常量说明其含义，导致：
      - 难以理解：不知道数字代表什么业务含义。
      - 难以维护：如果这个值需要修改，要在多个地方找，容易遗漏。
      - 容易出错：可能在不同地方用了不同的值（比如有的地方用 0.08，有的用 0.085）。
    - **例子**：
      ```java
      // 坏：魔法数字
      if (user.getAge() >= 18) { ... }
      double tax = price * 0.08;
      if (items.size() > 10) { ... }
      
      // 好：使用有意义的常量
      private static final int LEGAL_AGE = 18;
      private static final double TAX_RATE = 0.08;
      private static final int MAX_ITEMS_FOR_DISCOUNT = 10;
      
      if (user.getAge() >= LEGAL_AGE) { ... }
      double tax = price * TAX_RATE;
      if (items.size() > MAX_ITEMS_FOR_DISCOUNT) { ... }
      ```
    - **重构方法**：将魔法数字提取为有意义的常量或枚举，并添加注释说明其业务含义。

- **Hardcoding / 硬编码**  
  - **EN**: Hardcoding refers to embedding fixed values (strings, URLs, file paths, configuration) directly in source code instead of using configuration files, environment variables, or constants.  
  - **中**：硬编码是指将固定值（字符串、URL、文件路径、配置）直接写在源代码中，而不是使用配置文件、环境变量或常量。  
  - **通俗理解**：硬编码就像把“我家地址”直接写在程序里，而不是写在配置文件里。如果搬家了，就要改代码、重新编译、重新部署。如果地址写在配置文件里，改一下配置文件就行，程序不用动。写代码时，把数据库连接字符串、API 密钥、文件路径等直接写在代码里，就是硬编码。  
  - **详细说明**：
    - **问题**：
      - **环境依赖**：不同环境（开发、测试、生产）需要不同的配置，硬编码无法适应。
      - **安全性**：敏感信息（密码、密钥）写在代码里容易被泄露。
      - **灵活性差**：修改配置需要改代码、重新编译、重新部署。
      - **难以测试**：测试时无法轻松切换不同的配置。
    - **例子**：
      ```java
      // 坏：硬编码
      String dbUrl = "jdbc:mysql://localhost:3306/mydb";
      String apiKey = "sk-1234567890abcdef";
      String logPath = "C:\\logs\\app.log";
      
      // 好：使用配置文件或环境变量
      String dbUrl = config.getProperty("database.url");
      String apiKey = System.getenv("API_KEY");
      String logPath = config.getProperty("log.path", "/var/log/app.log");
      ```
    - **重构方法**：
      - 使用配置文件（properties、YAML、JSON）。
      - 使用环境变量。
      - 使用配置类或配置服务。
      - 敏感信息使用密钥管理服务。

- **Long Methods / 长方法**  
  - **EN**: Long methods are functions that contain too many lines of code or handle multiple responsibilities, making them hard to understand, test, and maintain.  
  - **中**：长方法是包含过多代码行或处理多个职责的函数，使其难以理解、测试和维护。  
  - **通俗理解**：长方法就像一篇没有分段的长文章——从头读到尾，不知道重点在哪，想找某个功能要翻半天。写代码时，如果一个函数有几百行，做了很多事情（验证输入、处理业务、写数据库、发邮件、写日志），那这个函数就是“长方法”。应该把它拆成多个小函数，每个函数只做一件事。  
  - **详细说明**：
    - **问题**：
      - **难以理解**：代码太长，需要上下滚动才能看全，难以把握整体逻辑。
      - **难以测试**：一个方法做太多事，测试用例复杂，难以覆盖所有分支。
      - **难以维护**：修改一个功能可能影响其他功能，容易引入 bug。
      - **难以复用**：功能耦合在一起，无法单独复用某个部分。
    - **判断标准**：
      - 一般建议：一个方法不超过 20-30 行。
      - 如果方法超过 50 行，应该考虑拆分。
      - 如果方法做了多件事（有多个“抽象层级”），应该拆分。
    - **例子**：
      ```java
      // 坏：长方法，做了多件事
      public void processOrder(Order order) {
          // 验证订单（20行）
          if (order == null) { throw ... }
          if (order.getItems().isEmpty()) { throw ... }
          // ... 更多验证
          
          // 计算价格（30行）
          double total = 0;
          for (Item item : order.getItems()) { ... }
          // ... 计算折扣、税费
          
          // 保存到数据库（20行）
          // ... 数据库操作
          
          // 发送邮件（15行）
          // ... 邮件发送逻辑
          
          // 写日志（10行）
          // ... 日志记录
      }
      
      // 好：拆分成多个小方法
      public void processOrder(Order order) {
          validateOrder(order);
          double total = calculateTotal(order);
          saveOrder(order, total);
          sendConfirmationEmail(order);
          logOrderProcessed(order);
      }
      
      private void validateOrder(Order order) { ... }
      private double calculateTotal(Order order) { ... }
      private void saveOrder(Order order, double total) { ... }
      private void sendConfirmationEmail(Order order) { ... }
      private void logOrderProcessed(Order order) { ... }
      ```
    - **重构方法**：
      - **提取方法（Extract Method）**：将长方法中的逻辑块提取成独立方法。
      - **提取类（Extract Class）**：如果方法属于不同职责，可以提取到新类中。
      - 遵循单一职责原则，每个方法只做一件事。

- **Poor Naming / 命名不当**  
  - **EN**: Poor naming uses vague, misleading, or non-descriptive names for variables, methods, or classes, making code self-documentation impossible and increasing cognitive load.  
  - **中**：命名不当是指变量、方法或类使用了模糊、误导性或非描述性的名称，使代码无法自解释，增加认知负担。  
  - **通俗理解**：命名不当就像给文件起名“新建文件夹”、“文档1”、“最终版”、“真的最终版”——过几天就不知道里面是什么了。写代码时，如果变量叫 `data`、`temp`、`x`，方法叫 `doSomething()`、`process()`，类叫 `Manager`、`Helper`，那别人（包括未来的自己）就看不懂这些名字到底是什么意思。  
  - **详细说明**：
    - **问题**：
      - **可读性差**：名字不清晰，需要看实现才能理解。
      - **容易误解**：名字可能误导，让人以为做了 A，实际做了 B。
      - **维护困难**：不知道名字的含义，不敢轻易修改。
      - **增加认知负担**：需要记住“这个变量实际是做什么的”。
    - **命名原则**：
      - **变量名**：应该是名词或名词短语，清晰表达“是什么”。
        - 坏：`data`, `temp`, `x`, `arr`, `obj`
        - 好：`userList`, `totalPrice`, `orderId`, `isValid`
      - **方法名**：应该是动词或动词短语，清晰表达“做什么”。
        - 坏：`process()`, `doSomething()`, `handle()`, `getData()`
        - 好：`calculateTotal()`, `validateUser()`, `sendEmail()`, `findUserById()`
      - **类名**：应该是名词，清晰表达“是什么实体或概念”。
        - 坏：`Manager`, `Helper`, `Util`, `Processor`
        - 好：`OrderService`, `EmailValidator`, `DatabaseConnection`, `PaymentProcessor`
      - **布尔变量/方法**：应该用 `is`, `has`, `can`, `should` 开头。
        - 好：`isValid`, `hasPermission`, `canVote`, `shouldRetry`
    - **例子**：
      ```java
      // 坏：命名不当
      public void p(Data d) {
          int x = d.getX();
          int y = d.getY();
          int r = x + y;
          System.out.println(r);
      }
      
      // 好：清晰的命名
      public void printTotalPrice(Order order) {
          int itemPrice = order.getItemPrice();
          int shippingFee = order.getShippingFee();
          int totalPrice = itemPrice + shippingFee;
          System.out.println(totalPrice);
      }
      ```
    - **重构方法**：
      - 使用 IDE 的重命名功能（Refactor → Rename）。
      - 遵循团队的命名约定。
      - 如果名字需要注释才能理解，说明名字不够好，应该改进名字而不是加注释。

- **Code Duplication / 代码重复**  
  - **EN**: Code duplication occurs when the same or very similar code appears in multiple places, violating the DRY (Don't Repeat Yourself) principle and making maintenance harder.  
  - **中**：代码重复是指相同或非常相似的代码出现在多个地方，违反 DRY（不要重复自己）原则，使维护变得困难。  
  - **通俗理解**：代码重复就像把同一段话在文章里复制粘贴了 10 次——如果这段话有错别字，你要改 10 个地方，而且可能漏掉几个。写代码时，如果多个地方有相同的逻辑（比如验证邮箱格式、计算折扣、格式化日期），应该提取成一个函数，而不是在每个地方都写一遍。  
  - **详细说明**：
    - **问题**：
      - **维护成本高**：修改逻辑需要在多个地方改，容易遗漏，导致不一致。
      - **容易出错**：复制粘贴时可能改错，或者不同地方改得不一样。
      - **代码膨胀**：重复代码让代码库变大，增加阅读负担。
      - **违反 DRY 原则**：DRY（Don't Repeat Yourself）是软件开发的基本原则。
    - **重复的类型**：
      - **完全重复**：两段代码完全相同。
      - **结构重复**：代码结构相同，只是变量名或值不同。
      - **逻辑重复**：实现相同逻辑，但写法略有不同。
    - **例子**：
      ```java
      // 坏：代码重复
      // 在 OrderService 中
      public void processOrder(Order order) {
          if (order.getEmail() == null || !order.getEmail().contains("@")) {
              throw new IllegalArgumentException("Invalid email");
          }
          // ... 处理订单
      }
      
      // 在 UserService 中
      public void createUser(User user) {
          if (user.getEmail() == null || !user.getEmail().contains("@")) {
              throw new IllegalArgumentException("Invalid email");
          }
          // ... 创建用户
      }
      
      // 好：提取公共方法
      public class EmailValidator {
          public static void validate(String email) {
              if (email == null || !email.contains("@")) {
                  throw new IllegalArgumentException("Invalid email");
              }
          }
      }
      
      // 使用
      EmailValidator.validate(order.getEmail());
      EmailValidator.validate(user.getEmail());
      ```
    - **重构方法**：
      - **提取方法（Extract Method）**：将重复代码提取成独立方法。
      - **提取类（Extract Class）**：如果重复逻辑较复杂，可以提取到工具类中。
      - **使用模板方法模式**：如果重复的是算法框架，可以用模板方法模式。
      - **使用继承或组合**：通过继承或组合复用代码。
    - **注意**：不是所有重复都要消除，有时为了可读性或性能，可以接受少量重复。但要避免逻辑重复。

- **Impact & Refactoring / 影响与重构**  
  - **EN**: Empirical studies show classes with more smells change more often and contain more bug fixes; refactoring (manual or tool‑assisted) is used to remove or reduce smells, but removing all smells is neither realistic nor necessary.  
  - **中**：实证研究表明：坏味道越多的类越爱变、越爱出 bug；可以通过重构（手动或 IDE 提供的重构工具）改进结构，但不追求 100% 消灭，要在收益与风险间平衡。

---

## Topic 4: Code Review & Testing（代码审查与测试）

### 1. Modern Code Review (MCR) / 现代代码审查

- **通俗理解**：这部分可以理解成“大家在 Git 上互相看改动、提意见的套路”和大厂总结出的好习惯、坏现象。

- **Definition & Characteristics / 定义与特征**  
  - **EN**: Modern code review is a lightweight, tool‑based review of code changes (patches) by peers, usually asynchronous and less formal than inspections.  
  - **中**：现代代码审查是针对代码改动（补丁）的同伴评审，依托 GitHub、Gerrit 等工具进行，流程轻量、非正式，通常异步完成。

- **Purposes / 目的**  
  - **EN**: Besides finding bugs, MCR aims at improving code quality and design, sharing knowledge, mentoring, enforcing norms, and gate‑keeping changes.  
  - **中**：除了找 bug，还用来提升代码结构与设计质量、做知识共享和新人培养、统一团队规范，并作为合并代码的“闸门”。

- **Best Practices / 最佳实践**  
  - **EN**: Small change sizes, 1–5 reviewers, reviews done early and frequently, reviewers familiar with context, using static analyzers alongside human review, rotating reviewers instead of overloading experts.  
  - **中**：最佳实践包括：每次改动要小、评审要早且频繁、通常 1–5 个评审人、找熟悉上下文的人审、结合静态分析工具使用，并轮换评审人避免压垮“核心大佬”。
  - **补充（PDF）**：Google 的案例表明，**大多数变更只改一两个文件、几十行以内**，每周大约 4 小时做评审；作者通常在 1–5 小时内就能收到回应，且会使用风格检查器等自动工具在提交前/提交时过滤掉简单问题，把时间留给“设计和可维护性”的讨论。

- **Issues / 常见问题**  
  - **EN**: Review quality drops on complex code; distance (geographical/organizational) and negative tone harm effectiveness; missing context causes misunderstandings.  
  - **中**：复杂代码往往反馈少、质量低；地理或组织距离、评论语气不好以及上下文缺失都会让审查效果变差。

### 2. Automated Testing: Fuzzing & Delta Debugging / 自动化测试：模糊测试与差分调试

- **通俗理解**：模糊测试负责“疯狂乱试，把程序撞崩溃”，差分调试负责“把那个导致崩溃的复杂输入一点点瘦身，直到留下最小的复现案例”。

- **Fuzzing / 模糊测试**  
  - **EN**: Fuzzing automatically generates many mutated or random inputs to exercise programs and find crashes or vulnerabilities; examples include Android Monkey (UI event fuzzing) and American Fuzzy Lop (AFL, grey‑box mutation‑based fuzzer with coverage feedback).  
  - **中**：模糊测试自动生成大量随机/变异输入来跑程序，找崩溃和安全漏洞；例如 Android 的 Monkey 做 UI 事件随机测试，AFL 利用覆盖率反馈加变异不断发现新路径和崩溃。

- **Delta Debugging / 差分调试**  
  - **EN**: Given a failure‑inducing input, delta debugging systematically reduces it (e.g., halving and trimming) to find a much smaller input that still triggers the same failure, making debugging easier.  
  - **中**：差分调试从一个能复现 bug 的长输入出发，通过“先大块删、再细化删”等策略，自动缩小成仍能触发同一失败的最小输入片段，大大简化排错工作。

### 3. Testing Techniques & Test Oracles / 测试技术与测试预言机

- **通俗理解**：这一块是讲“怎么系统地设计测试 + 怎么判断结果是不是对的”，包括不同类型的预言机、黑箱/白箱方法以及在需求不清楚时怎么尽量测到点子上。

- **Testing Process & CI/CD / 测试过程与持续集成**  
  - **EN**: The testing procedure includes defining objectives, designing tests, executing them, and analyzing results; modern CI/CD runs automated builds and tests on each commit and can deploy small, frequent releases.  
  - **中**：测试过程包括确定目标、设计用例、执行测试、分析结果；CI/CD 会在每次提交后自动构建和运行测试，并支持小步快跑、频繁发布。
  - **补充（PDF）**：讲义中把测试过程细化为 4 步：**定义测试目标 → 设计测试（包括写脚本或配置 Fuzzer Profile）→ 执行测试（本地或 CI）→ 分析结果（包括断言、崩溃日志等）**，并强调如果要自动化前两步或执行，就必须同时自动化“结果分析”，否则人力瓶颈会转移到日志检查上。

- **Test Oracles / 测试预言机类型**  
  - **EN**:  
    - Generic: detect obvious errors like crashes or deadlocks;  
    - Pattern‑based: flag code patterns likely to be wrong (static analysis);  
    - Reference: compare against trusted benchmark or implementation;  
    - Regression: use outputs of previous versions;  
    - Program‑specific: assertions or manual checking tailored to a program;  
    - Metamorphic Testing: check expected relations among multiple runs.  
  - **中**：  
    - 通用预言机：如崩溃、死锁等“一看就错”的情况；  
    - 模式预言机：用静态分析规则识别易错代码模式；  
    - 参考预言机：与权威实现或基准用例对比结果；  
    - 回归预言机：拿旧版本在同一用例上的输出做对比；  
    - 程序特定预言机：针对某程序写断言或人工判定；  
    - 形变测试：设计多次执行之间应满足的关系（MR），用关系是否被破坏来判断是否有 bug。

- **Black‑box vs White‑box / 黑箱 vs 白箱**  
  - **EN**: Black‑box testing derives cases from external behavior (e.g., equivalence partitioning); white‑box testing uses code structure and aims for metrics like branch coverage.  
  - **中**：黑箱测试只看输入输出，用等价类划分等方法设计用例；白箱测试基于代码结构，追求例如分支覆盖率等结构性覆盖指标。

- **Testing in Uncertain Requirements & Pair Programming / 需求不确定下的测试与结对编程**  
  - **EN**: When requirements are vague, tests help clarify them through examples; developers focus on high‑impact features, accept incomplete coverage, and often combine automated tests with exploratory and pair programming to reveal omission faults.  
  - **中**：在需求不清晰时，测试本身就是**澄清需求的例子**，团队会优先测试用户量大的关键功能，接受“覆盖不完全但够用”的现实，并通过自动化测试 + 探索式测试 + 结对编程来挖掘**遗漏需求类错误**。

- **Testability: Stubs, Mocks & Dependency Injection / 可测试性：桩、Mock 与依赖注入**  
  - **EN**: Making code testable requires controllability and observability—often achieved by injecting dependencies (constructors/setters), using stubs/mocks for unavailable components, and designing seams for unit and integration tests.  
  - **中**：提升可测试性要让代码**易控制、易观察**：通过构造注入/Setter 注入等方式传入依赖，用 Stub/Mock 替代尚不可用或不稳定的组件，并在设计时预留“缝隙”，方便做单元与集成测试。


