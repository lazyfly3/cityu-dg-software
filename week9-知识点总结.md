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

#### 通俗解释

测试就像体检：不是为了证明你健康，而是为了找出问题。软件测试就是系统地检查软件有没有bug，能不能正常工作。不能随便点点就完事，要有计划、有步骤地测试各种情况，包括正常情况、异常情况、边界情况。

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

#### 通俗解释

测试流程就像"检查产品质量"：**第一步确定目标**，要测什么？回归测试（改代码后测旧功能还正常不）、验收测试（用户验收）、集成测试（模块组合后测）、安全测试（测安全性）。**第二步设计测试**，写测试用例或测试脚本。**第三步执行测试**，运行测试，可以用CI自动运行。**第四步分析结果**，看哪些测试失败了，用断言自动判断对错。就像质检，先确定要检查什么，再设计检查方法，然后检查，最后分析结果。

---

## 3. Automation & CI/CD / 3. 自动化与 CI/CD

#### English
- Continuous Integration: shared repo triggers automated build+tests on every commit; developers test locally first; staging mirrors production.  
- Continuous Delivery: small, independently deployable increments; auto-deploy after build/test; developers own deploy & get rapid failure notice.

#### 中文
- 持续集成：共享仓库，每次提交触发自动构建+测试；先本地测，再在与生产镜像的环境中测。  
- 持续交付：小而可独立部署的增量；构建测试后自动部署；开发者负责部署并快速获知故障。

#### 通俗解释

**持续集成**就像每天交作业：每次写完代码就提交，系统自动检查有没有错误，有问题马上知道。就像写作文，每写完一段就检查，不要等全写完才发现前面有错。

**持续交付**就像小步快跑：每次只做一点功能，测试通过就发布，不要等所有功能做完再发布。就像盖房子，盖好一层就验收一层，不要等全盖完再验收。

---

## 4. Making Software Testable / 4. 提升可测性

#### English
Use stubs/mocks and dependency injection to isolate modules (e.g., replace ClassC with Cstub when testing A+B). Good design (constructors, interfaces) enables top-down tests without unavailable dependencies.

#### 中文
通过桩/Mock 和依赖注入隔离模块（如测试 A+B 时用 Cstub 替代 ClassC）。良好设计（构造注入、接口）使顶部向下测试在依赖未就绪时仍可进行。

#### 通俗解释

可测性就像测试电器：如果电器和电源绑死，很难测试。好的设计是电器有插头，可以插到测试电源上。代码也一样：如果模块A依赖模块B，但B还没做好，可以用一个假的B（Mock）来测试A。就像测试手机，不需要真的基站，用信号模拟器就行。这样每个模块可以独立测试，不互相影响。

---

## 5. Fuzzing (Intro) / 5. 模糊测试（简介）

#### English
**Definition**: Automated method to generate test input, execute tests, and expose security vulnerabilities (crashes). Process of finding vulnerabilities by repeatedly testing code with modified inputs. Becoming standard in commercial software development.

**How it works**: Mutate function mutates bytes of input at byte positions. Seed input (text/byte) → mutate → test → find bugs + code coverage.

**Example: Android Monkey**:
- Prerequisites: Java JDK, Android SDK, AVD
- Command: `adb shell monkey [options] <event-count>`
- Example: `adb shell monkey -p your.package.name -v 500`
- Emulates user interaction with app. Generates and injects gestures commands or system events based on predefined event frequency distribution into app's event input stream
- Watches for exceptional conditions (app crashing or throwing exception)
- Can vary "throttle" (time delays between events); by default throttle = 0 (no delay)
- Developers can specify distribution of kind of events to define a test profile
- [Crash (Yes), Code Coverage (No)]: Find crash via stress test? Yes. Manual testing has better code coverage than Monkey. Setting different time delays is insignificant to improve code coverage

