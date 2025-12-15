## Topic 1: Software Process & Requirements（软件过程与需求）

### 1. Software Process (Agile/Scrum) / 软件过程（敏捷 / Scrum）

- **Scrum Roles, Events, Artifacts / Scrum 的角色、事件与工件**  
  - **EN**: Scrum defines roles (Product Owner, Scrum Master, Development Team), events (Sprint, Sprint Planning, Daily Scrum, Sprint Review, Sprint Retrospective), and artifacts (Product Backlog, Sprint Backlog, Increment).  
  - **中**：Scrum 里有三类**角色**（产品负责人负责 backlog 排优先级，Scrum 主管负责流程与障碍清理，开发团队负责交付增量）、一组固定的**事件**（迭代、计划会、每日站会、评审会、回顾会），以及**工件**（产品待办列表、迭代待办列表、可以交付的增量）。

- **Daily Scrum purpose / 每日站会的目的**  
  - **EN**: A 15‑minute stand‑up meeting where each member briefly states what was done yesterday, what will be done today, and what blockers exist, to synchronize the team and surface problems early.  
  - **中**：每日站会是约 15 分钟的**站立式短会**，每个人回答“昨天做了什么、今天准备做什么、遇到什么阻碍”，让团队快速同步、尽早发现风险。

- **User Stories, Story Points & Estimation / 用户故事与故事点估算**  
  - **EN**: Requirements are captured as user stories (“As a \<role>, I want \<action>, so that \<goal>”), and effort is estimated in relative story points using scales like Fibonacci or T‑shirt sizes.  
  - **中**：需求通常写成用户故事（“作为\<角色>，我想要\<行动>，以便\<目标>”），工作量用**相对的故事点**估算（如斐波那契数列或 T 恤尺码），反映复杂度和不确定性，而不是精确工时。

- **Project Velocity / 项目速度**  
  - **EN**: Velocity is the number of story points completed in a cycle; using the min/avg/max velocity over past sprints, teams forecast how many cycles are needed to finish remaining points.  
  - **中**：项目速度是每个迭代实际完成的故事点总数，可以用历史迭代的**最小/平均/最大速度**来估算“还剩多少故事点、大概还要多少个迭代”。

- **Burndown charts / 燃尽图**  
  - **EN**: A burndown chart plots remaining story points against time in the sprint, showing whether progress matches the ideal burndown line and revealing scope creep or under‑estimation.  
  - **中**：燃尽图把**剩余故事点随时间变化**画出来，对照理想直线可以看出进度是否落后、是否中途增加了需求或原来估算过低。

### 2. Requirements Engineering / 需求工程

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

- **Common RE Mistakes / 需求规格常见错误**  
  - **EN**: Typical problems include noise (irrelevant info), silence (missing features), over‑specification (describing solutions instead of problems), contradictions, ambiguity, forward references, and wishful thinking.  
  - **中**：典型错误有：**噪声**（无关信息）、**沉默**（重要点没写）、**过度规定**（写成解决方案而不是问题）、**自相矛盾**、**歧义**、**前向引用**（长文档里东西写在后面）和**一厢情愿**（技术上实现不了却当真写进需求）。

- **Conceptual Modeling & Analyst Positions / 概念建模与分析者立场**  
  - **EN**: Conceptual models (domain models) make assumptions explicit, reduce ambiguity, and support negotiation among stakeholders with different goals; analysts can take different positions (functional, social‑relativist, radical‑structuralist, neohumanist) depending on how they view truth and conflict.  
  - **中**：通过领域模型把概念、关系画出来，可以**显式化假设、减少歧义、支撑不同利益方协商**；分析者可以站在“功能主义”“社会相对主义”“激进结构主义”“新人文主义”等不同立场看待需求与冲突。

- **NFRs: Quality Attributes vs. Constraints / 非功能需求：质量属性 vs 约束**  
  - **EN**: Non‑functional requirements include quality attributes (performance, security, usability, availability, etc.) and constraints (laws, standards, platform limits); many domains have their own typical attribute sets.  
  - **中**：非功能需求既包括**质量属性**（性能、安全性、可用性、可维护性、可测试性等），也包括**约束条件**（法规、行业标准、平台/硬件限制），不同领域会有各自典型的一组质量关注点。

