# Week 10 Knowledge Summary - Testing (Part 2: Delta Debugging) / Week 10 知识点总结 - 测试（下：Delta Debugging）

## Table of Contents / 目录

- [1. Delta Debugging Motivation / 1. 动机](#1-delta-debugging-motivation--1-动机)
- [2. Core Idea / 2. 核心思想](#2-core-idea--2-核心思想)
- [3. Examples / 3. 示例](#3-examples--3-示例)
- [4. Process Outline / 4. 流程概览](#4-process-outline--4-流程概览)
- [5. Outcome / 5. 效果](#5-outcome--5-效果)
- [Additional Detail / 补充要点](#additional-detail--补充要点)

---

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

### Delta Debugging Strategy / Delta Debugging 策略

#### English

**Process**: Start with coarse-grained binary reduction. If still fails, continue subdividing. If doesn't fail, backtrack to try the other half or random subset.

#### 中文

**过程**：先粗粒度对半裁剪，若仍失败则继续细分。若不失败则回退尝试另一半或随机子集。

---

### Delta Debugging Applicability / Delta Debugging 适用性

#### English

**Use Cases**: Files/web pages, event sequences, code snippets (must maintain syntax/format validity). Can combine with fuzzing for crash minimization.

#### 中文

**用例**：文件/网页、事件序列、代码片段（需保持语法/格式合法）。可与模糊测试结合用于崩溃最小化。

---

### Success Criteria / 成功判据

#### English

**Requirements**: Maintain the same failure phenomenon; minimized but reproducible.

#### 中文

**要求**：保持同样的失败现象；最小化但可重现。

---

### Delta Debugging Considerations / Delta Debugging 注意事项

#### English

**Constraints**: When reducing, must ensure executability/compilability. Manually fix syntax if necessary.

#### 中文

**约束**：裁剪时需保证可执行/可编译。必要时手动修复语法。

---

### Delta Debugging Goal / Delta Debugging 目标

#### English

**Purpose**: Reduce debugging search space, speed up root cause localization.

#### 中文

**目的**：减少调试搜索空间，加快定位根因。

---

## 6. Other Testing Topics / 6. 其他测试主题

### Concurrency Testing / 并发测试

#### English

**Problem**: Multi-threaded/multi-process programs are non-deterministic. Running the same test case multiple times may give different outputs (e.g., data race).

**Strategies**:
1. **Strategy 1**: Run same test case many times without controlling thread coordination - Ineffective, but better than none
2. **Strategy 2**: Run test cases multiple times with a controller to control when threads execute relative to each other
   - Use calfuzzer to analyze each execution (slower)
   - Apply threadsanitizer in routine regression testing
   - Use Intel Pin or IBM ASM for binary instrumentation
   - Can check individual executions faster, suppress false positives, but limited ability, false negatives

#### 中文

**问题**：多线程/多进程程序是非确定性的。多次运行相同测试用例可能产生不同输出（如数据竞争）。

**策略**：
1. **策略 1**：多次运行相同测试用例而不控制线程协调 - 无效，但比没有好
2. **策略 2**：使用控制器多次运行测试用例，控制线程相对执行时间
   - 使用 calfuzzer 分析每次执行（较慢）
   - 在常规回归测试中应用 threadsanitizer
   - 使用 Intel Pin 或 IBM ASM 进行二进制插桩
   - 可以更快检查单个执行，抑制误报，但能力有限，有漏报

---

### Static Analysis / 静态分析

#### English

**Definition**: Inspect code without running it.

**Tools**: Many modern IDEs incorporate static analysis to spot potential concurrency issues (e.g., Visual Studio, Coverity - free cloud-based scanner for open-source projects).

**Characteristics**: 
- Can check whole codebase, applicable to check Library/Framework
- Slow, non-scalable, many false positives
- Routine task in large projects
- Uses extensive mathematics (not introduced in detail)

**Examples**: FindBugs for Java, pylint for Python, safety for checking requirement.txt

#### 中文

**定义**：在不运行代码的情况下检查代码。

**工具**：许多现代 IDE 集成了静态分析以发现潜在的并发问题（如 Visual Studio、Coverity - 开源项目的免费云扫描器）。

**特点**：
- 可以检查整个代码库，适用于检查库/框架
- 慢、不可扩展、许多误报
- 大型项目中的常规任务
- 使用广泛的数学（未详细介绍）

**示例**：Java 的 FindBugs、Python 的 pylint、检查 requirement.txt 的 safety

---

### Automated Test Case Generator / 自动化测试用例生成器

#### English

**Goal**: Produce useful test cases (but without proper check on test outcomes).

**Example**: Evosuite (https://www.evosuite.org/) - Still immature for industry use in general.

**Idea**: 
- Given a set of JUnit test methods, each containing a sequence of statements
- Like fuzzing, apply mutation operators to modify statements (exchange across test methods, delete, add, change parameter value) to generate new JUnit test methods
- No idea on whether a test method detects a program failure

#### 中文

**目标**：生成有用的测试用例（但不对测试结果进行适当检查）。

**示例**：Evosuite (https://www.evosuite.org/) - 总体上对工业使用仍不成熟。

**思想**：
- 给定一组 JUnit 测试方法，每个包含语句序列
- 像模糊测试一样，应用变异操作符修改语句（跨测试方法交换、删除、添加、更改参数值）以生成新的 JUnit 测试方法
- 不知道测试方法是否检测到程序失败

---

### Test Oracle Problem / 测试预言问题

#### English

**Problem**: Fuzzing and automated test generators cannot point out functional failures. Sometimes we cannot determine correctness (e.g., how do you know a Deep Learning engine produces correct classification?).

**Solution**: We need to formulate either a correctness criterion or an error condition for test cases to know whether the program actually passes. This is called the **test oracle problem**.

**Types of Test Oracles**:
1. **Generic Test Oracle [automated]**: Errors we know are errors (crash, deadlock) - general, applicable to all programs - widely used in automated testing tools
2. **Pattern-based Test Oracle [automated]**: Code patterns that tend to be erroneous, formulated heuristically - used by static analysis tools (FindBugs, pylint, safety)
3. **Reference Test Oracle [automated]**: For programs with clear specialized purposes, predefined benchmark test suites (e.g., browser compatibility tests)
4. **Regression Test Oracle [automated]**: For versioned programs, use output of one version to check another version on the same test case
5. **Program-Specific Test Oracle [manual]**: Developers write their own assertion statements (e.g., assertEqual() in JUnit) or validate outputs manually - no better option yet - use "common sense" about application domain
6. **Metamorphic Testing [automated]**: Test oracle across multiple executions - compare multiple test results and expectations on relations between results

#### 中文

**问题**：模糊测试和自动化测试生成器无法指出功能失败。有时我们无法确定正确性（例如，如何知道深度学习引擎产生正确的分类？）。

**解决方案**：我们需要为测试用例制定正确性标准或错误条件，以了解程序是否实际通过。这称为**测试预言问题**。

**测试预言类型**：
1. **通用测试预言[自动化]**：我们知道是错误（崩溃、死锁）的错误 - 通用，适用于所有程序 - 广泛用于自动化测试工具
2. **基于模式的测试预言[自动化]**：往往错误的代码模式，启发式制定 - 由静态分析工具使用（FindBugs、pylint、safety）
3. **参考测试预言[自动化]**：对于具有明确专门用途的程序，预定义的基准测试套件（如浏览器兼容性测试）
4. **回归测试预言[自动化]**：对于版本化程序，使用一个版本的输出来检查另一个版本在同一测试用例上
5. **程序特定测试预言[手动]**：开发者编写自己的断言语句（如 JUnit 中的 assertEqual()）或手动验证输出 - 目前没有更好的选择 - 使用应用领域的"常识"
6. **蜕变测试[自动化]**：跨多次执行的测试预言 - 比较多次测试结果和对结果之间关系的期望

---

### Metamorphic Testing / 蜕变测试

#### English

**Definition**: An expected relation over multiple test inputs and test outputs to be held. Such an expected relation is called a **metamorphic relation**.

**Example (Shortest Path)**:
- Source test case: P(G1, x, y) outputs L1
- Follow-up test case: Delete nodes not in L1 from G1 to construct G2, P(G2, x, y) outputs L2
- Oracle: Expectation L1 = L2. If violated, at least one test case failed.

**Example (Compiler)**:
- Compile S1 to B1, run B1(t)
- Remove statements in S1 that t doesn't pass through to construct S2, compile to B2
- Expectation: B1(t) and B2(t) produce same output
- Thousands of bugs detected in gcc compiler using this

**Application**: 
- Experimentally used in testing Autonomous Driving Systems (MR: car should behave similarly under variations of same input, e.g., same scene under different lighting)
- Used in startups
- Often based on "Common Sense in the application domain" (e.g., spending less means saving more for fixed income; ship slower but cheaper than flight; buying more units costs more)

**Combination**: Fuzzing + Metamorphic Testing - Fuzzing generates source test case, metamorphic testing follows up

#### 中文

**定义**：对多个测试输入和测试输出应保持的期望关系。这种期望关系称为**蜕变关系**。

**示例（最短路径）**：
- 源测试用例：P(G1, x, y) 输出 L1
- 后续测试用例：从 G1 中删除不在 L1 中的节点以构造 G2，P(G2, x, y) 输出 L2
- 预言：期望 L1 = L2。如果违反，至少一个测试用例失败。

**示例（编译器）**：
- 编译 S1 为 B1，运行 B1(t)
- 从 S1 中删除 t 不经过的语句以构造 S2，编译为 B2
- 期望：B1(t) 和 B2(t) 产生相同输出
- 使用此方法在 gcc 编译器中检测到数千个错误

**应用**：
- 实验性用于测试自动驾驶系统（MR：汽车在相同输入的变化下应表现相似，例如不同光照条件下的相同场景）
- 在初创公司中使用
- 通常基于"应用领域的常识"（例如，固定收入下花费更少意味着节省更多；船运比飞行慢但便宜；购买更多单位成本更高）

**组合**：模糊测试 + 蜕变测试 - 模糊测试生成源测试用例，蜕变测试跟进

