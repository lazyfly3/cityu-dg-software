# Week 9 Knowledge Summary - Software Testing (Part 1) / Week 9 知识点总结 - 软件测试（上）

## Table of Contents / 目录

- [1. What is Program Testing? / 1. 什么是程序测试？](#1-what-is-program-testing--1-什么是程序测试)
- [2. Testing Procedure (4 Steps) / 2. 测试流程（四步）](#2-testing-procedure-4-steps--2-测试流程四步)
- [3. Automation & CI/CD / 3. 自动化与 CI/CD](#3-automation--cicd--3-自动化与-cicd)
- [4. Making Software Testable / 4. 提升可测性](#4-making-software-testable--4-提升可测性)
- [5. Fuzzing (Intro) / 5. 模糊测试（简介）](#5-fuzzing-intro--5-模糊测试简介)
- [Additional Detail / 补充要点](#additional-detail--补充要点)

---

## 1. What is Program Testing? / 1. 什么是程序测试？

#### English
Validation to find bugs or demonstrate the program working under scenarios (acceptance). Testing should be systematic, not ad-hoc “play around”.

#### 中文
测试是为了发现缺陷或在场景下证明程序可用（验收）。应系统化，而非随意尝试。

---

## 2. Testing Procedure (4 Steps) / 2. 测试流程（四步）

#### English
1) **Defining Test Objectives**: goals & test types (regression, acceptance, integration, security, clarify requirements by examples).  
2) **Test Design**: design cases/scripts or fuzzing profiles (e.g., JUnit).  
3) **Test Execution**: run scripts/CI.  
4) **Test Analysis**: identify failures/anomalies; use assertions/automation.

#### 中文
1) **确定测试目标**：目标与类型（回归、验收、集成、安全、示例澄清需求）。  
2) **测试设计**：设计用例/脚本或模糊测试配置（如 JUnit）。  
3) **测试执行**：运行脚本/CI。  
4) **结果分析**：识别失败/异常；用断言/自动化。

---

## 3. Automation & CI/CD / 3. 自动化与 CI/CD

#### English
- Continuous Integration: shared repo triggers automated build+tests on every commit; developers test locally first; staging mirrors production.  
- Continuous Delivery: small, independently deployable increments; auto-deploy after build/test; developers own deploy & get rapid failure notice.

#### 中文
- 持续集成：共享仓库，每次提交触发自动构建+测试；先本地测，再在与生产镜像的环境中测。  
- 持续交付：小而可独立部署的增量；构建测试后自动部署；开发者负责部署并快速获知故障。

---

## 4. Making Software Testable / 4. 提升可测性

#### English
Use stubs/mocks and dependency injection to isolate modules (e.g., replace ClassC with Cstub when testing A+B). Good design (constructors, interfaces) enables top-down tests without unavailable dependencies.

#### 中文
通过桩/Mock 和依赖注入隔离模块（如测试 A+B 时用 Cstub 替代 ClassC）。良好设计（构造注入、接口）使顶部向下测试在依赖未就绪时仍可进行。

---

## 5. Fuzzing (Intro) / 5. 模糊测试（简介）

#### English
Automatically generate many inputs (often random/mutated) to expose crashes or unexpected behavior; useful for robustness/security testing.

#### 中文
自动大量生成（随机/变异）输入以发现崩溃或异常行为，适用于鲁棒性/安全测试。

---

## Additional Detail / 补充要点

- 测试目标示例：澄清需求（示例驱动），验收/系统/集成/安全测试，回归保护，异常与边界路径
- 设计与执行：数据准备、桩/Mock/依赖注入隔离被测单元；持续集成中自动化运行
- 结果分析自动化：断言、自检、日志/崩溃收集，对比期望输出，减少人工判读
- CI/CD 实践：小步提交，每次提交构建+单测；预生产回归；快速失败反馈
- 可测性设计：可控性（可注入依赖/数据/时钟）、可观测性（日志/指标/事件）、减少耦合与非确定性
- 模糊测试要点：生成策略（随机/变异/字典）、覆盖引导、崩溃最小化（可结合 delta debugging）