- **Measurable & Testable NFRs / 可度量与可测试**  
  - **EN**: Vague qualities (“quickly”) should be refined into measurable forms (“20 selected cryptocurrencies within 1 second”), otherwise they cannot be designed for or validated.  
  - **中**：模糊描述（比如“很快”）要细化成**可量化指标**（例如“用户选的 20 个币价在 1 秒内显示完”），否则架构与实现都无法针对性设计，更无法验证。

- **Validation & Negotiation (MoSCoW) / 验证与优先级协商**  
  - **EN**: Validation uses multiple sources and aids (walkthroughs, prototypes, test plans, user acceptance tests); negotiation often prioritizes with schemes like MoSCoW (Must, Should, Could, Won’t).  
  - **中**：验证可以结合**多源交叉验证、早期走查、原型、单元测试/验收测试**等；协商优先级时常用 **MoSCoW** 法——“必须有、应该有、可以有、这次不要”，指导在时间/预算约束下先做哪些需求。

---

## Topic 2: Architecture & Technical Debt（架构与技术债）

### 1. Software Architecture / 软件架构

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

- **Attribute‑Driven Design (ADD) & Tactics / 属性驱动设计**  
  - **EN**: ADD iteratively decomposes modules by choosing architectural drivers, selecting patterns/tactics/styles that satisfy them, and assigning responsibilities; examples include addressing usability via separated UI, security via authentication in presentation tier, and availability via redundancy in data tier.  
  - **中**：属性驱动设计按迭代方式：选定**架构驱动因素 → 选模式/策略/风格 → 分解模块并分配职责**，例如顶层先为“易用性”拆出表示层，再在表示层为“安全性”加认证，在数据层为“可用性”加冗余。

- **Integration Patterns (Messaging) / 企业集成模式**  
  - **EN**: Enterprise Integration Patterns like Content‑Based Router, Splitter, Aggregator, and Scatter‑Gather specify how messages flow between components to achieve scalability, flexibility and reliability.  
  - **中**：在系统集成中，可用**内容路由器、拆分器、聚合器、广播‑聚合对**等企业集成模式来组织消息流动，从而在组件连线层面提升系统的可扩展性与可靠性。

### 2. Technical Debt / 技术债

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

- **Abstraction / 抽象**  
  - **EN**: Encapsulate a well‑defined functional purpose into functions or classes so clients rely on the abstraction (interface) instead of internal implementation; abstraction can be functional (e.g., `int[] sort(int[] xs)`) or via generalization across similar pieces of code.  
  - **中**：把一段有明确功能目的的代码封装成函数或类（比如 `sort` 函数），调用方只依赖接口而不关心内部算法；抽象既包括**功能抽象**，也包括在多段类似代码之间**找共性、隐藏差异**的“泛化抽象”。

- **Data Abstraction / 数据抽象**  
  - **EN**: Data abstraction models a data structure by a set of related operations (interfaces) while hiding its representation; good examples (stack with `push/pop/isEmpty/length`) preserve invariants, whereas bad ones expose the representation and break semantics.  
  - **中**：数据抽象用一组相关操作来刻画某种数据结构，同时**隐藏其内部实现**；好的栈接口只有 `push/pop/isEmpty/length` 等操作并保持“后进先出”不变式，坏例子则把数组下标、内部结构都暴露出来，破坏了“像栈一样用”的语义。

- **Information Hiding / 信息隐藏**  
  - **EN**: Interfaces should expose only essential information; parameter lists and types should not leak unnecessary internal details (e.g., `canVote(Voter v)` vs `canVote(HKID, age, districtCode)`).  
  - **中**：接口只暴露**完成功能所必需的信息**，形参与返回值尽量不泄露内部结构，例如用 `Voter` 对象承载身份证号/年龄/选区，而不是把三个字段全部摊在接口上。

