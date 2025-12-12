# Week 10 Knowledge Summary - Testing (Part 2: Delta Debugging) / Week 10 知识点总结 - 测试（下：Delta Debugging）

## 1. Delta Debugging Motivation / 1. 动机

#### English
Goal: minimize failure-inducing inputs (or code) while preserving the same failure, making debugging easier. Use cases: crashing webpage, failing UI event sequence, compiler crash, etc.

#### 中文
目标：在仍能复现同样失败的前提下最小化触发失败的输入（或代码），以便调试。用例：导致浏览器崩溃的网页、致错的 UI 事件序列、编译器崩溃等。

---

## 2. Core Idea / 2. 核心思想

#### English
Hypothesis-driven reduction: repeatedly cut input (often by halves or chunks); if reduced input still fails, keep reducing; otherwise revert. Iterate to smallest failure-inducing input.

#### 中文
基于假设的裁剪：反复剪掉输入（常对半或按块）；若仍触发失败则继续减，否则回退；迭代至最小的致错输入。

---

## 3. Examples / 3. 示例

#### English
- HTML page crash: remove large segments, keep those still crashing.
- gcc crash: remove program parts while keeping syntax valid; locate minimal snippet causing crash.
- Android app: shorten long UI event sequences while preserving crash.

#### 中文
- HTML 崩溃：删大段文本，保留仍能崩溃的部分。
- gcc 崩溃：删除程序片段并保持语法正确，定位最小致错代码。
- Android 应用：缩短长 UI 事件序列且仍触发崩溃。

---

## 4. Process Outline / 4. 流程概览

#### English
1) Start from a failure-inducing input.  
2) Partition input; test subsets.  
3) Keep subsets that still fail; discard those that pass.  
4) Recurse on failing subset until no smaller failing subset.  
Strategy: coarse-to-fine (half split, then random) to reduce test runs.

#### 中文
1) 从可致错输入开始。  
2) 划分输入并测试子集。  
3) 保留仍失败的子集，丢弃通过的子集。  
4) 在失败子集上递归，直到无法再缩小。  
策略：先粗后细（对半，再随机）以减少测试次数。

---

## 5. Outcome / 5. 效果

#### English
Produces a much smaller “failure-inducing input” that reproduces the bug, aiding root-cause analysis; can be applied to inputs, event sequences, or code fragments.

#### 中文
得到大幅缩小但仍能复现缺陷的“致错输入”，便于根因分析；可用于输入、事件序列或代码片段。

---

## Additional Detail / 补充要点

- 策略：先粗粒度对半裁剪，若仍失败则继续细分；若不失败则回退尝试另一半或随机子集
- 适用：文件/网页、事件序列、代码片段（需保持语法/格式合法）；可与模糊测试结合用于崩溃最小化
- 成功判据：保持同样的失败现象；最小化但可重现
- 注意：裁剪时需保证可执行/可编译；必要时手动修复语法
- 目标：减少调试搜索空间，加快定位根因