**American Fuzzy Lop (AFL)**:
- Feedback-based: run, get info from previous runs in guiding selection of next input
- Mutation-based: change inputs to become new inputs
- Grey-box: need both input seeds and code coverage
- Basic strategy:
  1. Start with small set of input sample files as queue of inputs (test cases for user stories in Scrum can be seed files)
  2. Mutate "randomly" an input file from queue
  3. If mutated file reaches new or simpler path(s) (in log2 sense), add it to queue
- Ways to modify: Replace mutation operators (e.g., radamsa), make PerformanceScore adaptive, change to pure black-box or GUI fuzzer, use UIAutomator API for widget coverage
- Faster version: Google ossfuzzer built on top of AFL

**Sanitizers**: Many open-source sanitizers to detect different bugs:
- AddressSanitizer (ascan) for memory corruption bugs (e.g., buffer overflow)
- Thread Sanitizer (tscan) for thread concurrency bugs (e.g., data races)
- MemorySanitizer (mscan) for uninitialized reads bugs
- UndefinedBehaviorSanitizer (ubscan), Kernel Address Sanitizer (kascan)
- Some available for Android apps

**Useful for**: Robustness testing, security testing, finding crashes, code coverage.

#### 中文
**定义**：自动生成测试输入、执行测试并暴露安全漏洞（崩溃）的方法。通过反复用修改后的输入测试代码来发现漏洞的过程。正在成为商业软件开发的标准。

**工作原理**：变异函数在字节位置变异输入的字节。种子输入（文本/字节）→ 变异 → 测试 → 发现错误 + 代码覆盖率。

**示例：Android Monkey**：
- 前提条件：Java JDK、Android SDK、AVD
- 命令：`adb shell monkey [options] <事件数>`
- 示例：`adb shell monkey -p your.package.name -v 500`
- 模拟用户与应用的交互。根据预定义的事件频率分布生成并注入手势命令或系统事件到应用的事件输入流
- 监视异常条件（应用崩溃或抛出异常）
- 可以改变"节流"（事件之间的时间延迟）；默认节流 = 0（无延迟）
- 开发者可以指定事件类型的分布以定义测试配置文件
- [崩溃（是），代码覆盖率（否）]：通过压力测试发现崩溃？是。手动测试比 Monkey 有更好的代码覆盖率。设置不同的时间延迟对提高代码覆盖率影响不大

**American Fuzzy Lop (AFL)**：
- 基于反馈：运行，从之前的运行中获取信息以指导下一个输入的选择
- 基于变异：改变输入成为新输入
- 灰盒：需要输入种子和代码覆盖率
- 基本策略：
  1. 从小的输入样本文件集开始作为输入队列（Scrum 中用户故事的测试用例可以是种子文件）
  2. 从队列中"随机"变异输入文件
  3. 如果变异文件到达新的或更简单的路径（以 log2 意义），将其添加到队列
- 修改方法：替换变异操作符（如 radamsa），使 PerformanceScore 自适应，改为纯黑盒或 GUI 模糊器，使用 UIAutomator API 进行小部件覆盖率
- 更快版本：Google ossfuzzer 基于 AFL 构建

**Sanitizers**：许多开源 sanitizer 用于检测不同类型的错误：
- AddressSanitizer (ascan) 用于内存损坏错误（如缓冲区溢出）
- Thread Sanitizer (tscan) 用于线程并发错误（如数据竞争）
- MemorySanitizer (mscan) 用于未初始化读取错误
- UndefinedBehaviorSanitizer (ubscan)、Kernel Address Sanitizer (kascan)
- 一些可用于 Android 应用

**适用于**：鲁棒性测试、安全测试、发现崩溃、代码覆盖率。

#### 通俗解释

模糊测试就像"乱按键盘"找bug：自动生成大量随机或变异的输入，看程序会不会崩溃。就像测试手机，随机乱点屏幕，看会不会死机。Android Monkey就是这样的工具，模拟用户乱点、乱滑，找出问题。AFL（American Fuzzy Lop）更智能，会根据之前的测试结果调整输入，找到更多bug。Sanitizers是检测工具，就像体检设备，能检测出内存错误、线程问题等各种bug。

