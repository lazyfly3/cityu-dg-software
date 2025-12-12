# Week 11 Knowledge Summary - Software Maintenance & Testability Appendix / Week 11 知识点总结 - 软件维护与可测性附录

## Table of Contents / 目录

- [1. What is Maintenance / 1. 什么是维护](#1-what-is-maintenance--1-什么是维护)
- [2. Reasons / 2. 原因](#2-reasons--2-原因)
- [3. Maintenance Types / 3. 维护类型](#3-maintenance-types--3-维护类型)
- [4. Typical Procedure / 4. 常规流程](#4-typical-procedure--4-常规流程)
- [5. Challenges / 5. 挑战](#5-challenges--5-挑战)
- [6. Version Management / 6. 版本管理](#6-version-management--6-版本管理)
- [7. Appendix: Software Testability / 7. 附录：软件可测性](#7-appendix-software-testability--7-附录软件可测性)
- [Additional Detail / 补充要点](#additional-detail--补充要点)
- [Version Management Details / 版本管理细节](#version-management-details--版本管理细节)

---

## 1. What is Maintenance / 1. 什么是维护

#### English
Last lifecycle phase; can consume 40–70% of budget. Product view: modification after delivery (IEEE). Process view: activities when software undergoes modifications (ISO).

#### 中文
软件生命周期的最后阶段，可占 40–70% 预算。产品视角：交付后的修改（IEEE）；过程视角：软件发生修改时的活动（ISO）。

---

## 2. Reasons / 2. 原因

#### English
Correct errors, changing requirements, environment changes (HW/SW), efficiency improvements, optimization, removing unwanted effects, etc.

#### 中文
修正错误、需求变化、环境变化（软硬件）、提升效率、优化、消除不良影响等。

---

## 3. Maintenance Types / 3. 维护类型

#### English
Four major: Adaptive (env changes), Perfective (new/better “-ilities”), Corrective (bug fixes), Preventive (avoid future problems). Literature has finer mappings but these cover main intents.

#### 中文
四类：适应性（环境变化）、完善性（新增/强化“某某性”）、纠错性（修复功能/非功能缺陷）、预防性（预防未来问题）。文献有更细分，但核心意图如上。

---

## 4. Typical Procedure / 4. 常规流程

#### English
1) Determine objective/type  
2) Understand program to change  
3) Prepare change proposal  
4) Change review (like design review)  
5) Make changes  
6) Validate changes  
Often absorbed into Agile/CI as the process for a task.

#### 中文
1) 确定目标/类型  
2) 理解待改程序  
3) 准备变更方案  
4) 变更评审（类设计评审）  
5) 实施变更  
6) 验证变更  
常融入敏捷/CI 的日常任务流程。

---

## 5. Challenges / 5. 挑战

#### English
Maintain code written by others; limited understanding; poor structure; high turnover; missing original coder context; systems not designed for change.

#### 中文
维护他人代码、理解不足、结构欠佳、人员流动快、缺少原开发者上下文、系统未为变更而设计。

---

## 6. Version Management / 6. 版本管理

#### English
Track codelines (version sequence) and baselines (release definition). VMS features: version/release ID, change history, independent development (branch/merge), project support, storage management (diff/packing, git compression & dedup). Supports CI (automated build/test needs baseline retrievals).

#### 中文
跟踪代码线（版本序列）与基线（发布定义）。版本管理功能：版本/发布标识、变更历史、独立开发（分支/合并）、项目支持、存储管理（diff/打包，Git 压缩去重）。支撑 CI（自动构建/测试需基线提取）。

---

## 7. Appendix: Software Testability / 7. 附录：软件可测性

#### English
Testability = ease to expose faults via testing; relies on **controllability** (control inputs/exec) and **observability** (observe outputs/state).  
Tactics: specialized interfaces, record/playback, abstract data sources, sandboxing, executable assertions; limit complexity (reduce dependencies/cycles, limit non-determinism).

