# Week 2 Knowledge Summary - Software Process Model / Week 2 知识点总结 - 软件过程模型

## Table of Contents / 目录

### 1. Motivation / 1. 动机
- [Ideal vs. Reality / 理想 vs. 现实](#ideal-vs-reality--理想-vs-现实)
- [Challenges in Larger Projects / 大型项目中的挑战](#challenges-in-larger-projects--大型项目中的挑战)

### 2. Software Engineering Process / 2. 软件工程过程
- [Definition / 定义](#definition--定义)
- [SE Process - Activities / 软件工程过程 - 活动](#se-process---activities--软件工程过程---活动)
- [SE Process - Techniques / 软件工程过程 - 技术](#se-process---techniques--软件工程过程---技术)
- [SE Process - Deliverables / 软件工程过程 - 交付物](#se-process---deliverables--软件工程过程---交付物)
- [SE Process - Tools / 软件工程过程 - 工具](#se-process---tools--软件工程过程---工具)

### 3. Software Process Models / 3. 软件过程模型
- [Waterfall Model / 瀑布模型](#waterfall-model--瀑布模型)
- [V-Shape Waterfall Model / V 型瀑布模型](#v-shape-waterfall-model--v-型瀑布模型)
- [Problems of Waterfall Models / 瀑布模型的问题](#problems-of-waterfall-models--瀑布模型的问题)
- [Prototyping / 原型模型](#prototyping--原型模型)
- [Incremental Development / 增量开发](#incremental-development--增量开发)
- [Spiral Model / 螺旋模型](#spiral-model--螺旋模型)
- [(Rational) Unified Process / （Rational）统一过程](#rational-unified-process--rational统一过程)

### 4. Agile Methods / 4. 敏捷方法
- [Test-Driven Development (TDD) / 测试驱动开发 (TDD)](#test-driven-development-tdd--测试驱动开发-tdd)
- [Extreme Programming (XP) / 极限编程 (XP)](#extreme-programming-xp--极限编程-xp)
- [Scrum / Scrum](#scrum--scrum)
- [User Story / 用户故事](#user-story--用户故事)
- [Story Point Estimation / 故事点估算](#story-point-estimation--故事点估算)
- [Project Velocity / 项目速度](#project-velocity--项目速度)
- [Burndown Chart / 燃尽图](#burndown-chart--燃尽图)
- [Popular PM Elements / 流行的项目管理元素](#popular-pm-elements--流行的项目管理元素)

### Additional Detail / 补充要点
- [Additional Detail / 补充要点](#additional-detail--补充要点)

---

## 1. Motivation / 1. 动机

### Ideal vs. Reality / 理想 vs. 现实

#### English

**Ideal Case**: A group of strong and committed programmers can hack on a code project to deliver an application. Each programmer knows their code and responsibility extremely well, can deliver the code, meet each other's needs, and check with users to get and verify exact user requirements whenever necessary.

**Reality**: A group of average, sometimes emotional programmers work on a code project. They know their code gradually, may deliver buggy code with incomplete functionality, may not know each other's exact needs, and requirements change over time. Users may resign and be replaced, and some users are inexperienced in their business domain.

#### 中文

**理想情况**：一组强大且专注的程序员可以开发代码项目以交付应用程序。每个程序员都非常了解他们的代码和职责，可以交付代码，满足彼此的需求，并在必要时与用户检查以获取和验证确切的用户需求。

**现实**：一组普通的、有时情绪化的程序员在代码项目上工作。他们逐渐了解自己的代码，可能交付有错误且功能不完整的代码，可能不知道彼此的确切需求，需求会随时间变化。用户可能辞职并被替换，一些用户在其业务领域缺乏经验。

---

### Challenges in Larger Projects / 大型项目中的挑战

#### English

In larger projects, team members may resign and be replaced frequently. New team members need to understand:
- The requirement (denoted as R) that was collected from users (months ago!)
- The latest changes in R before taking up the position
- The set of functions that have been identified and designed but not been implemented (in full)
- The feedback on the implemented functions
- Any known and critical issues that are not completely fixed

Everyone wishes to minimize workload to pass on information and get quick references to move forwards. When a project is large, no one knows all the details of the whole project. Waiting for clear instruction and clear task specification before doing the task is unrealistic.

#### 中文

在大型项目中，团队成员可能频繁辞职和被替换。新团队成员需要了解：
- 从用户那里收集的需求（几个月前！）
- 在接手职位之前 R 的最新变化
- 已识别和设计但尚未（完全）实现的功能集
- 对已实现功能的反馈
- 任何已知且未完全修复的关键问题

每个人都希望最小化传递信息的工作量并获得快速参考以继续前进。当项目很大时，没有人知道整个项目的所有细节。在开始任务之前等待明确的指示和明确的任务规范是不现实的。

---

## 2. Software Engineering Process / 2. 软件工程过程

### Definition / 定义

#### English

A software engineering process model is a set of (1) activities, (2) techniques, (3) deliverables and (4) tools so that software engineers and project managers follow the (5) best practices (e.g., pair programming, agile methods) to use the items (1)-(4) to manage software systems.

#### 中文

软件工程过程模型是一组（1）活动、（2）技术、（3）交付物和（4）工具，以便软件工程师和项目经理遵循（5）最佳实践（例如，结对编程、敏捷方法）来使用项目（1）-（4）来管理软件系统。

---

### SE Process - Activities / 软件工程过程 - 活动

#### English

- Collecting user requirements
- Designing software
- Coding/Implementation
- Testing
- Deploying the software at user sites
- Maintain software
- Configuration Management
- Project Management

#### 中文

- 收集用户需求
- 设计软件
- 编码/实现
- 测试
- 在用户站点部署软件
- 维护软件
- 配置管理
- 项目管理

---

### SE Process - Techniques / 软件工程过程 - 技术

#### English

- **Collecting user requirements**: Use cases / user stories / use case diagram / meeting
- **Designing software**: UML / patterns / principles
- **Coding/Implementation**: Java / C++ / ...
- **Testing**: Unit testing / debugger / ...
- **Deploying**: Standalone software / Software plug-in / app / web services / ...
- **Maintain software**: Bug reporting / software repository
- **Configuration Management**: Version control / change management software
- **Project Management**: Work breakdown structure / task scheduling algorithm

#### 中文

- **收集用户需求**：用例 / 用户故事 / 用例图 / 会议
- **设计软件**：UML / 模式 / 原则
- **编码/实现**：Java / C++ / ...
- **测试**：单元测试 / 调试器 / ...
- **部署**：独立软件 / 软件插件 / 应用程序 / Web 服务 / ...
- **维护软件**：错误报告 / 软件仓库
- **配置管理**：版本控制 / 变更管理软件
- **项目管理**：工作分解结构 / 任务调度算法

---

### SE Process - Deliverables / 软件工程过程 - 交付物

#### English

- Requirement document
- Software design document
- Code listing and test script
- Quality assurance (QA) report
- Software at user site
- Bug report and software release
- Code change / patch / change history report
- Project schedule and status tracking

#### 中文

- 需求文档
- 软件设计文档
- 代码清单和测试脚本
- 质量保证（QA）报告
- 用户站点的软件
- 错误报告和软件发布
- 代码变更 / 补丁 / 变更历史报告
- 项目进度和状态跟踪

---

### SE Process - Tools / 软件工程过程 - 工具

#### English

- **Requirements**: UML tool / Requirement modeling tool / Word
- **Design**: UML tool / SonarQube
- **Coding**: Visual Studio / Eclipse
- **Testing**: JUnit / debugger / fuzzer
- **Deployment**: Installer / plug-in framework
- **Maintenance**: Bug reporting system
- **Configuration Management**: Apache subversion / git
- **Project Management**: MS Project

#### 中文

- **需求**：UML 工具 / 需求建模工具 / Word
- **设计**：UML 工具 / SonarQube
- **编码**：Visual Studio / Eclipse
- **测试**：JUnit / 调试器 / 模糊测试工具
- **部署**：安装程序 / 插件框架
- **维护**：错误报告系统
- **配置管理**：Apache subversion / git
- **项目管理**：MS Project

---

## 3. Software Process Models / 3. 软件过程模型

### Waterfall Model / 瀑布模型

#### English

Completely produce the full set of deliverables of each activity before starting the next activity.

**Advantages**: Simple workflow

**Disadvantages**: Need test against design, coding details, requirements at the same time.

#### 中文

在开始下一个活动之前，完全产生每个活动的完整交付物集。

**优点**：简单的工作流程

**缺点**：需要同时针对设计、编码细节、需求进行测试。

---

### V-Shape Waterfall Model / V 型瀑布模型

#### English

Similar to waterfall model but with stagewise validation goals. Each development stage has a corresponding testing/validation stage.

**Advantages**: Stagewise Validation Goal

#### 中文

类似于瀑布模型，但具有阶段性验证目标。每个开发阶段都有相应的测试/验证阶段。

**优点**：阶段性验证目标

---

### Problems of Waterfall Models / 瀑布模型的问题

#### English

1. **False sense of clear-cut phases of activities**: It is unrealistic to completely work out the actual requirement before designing software. It is also very costly to correct the problems made in upstream activities.

2. **Nothing is done until they are all done**: If we end the project at the design phase, then there is no any code delivered to the project clients, but our clients want to have something executable to help their own business!

**Lesson Learnt**: Cost of fixing bugs at earlier stage is cheaper. An artifact that can be validated should be validated as early as possible.

#### 中文

1. **对活动阶段的错误认识**：在设计软件之前完全确定实际需求是不现实的。纠正上游活动中产生的问题也非常昂贵。

2. **在全部完成之前什么也没有完成**：如果我们在设计阶段结束项目，那么就没有任何代码交付给项目客户，但我们的客户希望有一些可执行的东西来帮助他们的业务！

**经验教训**：在早期阶段修复错误的成本更便宜。可以验证的工件应该尽早验证。

---

### Prototyping / 原型模型

#### English

Code before design and requirement documentation. A prototype is a version of the final product that is likely buggy and only implements some features or merely the screen effects for users to "see" the product so that users can point out their requirements easier than expressing them in texts and UML.

Incrementally obtain and validate the user/system requirements before a proper software design stage.

#### 中文

在设计和需求文档之前进行编码。原型是最终产品的一个版本，可能有错误，只实现一些功能或仅仅是屏幕效果，让用户"看到"产品，以便用户比用文本和 UML 表达更容易指出他们的需求。

在适当的软件设计阶段之前，逐步获得并验证用户/系统需求。

---

### Incremental Development / 增量开发

#### English

Rather than using a parallel track to work on a smaller subsystem, another way is to deliver a smaller set of requirements and gradually enlarge the requirement set.

Divide the set of requirements into subsets. Implementing one subset as a program version v1, then implementing another subset on top of v1 as version v2, then implementing yet another subset on top of v2 as version v3, and so on.

We may optionally deploy a version to user here! Parallel tracks with each stage of each subsystem development is possible.

#### 中文

不是使用并行轨道来处理较小的子系统，另一种方法是交付较小的需求集并逐渐扩大需求集。

将需求集划分为子集。将一个子集实现为程序版本 v1，然后在 v1 之上实现另一个子集作为版本 v2，然后在 v2 之上实现另一个子集作为版本 v3，依此类推。

我们可以选择在此处向用户部署版本！每个子系统开发的每个阶段的并行轨道是可能的。

---

### Spiral Model / 螺旋模型

#### English

Contains characteristics of the waterfall, prototype, and incremental development, but is more systematic.

**Basic idea**: Plan, do prototyping, revise the previous plans until we know the item X well through a series of iterations.

**Steps**:
1. Determine objectives, alternatives, and constraints
2. Evaluate alternatives, identify risks, and resolve risks
3. Develop, validate, and verify next-level
4. Plan next level

#### 中文

包含瀑布、原型和增量开发的特性，但更加系统化。

**基本思想**：计划、制作原型、修订先前的计划，直到通过一系列迭代充分了解项目 X。

**步骤**：
1. 确定目标、备选方案和约束
2. 评估备选方案、识别风险并解决风险
3. 开发、验证和确认下一级别
4. 规划下一级别

---

### (Rational) Unified Process / （Rational）统一过程

#### English

Every type of activity runs in parallel (vertically) with other types of activities in the same iteration. The process is organized into phases (Inception, Elaboration, Construction, Transition) and iterations within each phase.

#### 中文

每种类型的活动都与同一迭代中的其他类型的活动并行（垂直）运行。该过程被组织为阶段（初始、细化、构建、转换）和每个阶段内的迭代。

---

## 4. Agile Methods / 4. 敏捷方法

### Test-Driven Development (TDD) / 测试驱动开发 (TDD)

#### English

**Ideas**: Write automated test case first, then write minimal functionality of the code that can pass all test cases, plus applying coding principles (or code refactoring) to keep the codebase better organized.

**Characteristics**:
- No obvious maintenance phase
- Each iteration must be short in duration in terms of time
- All diagrams are rough sketches to ease communications

**Process Flow**: Oral Requirements → Test Script Development → Coding → Testing → Deployment → Maintenance

#### 中文

**思想**：首先编写自动化测试用例，然后编写可以通过所有测试用例的代码的最小功能，再加上应用编码原则（或代码重构）以保持代码库更好地组织。

**特点**：
- 没有明显的维护阶段
- 每次迭代在时间上必须很短
- 所有图表都是粗略草图，以方便沟通

**流程**：口头需求 → 测试脚本开发 → 编码 → 测试 → 部署 → 维护

---

### Extreme Programming (XP) / 极限编程 (XP)

#### English

**Definition**: XP has no PM (project management). It is more lightweight than Scrum.

**Five phases**:
1. **Planning**: Meet with users, define user stories, and estimate story points. Plan for release through N iterations
2. **Design**: Use simple and consistent design sketch
3. **Coding**: Apply XP practices
4. **Testing**: Conduct automated unit tests and acceptance tests per user story
5. **Feedback**: PM and users determine the values of the user stories delivered by the implementation

**Emphases**: Generate feedbacks, Embrace changes, Keep customers engaged, Short iteration, Fix bugs early

**XP Practices**:
- Planning: Programmers estimate efforts needed for implementing user stories and customer decides the scope and timing of release
- Small release: Monthly, or daily for small fixes
- Metaphor: A shared story guides all developments by describing how the system works
- Simple design: Use simplest possible solution
- Testing: Use tests are implemented before the code. Customer write the functional tests
- Refactoring: Do refactoring frequently
- Pair programming: Two people write code at one computer
- Collective ownership: Anyone can change any part of the code at anytime
- Continuous integration: Integrate the code to the project codebase as soon as it is ready
- On-side customer: Customers are available full-time
- Coding standards: Apply them
- Open workplace: A large room with small cubicles preferred
- 40-hour week: No Overtime in two consecutive weeks
- Just rules: Team has its own but changeable rules for all to follow

#### 中文

**五个阶段**：
1. **规划**：与用户会面，定义用户故事，并估算故事点。通过 N 次迭代规划发布
2. **设计**：使用简单一致的设计草图
3. **编码**：应用 XP 实践
4. **测试**：为每个用户故事进行自动化单元测试和验收测试
5. **反馈**：项目经理和用户确定实现交付的用户故事的价值

**重点**：产生反馈、拥抱变化、保持客户参与、短迭代、尽早修复错误

**XP 实践**：
- 规划：程序员估算实现用户故事所需的工作量，客户决定发布的范围和时间
- 小发布：每月，或每天进行小修复
- 隐喻：通过描述系统如何工作来指导所有开发的共享故事
- 简单设计：使用最简单的可能解决方案
- 测试：在代码之前实现测试。客户编写功能测试
- 重构：经常进行重构
- 结对编程：两个人在一台计算机上编写代码
- 集体所有权：任何人都可以随时更改代码的任何部分
- 持续集成：代码准备好后立即集成到项目代码库
- 现场客户：客户全天候可用
- 编码标准：应用它们
- 开放工作场所：首选带小隔间的大房间
- 40 小时工作周：连续两周不加班
- 规则：团队有自己的但可更改的规则供所有人遵循

---

### Scrum / Scrum

#### English

**Definition**: A kind of agile development process. Arguably the most widely used development process nowadays. Driven by daily and periodic one-hour meetings. Scrum has PM (but a less tedious process than XP) and other practices/activities/work products.

**XP vs Scrum**: XP has no PM; Scrum has PM (but less tedious than XP) and other practices/activities/work products.

**Key Concepts**:
- **Product backlog**: A list of features desired for a final product, the bugs to be removed, technical work to set up and maintain development environment and user site, and knowledge to acquire by the project. Priority the product backlog.
- **Sprint backlog**: A list of tasks to complete during a sprint. It is updated once a day. The size is determined by total story points the team can deliver within a cycle based on history.
- **Task board**: A visual representation of every task and what phase of completion it's in. Usually includes columns for stories, to-dos, work in process, things needing verification and items finished. Tasks move: "to-do" → "in-progress" → "to verify" → "Done". Can be hung on wall or digitized.
- **Release burndown chart**: Tracks progress on a project. The chart itself is updated after each sprint. Teams can measure progress in any unit they choose.

**Process**:
- Go through the usage scenarios/stories to identify a slice of highest priority backlog tasks to be completed by the next iteration (Sprint) agreed by the customer
- Together with customers, discuss the goal of the current Sprint, prioritize functions to be completed and divided into detailed tasks
- Through standing meeting, each team member picks an item from sprint backlog. Target is to deliver the user story in the cycle.
- At the end of a sprint, conduct a sprint review (product owners/users verify whether user story is delivered) and a sprint retrospective (reflect on what's done right and what to improve)
- Conduct periodic short planning and review meetings for tasks completed and not completed in time and revise the set of backlog tasks accordingly
- Customers may change their mind at any time. Accept that requirements cannot be fully understood or defined. Focus on maximizing team's ability to deliver quickly and respond to selected backlog tasks.

**Sprint Planning Meeting**: Product owner shows up with prioritized agile product backlog and describes top items to team. Team determines which items they can complete during coming sprint. Team moves items from product backlog to sprint backlog, expanding each product backlog item into one or more sprint backlog tasks.

**Roles**:
- **Scrum Master**: The team's coach and helps Scrum practitioners achieve their highest level of performance. This role does not provide day-to-day direction to the team and does not assign tasks to individuals. In many projects, this role is assumed by the project manager.
- **Product Owner**: Responsible for prioritizing the backlog during Scrum development.
- **Scrum Development Team**: The team as a whole.

**Scheduled vs Actual**: When creating a release plan or sprint plan, PM needs a schedule. If project is delayed (e.g., at end of Week 7, 5 cycles completed but delayed), PM needs to take actions after each cycle: e.g., trim off some user stories and request team to deliver more story points per cycle.

#### 中文

**定义**：一种敏捷开发过程。可以说是当今使用最广泛的开发过程。由每日和定期的一小时会议驱动。

**关键概念**：
- **产品待办事项**：最终产品所需的功能列表、要删除的错误、设置和维护开发环境和用户站点的技术工作，以及项目要获得的知识
- **冲刺待办事项**：冲刺期间要完成的任务列表。每天更新一次
- **任务板**：每个任务及其完成阶段的视觉表示。通常包括故事、待办事项、进行中、需要验证和已完成项目的列
- **发布燃尽图**：跟踪项目进度。图表本身在每个冲刺后更新

**过程**：
- 通过使用场景/故事来确定由客户同意的下一次迭代（冲刺）要完成的最高优先级待办事项切片
- 与客户一起讨论当前冲刺的目标，确定要完成的功能的优先级并划分为详细任务
- 进行定期短规划和审查会议，讨论及时完成和未完成的任务，并相应地修订待办事项集
- 客户可以随时改变主意

**角色**：
- **Scrum Master**：团队的教练，帮助 Scrum 实践者达到最高绩效水平。此角色不向团队提供日常指导，也不向个人分配任务
- **产品负责人**：负责在 Scrum 开发期间确定待办事项的优先级
- **Scrum 开发团队**：整个团队

---

### User Story / 用户故事

#### English

**Format**: As a <role>, I want an <action>, so that I can achieve a <goal>.

- **Role**: What we can identify from Requirements Engineering
- **Action**: Should be tangible (actionable)
- **Goal**: Should be measurable and quantifiable

A user story usually has more information such as use cases, diagram sketch, user notes, data, reports from existing systems to clarify the context and scope of the user story.

**Example**: As a CityU Student, I want to download a testimonial for my student status by submitting a request in AIMS so that I can apply for my student visa extension through the HKSAR Immigration Department.

#### 中文

**格式**：作为 <角色>，我想要 <行动>，以便我可以实现 <目标>。

- **角色**：我们可以从需求工程中识别的内容
- **行动**：应该是具体的（可操作的）
- **目标**：应该是可衡量和可量化的

用户故事通常有更多信息，如用例、图表草图、用户注释、数据、来自现有系统的报告，以澄清用户故事的上下文和范围。

**示例**：作为城大学生，我想通过在 AIMS 中提交请求来下载我的学生身份证明，以便我可以通过香港特别行政区入境事务处申请学生签证延期。

---

### Story Point Estimation / 故事点估算

#### English

**Relative Story Point Estimation**: It is difficult to estimate whether bar A is long and how long bar A is. However, it would be easier to say that A is longer than B.

A story point is a value. Examples:
- Fibonacci sequence: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...
- T-shirt size: XXS, XS, S, M, L, XL, XXL

Pick one or more user stories as anchors. The whole team agreed on a story point for each such user story to indicate the number of expected efforts to implement the user stories, taking into account uncertainty and implementation complexity.

#### 中文

**相对故事点估算**：很难估计条 A 是否长以及条 A 有多长。然而，说 A 比 B 长会更容易。

故事点是一个值。示例：
- 斐波那契序列：1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...
- T 恤尺寸：XXS, XS, S, M, L, XL, XXL

选择一个或多个用户故事作为锚点。整个团队同意每个这样的用户故事的故事点，以指示实现用户故事的预期工作量，考虑不确定性和实现复杂性。

---

### Project Velocity / 项目速度

#### English

A user story is implemented in a cycle if it passes the cycle review (by users and product owner). An agile project is organized as a series of cycles (XP iterations or Scrum sprints). Each cycle implements a set of user stories with assigned story points. If a user story is too large to fit into a cycle, the user story should be broken down into multiple user stories.

The total story points delivered by the cycle are plotted. Project velocity is the slope over a consecutive series of cycles.

#### 中文

如果用户故事通过周期审查（由用户和产品负责人），则在周期中实现。敏捷项目被组织为一系列周期（XP 迭代或 Scrum 冲刺）。每个周期实现一组具有分配故事点的用户故事。如果用户故事太大而无法适应一个周期，则应将用户故事分解为多个用户故事。

周期交付的故事点总数被绘制出来。项目速度是连续一系列周期的斜率。

---

### Burndown Chart / 燃尽图

#### English

A burndown chart tracks the remaining story points over time. It shows:
- Actual progress: How many story points have been completed
- Planned progress: How many story points should have been completed
- Problems: The project cannot make progress gradually, or new user stories added to the project, or original estimated story points are underestimated

#### 中文

燃尽图跟踪随时间推移的剩余故事点。它显示：
- 实际进度：已完成多少故事点
- 计划进度：应该已完成多少故事点
- 问题：项目无法逐步取得进展，或向项目添加了新用户故事，或原始估算的故事点被低估

---

### Popular PM Elements / 流行的项目管理元素

#### English

- **Estimate the story point** for each user story. Allocate extra time for research on a user story with high uncertainty
- **Pick a set of user stories** into the next iteration in XP (equivalent to the next sprint in Scrum)
- **Within a cycle**, conduct (daily) standing meetings:
  - A super short meeting (15 mins in total)
  - Every team member reports: (1) what was done yesterday, (2) what will be done today, and (3) what blockers are encountered
- **Measure project velocity**
- **At the end of each cycle**, conduct a review (a demo to users about the deliverable achieved in the cycle) and a self-reflection on the cycle

#### 中文

- **估算每个用户故事的故事点**。为具有高不确定性的用户故事的研究分配额外时间
- **选择一组用户故事**进入 XP 的下一次迭代（相当于 Scrum 中的下一个冲刺）
- **在一个周期内**，进行（每日）站立会议：
  - 超短会议（总共 15 分钟）
  - 每个团队成员报告：（1）昨天做了什么，（2）今天要做什么，以及（3）遇到了什么阻碍
- **测量项目速度**
- **在每个周期结束时**，进行审查（向用户演示周期中实现的交付物）和对周期的自我反思

---

## Additional Detail / 补充要点

- 需求/设计/测试/部署/运维/配置/项目管理：每个活动需配套技术、交付物、工具，避免"只讲代码"视角
- 瀑布/V 型：阶段性验证目标明确，但需求/设计前置成本高、后期修复代价大
- 原型/增量：先可用后完善，持续获取需求反馈；可并行子系统或逐步扩展需求子集
- 螺旋：迭代式"目标-风险-开发-计划"循环，强调风险驱动和原型验证
- UP/RUP：多工种并行、分阶段多迭代；关注用例驱动、以架构为核心、迭代增量
- XP vs Scrum：XP 无 PM，更轻量；Scrum 有 PM（但比 XP 更不繁琐）和其他实践/活动/工作产品
- XP：小步快跑、结对编程、测试先行、持续集成、小版本发布、重构、隐喻/简单设计、40 小时周
- Scrum：产品待办→冲刺待办→每日站会→评审+回顾；燃尽图、任务板、角色（PO/SM/团队）
- Scrum 工件/会议：产品待办、冲刺待办、任务板、发布/冲刺燃尽图；计划会、每日站会、评审、回顾
- XP 实践细化：小版本、隐喻、简单设计、测试先行、重构、结对编程、集体代码所有权、持续集成、现场客户、编码规范、开放工作区、40 小时周
- 估算与速度：故事点锚定相对估算（斐波那契/T 恤尺码）；速度=每周期交付点数；燃尽图跟踪剩余点数
- CI/CD：持续集成（每次提交自动构建+自测）；持续交付/部署（小批量、自动部署，开发对发布负责）
- 流程改进趋势：并行阶段（技术开发与用户培训并行，每个并行轨道内开发与验证，更快前进、更早修复错误、降低成本）、向后迭代（从后期阶段反馈到早期阶段，改进早期阶段，避免不必要的返工或设计错误）
- 敏捷方法对比：10 种敏捷方法，轻量级程度不同；包含项目管理活动的敏捷方法（如 Scrum）；轻量级且包含 PM 的敏捷方法（如 Scrum）