---

## Additional Detail / 补充要点

### Test Objectives Examples / 测试目标示例

#### English

**Purposes**: Clarify requirements (example-driven), acceptance/system/integration/security testing, regression protection, exception and boundary paths.

#### 中文

**目的**：澄清需求（示例驱动），验收/系统/集成/安全测试，回归保护，异常与边界路径。

---

### Test Design and Execution / 设计与执行

#### English

**Isolation**: Data preparation, stubs/mocks/dependency injection to isolate units under test. Automated execution in continuous integration.

#### 中文

**隔离**：数据准备、桩/Mock/依赖注入隔离被测单元。持续集成中自动化运行。

---

### Automated Result Analysis / 结果分析自动化

#### English

**Methods**: Assertions, self-checks, log/crash collection, compare expected output, reduce manual interpretation.

#### 中文

**方法**：断言、自检、日志/崩溃收集，对比期望输出，减少人工判读。

---

### CI/CD Practices / CI/CD 实践

#### English

**Workflow**: Small commits, build + unit test on every commit; pre-production regression; rapid failure feedback.

#### 中文

**工作流**：小步提交，每次提交构建 + 单测；预生产回归；快速失败反馈。

---

### Testability Design / 可测性设计

#### English

**Key Aspects**: Controllability (injectable dependencies/data/clocks), observability (logs/metrics/events), reduce coupling and non-determinism.

#### 中文

**关键方面**：可控性（可注入依赖/数据/时钟）、可观测性（日志/指标/事件）、减少耦合与非确定性。

---

### Fuzzing Key Points / 模糊测试要点

#### English

**Strategies**: Generation strategies (random/mutation/dictionary), coverage-guided, crash minimization (can combine with delta debugging).

#### 中文

**策略**：生成策略（随机/变异/字典）、覆盖引导、崩溃最小化（可结合 delta debugging）。

### Scientific Debugging / 科学调试

#### English

**Distinguishing Failures from Bugs**:
- **Failure**: An incorrect output of a program. E.g., in JUnit, we may use AssertEqual() to determine whether test case fails.
- **Bug (or fault)**: An incorrect implementation (coding) that causes program to produce failures. Example: Correct `int fc(x) = { return x*x + 3*x + 2; }`, Buggy `int fb(x) = { return x*x + 2*x + 3; }`. fb(0) = 3 ≠ 2 = fc(0). The sentence x*x + 2*x + 3 contains a bug.

**How to Debug**: Three steps in a row: (1) Locate Bug, (2) Repair Program, (3) Retest Program.

**A Model of Program Execution**:
- A program P is a set of statements and a set of variables. Each variable keeps a value. Each statement may read/write values. Outputting means writing to system-specific variable.
- A **program state** is a set of key-value tuples, each containing a variable v as key and value of v.
- An **execution trace** is a sequence of executed instructions representing execution of a test case. Same statement may occur multiple times (1st occurrence, 2nd occurrence, etc.). By walking through statements in trace σ from start to end, program state is updated.

**Failure and Bug**:
- **Failure**: An incorrect program output of an execution trace σ of program P. We mark statements that produce failure on trace σ.
- **Run**: A failing run refers to execution trace marked with failure(s). A passed run refers to execution trace not marked with any failure.
- **Bug**: A mistake appearing in program P. In execution trace σ, a bug is marked as incorrect single statement or incorrect non-empty subsequence of statements. Positions of bug can be marked in trace σ. Some traces do not contain any bug.