#### 中文
可测性=通过测试暴露缺陷的容易程度；依赖**可控性**（可控输入/执行）与**可观测性**（可观测输出/状态）。  
策略：专用接口、录制/回放、抽象数据源、沙箱、自检断言；限制复杂度（减少依赖/环、降低非确定性）。

---

## Additional Detail / 补充要点

### Maintenance Types Detail / 维护类型细分

#### English

**Categories**: Adaptive, perfective, corrective, preventive. Literature also includes re-engineering, retirement, environment migration, and other finer classifications.

#### 中文

**分类**：适应性/完善性/纠错性/预防性。文献中还有再工程、退役、环境迁移等更细分类。

---

### Maintenance Challenges / 维护难点

#### English

**Difficulties**: Understanding others' code, poor structure, lack of documentation and context, personnel turnover, system not designed for change.

#### 中文

**困难**：理解他人代码、结构不佳、缺文档与上下文、人员流动、系统未为变更设计。

---

### Version Management Key Points / 版本管理要点

#### English

**Features**: Branching/merging, baseline definition, change history, parallel development support, storage (diff/pack, Git compression/deduplication), CI retrieves baseline for automated build.

#### 中文

**特性**：分支/合并、基线定义、变更历史、并行开发支持、存储（diff/pack、Git 压缩去重）、CI 取基线自动构建。

---

### Maintenance Process Integration / 维护流程融入敏捷/CI

#### English

**Workflow**: Task → Understanding → Solution → Review → Implementation → Verification. Integrates with continuous integration/delivery pipeline.

#### 中文

**工作流**：任务 → 理解 → 方案 → 评审 → 实现 → 验证。与持续集成/交付流水线衔接。

---

### Testability Tactics Implementation / 可测性战术落地

#### English

**Strategies**: Dependency injection/interface isolation to improve controllability; logs/metrics/events/observability platforms to improve observability; reduce non-determinism (avoid unbounded concurrency/global sharing).

#### 中文

**策略**：依赖注入/接口隔离提升可控性；日志/指标/事件/可观察性平台提升可观测性；降低非确定性（避免无界并发/全局共享）。

---

## Version Management Details / 版本管理细节

#### English
- **Concepts**: codeline (version sequence), baseline (release definition = versions set), check-in/out, branching/merging.
- **VMS features**: version/release ID, change history, independent dev support, project support, storage mgmt (diffs or Git compression/packing/dedup).
- **VMS types**: Centralized vs. Distributed systems vs. cloud-based
- **CI needs**: Repeated baseline retrievals for automated build/test; branching strategies support parallel work.

**Storage Management**:
- **Traditional VMS (using Diff)**: Store deltas (differences) between versions, apply chain of operations to retrieve files
- **Git Storage Management**: 
  - Does NOT use deltas ("diffs")
  - **Compression and Decompression**: Runs standard compression algorithm to compress stored files and meta-information. Retrieving involves decompressing, no need to apply chain of operations
  - **Deduplication**: Does not store duplicate copies of files
  - **Packing**: Uses packfiles where several smaller files are combined into an indexed single file (for faster access)

#### 中文
- **概念**：代码线（版本序列）、基线（发布定义=版本集合）、检出/检入、分支/合并。
- **功能**：版本/发布标识、变更历史、独立开发支持、项目支持、存储管理（diff 或 Git 压缩/打包/去重）。
- **类型**：集中式 vs 分布式系统 vs 基于云
- **CI 需求**：反复获取基线做自动构建/测试；分支策略支撑并行开发。

**存储管理**：
- **传统 VMS（使用 Diff）**：存储版本之间的增量（差异），应用操作链来检索文件
- **Git 存储管理**：
  - 不使用增量（"diffs"）
  - **压缩和解压缩**：运行标准压缩算法压缩存储的文件和元信息。检索涉及解压缩，无需应用操作链
  - **去重**：不存储文件的重复副本
  - **打包**：使用 packfiles，将多个较小文件合并为单个索引文件（以加快访问）