- **Encapsulation & Violations / 封装与破坏封装**  
  - **EN**: Encapsulation protects internal state so that only designated operations can mutate it; violations occur when client code can directly manipulate internal structures (e.g., exposing `int[] a` of `Stack` or passing out mutable references).  
  - **中**：封装要求**内部状态只能通过少数方法修改**，而且这些方法会维护好不变式；当类把内部数组设为 `public`，或者把内部数组直接返回给调用方时，外部代码能绕过接口随意改，就形成了**封装破坏**。

### 2. SOLID Principles / SOLID 设计原则

- **SRP – Single Responsibility Principle / 单一职责原则**  
  - **EN**: A class should have one logical reason to change, tied to a single responsibility (e.g., `Stack` only responsible for “behaving like a stack”).  
  - **中**：一个类应只因一种逻辑职责而改变，例如 `Stack` 只负责“栈行为”，与 UI、日志等职责分离。

- **OCP – Open/Closed Principle / 开闭原则**  
  - **EN**: Classes should be open for extension but closed for modification—new behavior is added by extending abstractions, not editing existing core code.  
  - **中**：代码应当通过扩展而不是修改来加新功能，比如用多态的 `SalaryType.doThis()` 替代不断扩大的 `switch` 语句。

- **LSP – Liskov Substitution Principle / 里氏替换原则**  
  - **EN**: Subclasses must preserve the behavior expected from the base type, so any client using the base can safely use the subtype.  
  - **中**：子类必须保持父类的语义契约，在任何需要父类的地方都能安全换成子类，不能靠“假实现（dummy）方法”硬凑。

- **ISP – Interface Segregation Principle / 接口隔离原则**  
  - **EN**: Clients should not be forced to depend on methods they do not use; large interfaces should be split into smaller, cohesive ones.  
  - **中**：接口要精瘦、专一，不要让实现类为了一个有用方法被迫实现一堆无用的空方法，应拆成多个小接口。

- **DIP – Dependency Inversion Principle / 依赖倒置原则**  
  - **EN**: High‑level modules and low‑level modules both depend on abstractions; details depend on abstractions, often realized via dependency injection and factories.  
  - **中**：高层与底层都应该依赖抽象接口而不是具体类，通过依赖注入、工厂等方式，把实现细节“插入”到高层逻辑中。

### 3. Coupling & Cohesion / 耦合与内聚

- **Coupling Types & Goal / 耦合类型与目标**  
  - **EN**: Coupling is compile‑time structural dependency; we aim for lower coupling by avoiding content and common coupling (direct code use/global variables) and preferring data coupling over stamp/control coupling.  
  - **中**：耦合是编译期的结构依赖，目标是**尽量降低耦合**：避免内容耦合和公共耦合（直接用别人的代码片段或全局变量），比起传整个大结构（标记耦合）或用控制参数驱动流程（控制耦合），更倾向于传入刚好需要的数据（数据耦合）。

- **External Coupling Example / 外部耦合示例**  
  - **EN**: When many components read/write the same file or external resource directly, changes to that resource affect all of them; introducing a dedicated component or adapter for that resource reduces coupling.  
  - **中**：如果多个函数/模块直接读写同一个文件或外部资源，一旦访问方式改变，所有地方都要改；用一个专门的“文件访问模块/适配器”统一处理，可以把对外部资源的耦合集中起来。

- **Cohesion Types & Goal / 内聚类型与目标**  
  - **EN**: Cohesion is about why things are grouped together; we want higher cohesion—ideally functional cohesion (all parts contribute to a single, well‑defined task)—instead of coincidental or purely logical/temporal grouping.  
  - **中**：内聚关心“**为什么把这些东西放在一起**”，目标是尽量靠近**功能内聚**（一起完成一个明确任务），减少“碰巧写在一起”的偶然内聚，避免一个类/模块什么都做、什么都沾。

- **Bubble Sort Example / 冒泡排序示例**  
  - **EN**: Splitting comparison and swap into one class and sorting loop into another can lead to awkward procedural cohesion and more coupling; often a clearer design is to keep closely related operations together.  
  - **中**：将比较和交换写在类 A，把排序循环写在类 B，虽然“分开了”，但会产生奇怪的过程内聚和额外耦合；很多时候应让**强相关的操作待在一起**，既提高内聚又减轻耦合。

### 4. Code Smells & Refactoring / 代码坏味道与重构