**Propagation from Bug to Failure**:
- To observe failure from a run, bug should propagate its error along trace from buggy statement (at position σ[b]) to statement outputting failure (at position σ[f]).
- Buggy statement σ[b] transforms correct program state before executing into **infected program state** Eb.
- If there is difference between expected program state and infected program state, infected state incurs an **error**.
- From position of infected state Eb, subsequent instructions (at σ[b+1], σ[b+2], ..., σ[f]) transform Eb into sequence of infected states E1, E2, ..., Ef. When statement at σ[f] is executed, error in infected state Ef is observed as failure of trace σ.

**Example**: In `int foo(int a, int b)`, if `POINT pA = null;` (bug at line 3), then `POINT pB = pA;` (line 6) propagates infection, and `pB[3] = 0;` (line 9) causes failure. Program states: Start (pA: N\A, pB: N\A) → Line 3 (pA: null, pB: N\A) [infect] → Line 6 (pA: null, pB: null) [propagate] → Line 9 (pA: null, pB: null) [failure].

**After Fuzzing Finds Crashes**: Fuzzing finds crashes or ANR (App Not Responding), so-called code vulnerabilities. Developers may start debugging based on failing test cases (e.g., with stack traces). If input is long (e.g., crash computer game by fuzzing), debugging will be tedious and slow. More desirable to find smaller input to trigger same bug before debugging. This is where Delta Debugging helps (see Week 10).

#### 中文

**区分失败与错误**：
- **失败**：程序的错误输出。例如，在 JUnit 中，我们可以使用 AssertEqual() 来确定测试用例是否失败。
- **错误（或故障）**：导致程序产生失败的错误实现（编码）。示例：正确 `int fc(x) = { return x*x + 3*x + 2; }`，错误 `int fb(x) = { return x*x + 2*x + 3; }`。fb(0) = 3 ≠ 2 = fc(0)。句子 x*x + 2*x + 3 包含错误。

**如何调试**：三个连续步骤：(1) 定位错误，(2) 修复程序，(3) 重新测试程序。

**程序执行模型**：
- 程序 P 是一组语句和一组变量。每个变量保持一个值。每个语句可以读取/写入值。输出意味着写入系统特定变量。
- **程序状态**是一组键值元组，每个包含变量 v 作为键和 v 的值。
- **执行跟踪**是表示测试用例执行的已执行指令序列。同一语句可能出现多次（第 1 次出现、第 2 次出现等）。通过从开始到结束遍历跟踪 σ 中的语句，程序状态被更新。

**失败和错误**：
- **失败**：程序 P 的执行跟踪 σ 的错误程序输出。我们在跟踪 σ 上标记产生失败的语句。
- **运行**：失败运行指标记有失败的执行跟踪。通过运行指未标记任何失败的执行跟踪。
- **错误**：出现在程序 P 中的错误。在执行跟踪 σ 中，错误被标记为错误的单个语句或错误的非空语句子序列。错误的位置可以在跟踪 σ 中标记。某些跟踪不包含任何错误。

**从错误到失败的传播**：
- 要从运行中观察失败，错误应沿着跟踪从错误语句（位置 σ[b]）传播到输出失败的语句（位置 σ[f]）。
- 错误语句 σ[b] 在执行前将正确的程序状态转换为**感染的程序状态** Eb。
- 如果预期程序状态和感染程序状态之间存在差异，感染状态会产生**错误**。
- 从感染状态 Eb 的位置，后续指令（在 σ[b+1], σ[b+2], ..., σ[f]）将 Eb 转换为感染状态序列 E1, E2, ..., Ef。当执行位置 σ[f] 的语句时，感染状态 Ef 中的错误被观察为跟踪 σ 的失败。

**示例**：在 `int foo(int a, int b)` 中，如果 `POINT pA = null;`（第 3 行的错误），则 `POINT pB = pA;`（第 6 行）传播感染，`pB[3] = 0;`（第 9 行）导致失败。程序状态：开始（pA: N\A, pB: N\A）→ 第 3 行（pA: null, pB: N\A）[感染] → 第 6 行（pA: null, pB: null）[传播] → 第 9 行（pA: null, pB: null）[失败]。

