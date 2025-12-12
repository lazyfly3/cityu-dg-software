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

#### 中文
用架构风格/模式满足质量属性。例如快速启动 → 分离 UI 与状态初始化，使用 MVC，优先初始化影响 UI 的状态，支持可扩展性/兼容性。

---

## 4. Patterns & Styles / 4. 模式与风格

#### English
- Architectural styles: layering (e.g., OSI), MVC, etc.
- Design patterns: observer, visitor, etc., for recurring design problems.
- Strategy: assign quality attributes to modules (e.g., usability to View, interoperability to Controller) and constraints (e.g., Controller interoperation must not affect View).

#### 中文
- 架构风格：分层（如 OSI）、MVC 等。
- 设计模式：观察者、访问者等，用于复用设计解法。
- 策略：为模块分配质量属性（如 View 负责易用性，Controller 负责互操作），并设定约束（如 Controller 互操作不影响 View）。

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

- Parnas 提示：功能分解 vs 面向对象分解对变更影响范围巨大；信息隐藏与完整性是关键
- 架构关注概念层与上下文：重要的质量属性、演化原则、关键场景，而非实现细节
- MVC 示例：为快速启动/扩展/兼容，将 UI、状态、控制分离；UI 相关模型可分层，控制器需确保互操作不破坏视图
- 设计需求渐进显现：安全（UI 层认证）、可用性（数据层冗余）、正确性（可测性或多版本编程）等需在架构层落位
- 架构/设计模式：分层、MVC、Observer、Visitor 等，用于复用结构和交互方案
- 架构文档：记录模块职责、接口、质量属性分配与约束、关键场景/视图（逻辑/开发/进程/部署），而非具体算法/代码

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

