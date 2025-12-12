# Week 5 Knowledge Summary - Design Principles & Framework / Week 5 知识点总结 - 设计原则与框架

## Table of Contents / 目录

- [1. Program Structure & Modularity / 1. 程序结构与模块化](#1-program-structure--modularity--1-程序结构与模块化)
- [2. Software Architecture Basics / 2. 软件架构基础](#2-software-architecture-basics--2-软件架构基础)
- [3. Addressing Non-Functional Needs via Architecture / 3. 通过架构满足非功能需求](#3-addressing-non-functional-needs-via-architecture--3-通过架构满足非功能需求)
- [4. Patterns & Styles / 4. 模式与风格](#4-patterns--styles--4-模式与风格)
- [5. Design Refinement / 5. 设计细化](#5-design-refinement--5-设计细化)
- [6. Practice Guidelines / 6. 实践要点](#6-practice-guidelines--6-实践要点)
- [Additional Detail / 补充要点](#additional-detail--补充要点)
- [Architecture Illustration / 架构示例（排序系统）](#architecture-illustration--架构示例排序系统)

---

## 1. Program Structure & Modularity / 1. 程序结构与模块化

#### English
Program structure choices (where to place code) affect maintainability. Different decompositions (functional vs. OO) yield different maintenance impacts (Parnas). Architecture styles organize modules to address non-functional needs.

#### 中文
程序结构选择（代码放置方式）影响可维护性。不同分解方式（功能分解 vs 面向对象）导致不同维护影响（Parnas）。架构风格用于组织模块以满足非功能需求。

---

## 2. Software Architecture Basics / 2. 软件架构基础

#### English
- Architecture = fundamental concepts/properties embodied in elements, relationships, and design/evolution principles (ISO/IEC/IEEE 42010).
- Conceptual, context-dependent, focuses on important concerns.
- Modularity: recursively decompose modules; assign functional responsibilities, quality attributes, and constraints to submodules.

#### 中文
- 架构是元素、关系及设计/演化原则中体现的基础概念/属性（ISO/IEC/IEEE 42010）。
- 架构是概念性的、依赖上下文，关注重要问题。
- 模块化：递归分解模块；为子模块分配功能职责、质量属性和约束。

---

## 3. Addressing Non-Functional Needs via Architecture / 3. 通过架构满足非功能需求

#### English
Use styles/patterns to satisfy quality attributes. Example: fast startup → separate UI from state init, use MVC, initialize UI-related state first, support extensibility/compatibility.

**Architectural Driver**: A design requirement that will influence software architects' early design decisions. Note: Functional features (functionality) are software requirements, not sufficient to serve as architectural drivers. Architecture deals with non-functional requirements (solutions with different quality to achieve the same functionality).

**Example: Faster Payment System (FPS) vs Traditional Payment System**:
- Both have same features (fund transfer, settlement)
- Quality differences: Keeping (reliable, easy to use), Improvement (T+2 → real-time and always-on), Generalization (single platform → cross-platform), Extension (easy to add new features, single QR code standard)
- Even if QR code is banned as a feature, FPS still needs to address other quality attributes

**Quality Attributes**:
- Observable via execution: performance, security, availability, functionality, usability
- Not observable via execution: modifiability, portability, reusability, integrability, testability
- Quality affects different aspects of software projects

**Measurable/Testable**: Without knowing how far current system is from goal, designing to meet goal is impossible. Non-measurable: "see prices quickly". Measurable: "see latest and 4 historic prices of 20 cryptocurrencies in a second". If changed to "0.02 seconds", system requires more designs.

**Quality Attributes Tradeoff**: Many pairs of "-litiity" form tradeoffs:
- Improving privacy => lowering usability
- Higher performance => lower interoperability
- Higher modularity => longer time-to-market
- Higher reliability => lower performance
- Quicker time-to-market and lower cost => lower stability
- We should evaluate impact on other quality attributes when addressing one

#### 中文
用架构风格/模式满足质量属性。例如快速启动 → 分离 UI 与状态初始化，使用 MVC，优先初始化影响 UI 的状态，支持可扩展性/兼容性。

**架构驱动因素**：将影响软件架构师早期设计决策的设计需求。注意：功能特性（功能）是软件需求，不足以作为架构驱动因素。架构处理非功能需求（以不同质量实现相同功能的解决方案）。

**示例：快速支付系统（FPS）vs 传统支付系统**：
- 两者具有相同功能（资金转账、结算）
- 质量差异：保持（可靠、易用）、改进（T+2 → 实时且始终在线）、泛化（单平台 → 跨平台）、扩展（易于添加新功能，单一二维码标准）
- 即使二维码作为功能被禁止，FPS 仍需要解决其他质量属性

**质量属性**：
- 通过执行可观察：性能、安全性、可用性、功能性、易用性
- 通过执行不可观察：可修改性、可移植性、可重用性、可集成性、可测试性
- 质量影响软件项目的不同方面

**可测量/可测试**：不知道当前系统距离目标有多远，就无法设计以满足目标。不可测量："快速查看价格"。可测量："在一秒内查看 20 种加密货币的最新和 4 个历史价格"。如果改为"0.02 秒"，系统需要更多设计。

**质量属性权衡**：许多"-性"对形成权衡：
- 提高隐私 => 降低易用性
- 更高性能 => 更低互操作性
- 更高模块化 => 更长上市时间
- 更高可靠性 => 更低性能
- 更快上市时间和更低成本 => 更低稳定性
- 在解决一个质量属性时，应评估对其他质量属性的影响

---

## 4. Patterns & Styles / 4. 模式与风格

#### English
- **Architectural styles**: Description of component and connector types and runtime control/data transfer patterns. Examples:
  - **Layered**: OSI 7-layer model, three-tier architecture (presentation/business/data)
  - **Model-View-Controller (MVC)**: Model (core functionality/data), View (displays model), Controller (accepts input, updates model)
  - **Blackboard**: Blackboard (problem/partial solution), Knowledge sources (specialized modules with Condition()/Action()), Control (monitors changes, selects/executes KS)
  - **Client-Server**: Client requests, server responds; Master-Slave variant
  - **Event-bus/Publish-Subscribe**: Source publishes to channel, subscribers subscribe to channel, channels grouped into bus
  - **Pipe-and-Filter**: Data flows through series of transformations (filters) via pipes
  - **Microkernel**: Core system (barebone), other features as plugins (InternalServer, ExternalServer, Adapter)
- **Design patterns**: Observer, Visitor, etc., for recurring design problems.
- **Enterprise Integration Patterns**: Content-Based Router, Splitter, Aggregator, Scatter-Aggregator Pair, etc., for connecting components to address quality attributes.
- **Strategy**: Assign quality attributes to modules (e.g., usability to View, interoperability to Controller) and constraints (e.g., Controller interoperation must not affect View).

#### 中文
- **架构风格**：组件和连接器类型及运行时控制/数据传输模式的描述。示例：
  - **分层**：OSI 7 层模型，三层架构（表示/业务/数据）
  - **模型-视图-控制器（MVC）**：模型（核心功能/数据）、视图（显示模型）、控制器（接受输入，更新模型）
  - **黑板**：黑板（问题/部分解）、知识源（具有 Condition()/Action() 的专门模块）、控制（监控变化，选择/执行知识源）
  - **客户端-服务器**：客户端请求，服务器响应；主从变体
  - **事件总线/发布-订阅**：源发布到通道，订阅者订阅通道，通道分组到总线
  - **管道-过滤器**：数据通过管道流经一系列转换（过滤器）
  - **微内核**：核心系统（骨架），其他功能作为插件（内部服务器、外部服务器、适配器）
- **设计模式**：观察者、访问者等，用于复用设计解法。
- **企业集成模式**：基于内容的路由器、拆分器、聚合器、分散-聚合对等，用于连接组件以满足质量属性。
- **策略**：为模块分配质量属性（如 View 负责易用性，Controller 负责互操作），并设定约束（如 Controller 互操作不影响 View）。

---

## 5. Design Refinement / 5. 设计细化

#### English
Design requirements emerge gradually; refine architecture to meet them (e.g., security → auth in UI layer; availability → redundancy in data layer; correctness → testability or N-version programming).

#### 中文
设计需求逐步显现；逐步细化架构满足需求（如安全性→UI 层认证；可用性→数据层冗余；正确性→可测性或 N 版本编程）。

---

## 6. Practice Guidelines / 6. 实践要点

#### English
- Decompose by responsibilities and quality concerns, not just by functions.
- Separate concerns (e.g., UI vs. model) to localize change.
- Document assigned quality attributes/constraints; architecture is about “what & why”, not low-level “how”.

#### 中文
- 按职责与质量关注点分解，而非仅按功能。
- 分离关注点（如 UI 与模型）以局部化变更。
- 记录质量属性/约束；架构关注“做什么/为何”，非底层“如何实现”。

---

## Additional Detail / 补充要点

### Parnas's Insights / Parnas 提示

#### English

**Decomposition Impact**: Functional decomposition vs object-oriented decomposition have huge differences in the scope of change impact. Information hiding and integrity are key.

#### 中文

**分解影响**：功能分解 vs 面向对象分解对变更影响范围巨大。信息隐藏与完整性是关键。

---

### Architecture Focus / 架构关注点

#### English

**Conceptual Layer and Context**: Architecture focuses on important quality attributes, evolution principles, and key scenarios, not implementation details.

#### 中文

**概念层与上下文**：架构关注重要的质量属性、演化原则、关键场景，而非实现细节。

---

### MVC Example / MVC 示例

#### English

**Separation for Quality**: For fast startup, extensibility, and compatibility, separate UI, state, and control. UI-related models can be layered. Controllers must ensure interoperability does not break views.

#### 中文

**质量分离**：为快速启动/扩展/兼容，将 UI、状态、控制分离。UI 相关模型可分层，控制器需确保互操作不破坏视图。

---

### Progressive Design Requirements / 设计需求渐进显现

#### English

**Architectural Placement**: Design requirements emerge progressively (e.g., security via UI layer authentication, availability via data layer redundancy, correctness via testability or N-version programming). These need to be addressed at the architectural level.

#### 中文

**架构层落位**：设计需求渐进显现（如安全通过 UI 层认证、可用性通过数据层冗余、正确性通过可测性或多版本编程）。这些需在架构层落位。

---

### Architectural/Design Patterns / 架构/设计模式

#### English

**Reusable Solutions**: Layering, MVC, Observer, Visitor, etc. Used to reuse structural and interaction solutions.

#### 中文

**可复用方案**：分层、MVC、Observer、Visitor 等，用于复用结构和交互方案。

---

### Architecture Documentation / 架构文档

#### English

**What to Document**: Record module responsibilities, interfaces, quality attribute allocation and constraints, key scenarios/views (logical/development/process/deployment), not specific algorithms/code.

#### 中文

**文档内容**：记录模块职责、接口、质量属性分配与约束、关键场景/视图（逻辑/开发/进程/部署），而非具体算法/代码。

---

## Architecture Illustration / 架构示例（排序系统）

#### English
- Vague requirements: fast response, small memory footprint, persistent results → use MVC; choose runtime- and memory-efficient algorithms; minimize rendering; pick file/db per workload.
- More design needs: UI security → authentication; data availability → active redundancy; correctness → testability or N-version programming.
- Strategy: decompose by model/view/controller; assign quality attributes (usability to View, availability to data layer, interoperability to Controller), add constraints (interoperation must not break View).

#### 中文
- 模糊需求：快速响应、小内存、结果持久化 → 用 MVC；选择高效算法；减少渲染；按场景选择文件/数据库。
- 进一步需求：UI 安全→认证；数据可用性→主动冗余；正确性→可测性或 N 版本编程。
- 策略：按模型/视图/控制分解；分配质量属性（易用性给 View，可用性给数据层，互操作给 Controller），并施加约束（互操作不破坏视图）。