#### 通俗解释

科学调试就像医生看病：**失败**是症状（比如发烧），**错误**是病因（比如感冒病毒）。调试三步：定位错误（找到病因）、修复程序（开药）、重新测试（看好了没）。

**错误传播**就像病毒传播：第3行把pA设为null（错误产生），第6行把pA传给pB（错误传播），第9行用pB访问数组（错误爆发，程序崩溃）。就像一个人感冒（错误），传给另一个人（传播），最后大家都病了（失败）。调试就是要找到最初的那个错误点（第3行），而不是只看最后崩溃的地方（第9行）。

**模糊测试发现崩溃后**：模糊测试发现崩溃或 ANR（应用无响应），即所谓的代码漏洞。开发者可能基于失败的测试用例开始调试（例如，使用堆栈跟踪）。如果输入很长（例如，通过模糊测试使计算机游戏崩溃），调试将繁琐且缓慢。更可取的是在调试之前找到更小的输入来触发相同的错误。这就是 Delta Debugging 的用武之地（见 Week 10）。

### Testing in Uncertain User Needs / 不确定需求下的测试

#### English
**Characteristics**:
- Requirements often not defined in detail in Agile; developers need business understanding and domain experience
- **Requirement testing** (via system testing): Demonstrate vague/incomplete requirements rather than finding bugs
- **Test coverage**: Knowing all scenarios is infeasible; focus on features with larger user bases; judge by developers on sufficiency
- **Test automation**: Do NOT replace manual testing; good way to show users code is testable, educate users to raise checkable requirements, support feature approval in testable way

**Omission Faults** (~50% of bugs):
- Bugs where something should be returned/checked but isn't
- **Strategies to spot**: Code review, follow company guidelines/checklist, ask users/clients about return values, check against user intention (not just code validation), reference similar code, use automated/static analysis tools, ask LLM

**Pair Programming** (for uncertain needs):
- Two developers write same code simultaneously (not sequential review, not independent parts)
- One writes while other reviews each line; roles may switch
- Helps in brainstorming low-probability scenarios, creating test cases, getting consensus

#### 中文
**特点**：
- 敏捷中需求常不详细；开发者需要业务理解和领域经验
- **需求测试**（通过系统测试）：演示模糊/不完整需求而非找错误
- **测试覆盖率**：了解所有场景不可行；关注用户基数更大的功能；由开发者判断充分性
- **测试自动化**：不替代手动测试；向用户展示代码可测的好方法，教育用户提出可检查需求，以可测方式支持功能批准

**遗漏错误**（约 50% 的错误）：
- 应返回/检查但未返回/检查的错误
- **发现策略**：代码审查、遵循公司指南/检查清单、询问用户/客户返回值、对照用户意图（不仅验证代码）、参考类似代码、使用自动化/静态分析工具、询问 LLM

**结对编程**（用于不确定需求）：
- 两名开发者同时编写相同代码（非顺序审查，非独立部分）
- 一人编写时另一人逐行审查；角色可切换
- 有助于头脑风暴低概率场景、创建测试用例、达成共识

#### 通俗解释

不确定需求下的测试就像"需求不清楚怎么测"：**需求常不详细**，敏捷开发中需求可能很模糊，开发者要有业务理解。**需求测试**，通过系统测试来演示需求，而不是找bug，让用户看"这是你要的吗"。**测试覆盖率**，不可能测所有场景，关注用户多的功能，由开发者判断够不够。**测试自动化**，不替代手动测试，而是向用户展示代码可测，教育用户提出可检查的需求。

**遗漏错误**（约50%的bug）：应该返回/检查但没返回/检查。发现策略：代码审查、遵循检查清单、问用户返回值、对照用户意图、参考类似代码、用工具、问AI。

**结对编程**：两个人一起写代码，一个人写，一个人看，随时讨论。有助于想各种场景、写测试用例、达成共识。就像两个人一起做作业，不容易漏。