- **Definition & Examples / 定义与示例**  
  - **EN**: A code smell is a symptom of violating design principles that may lead to more changes, more bugs, and worse comprehension; examples include magic numbers, hardcoding, long methods, poor naming, duplicated code, Blob, and Spaghetti Code.  
  - **中**：代码坏味道是违反设计原则的征兆，会让类更易变、更易出错且难以理解，典型例子有魔法数字、硬编码、超长函数、命名混乱、重复代码、大泥团（Blob）、意大利面代码等。

- **Impact & Refactoring / 影响与重构**  
  - **EN**: Empirical studies show classes with more smells change more often and contain more bug fixes; refactoring (manual or tool‑assisted) is used to remove or reduce smells, but removing all smells is neither realistic nor necessary.  
  - **中**：实证研究表明：坏味道越多的类越爱变、越爱出 bug；可以通过重构（手动或 IDE 提供的重构工具）改进结构，但不追求 100% 消灭，要在收益与风险间平衡。

---

## Topic 4: Code Review & Testing（代码审查与测试）

### 1. Modern Code Review (MCR) / 现代代码审查

- **Definition & Characteristics / 定义与特征**  
  - **EN**: Modern code review is a lightweight, tool‑based review of code changes (patches) by peers, usually asynchronous and less formal than inspections.  
  - **中**：现代代码审查是针对代码改动（补丁）的同伴评审，依托 GitHub、Gerrit 等工具进行，流程轻量、非正式，通常异步完成。

- **Purposes / 目的**  
  - **EN**: Besides finding bugs, MCR aims at improving code quality and design, sharing knowledge, mentoring, enforcing norms, and gate‑keeping changes.  
  - **中**：除了找 bug，还用来提升代码结构与设计质量、做知识共享和新人培养、统一团队规范，并作为合并代码的“闸门”。

- **Best Practices / 最佳实践**  
  - **EN**: Small change sizes, 1–5 reviewers, reviews done early and frequently, reviewers familiar with context, using static analyzers alongside human review, rotating reviewers instead of overloading experts.  
  - **中**：最佳实践包括：每次改动要小、评审要早且频繁、通常 1–5 个评审人、找熟悉上下文的人审、结合静态分析工具使用，并轮换评审人避免压垮“核心大佬”。

- **Issues / 常见问题**  
  - **EN**: Review quality drops on complex code; distance (geographical/organizational) and negative tone harm effectiveness; missing context causes misunderstandings.  
  - **中**：复杂代码往往反馈少、质量低；地理或组织距离、评论语气不好以及上下文缺失都会让审查效果变差。

### 2. Automated Testing: Fuzzing & Delta Debugging / 自动化测试：模糊测试与差分调试

- **Fuzzing / 模糊测试**  
  - **EN**: Fuzzing automatically generates many mutated or random inputs to exercise programs and find crashes or vulnerabilities; examples include Android Monkey (UI event fuzzing) and American Fuzzy Lop (AFL, grey‑box mutation‑based fuzzer with coverage feedback).  
  - **中**：模糊测试自动生成大量随机/变异输入来跑程序，找崩溃和安全漏洞；例如 Android 的 Monkey 做 UI 事件随机测试，AFL 利用覆盖率反馈加变异不断发现新路径和崩溃。

- **Delta Debugging / 差分调试**  
  - **EN**: Given a failure‑inducing input, delta debugging systematically reduces it (e.g., halving and trimming) to find a much smaller input that still triggers the same failure, making debugging easier.  
  - **中**：差分调试从一个能复现 bug 的长输入出发，通过“先大块删、再细化删”等策略，自动缩小成仍能触发同一失败的最小输入片段，大大简化排错工作。

### 3. Testing Techniques & Test Oracles / 测试技术与测试预言机

- **Testing Process & CI/CD / 测试过程与持续集成**  
  - **EN**: The testing procedure includes defining objectives, designing tests, executing them, and analyzing results; modern CI/CD runs automated builds and tests on each commit and can deploy small, frequent releases.  
  - **中**：测试过程包括确定目标、设计用例、执行测试、分析结果；CI/CD 会在每次提交后自动构建和运行测试，并支持小步快跑、频繁发布。

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


