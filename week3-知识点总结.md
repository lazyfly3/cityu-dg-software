# Week 3 Knowledge Summary - Modern Code Review / Week 3 知识点总结 - 现代代码审查

## 1. What is Code Review? / 1. 什么是代码审查？

### Definition / 定义

#### English

Code Review is performing human inspection on the source code by developers other than the author of the code. It is a well-established software engineering practice that aims at maintaining and promoting source code quality, as well as sustaining development community by means of knowledge transfer of design and implementation solutions applied by others.

#### 中文

代码审查是由代码作者以外的开发者对源代码进行人工检查。这是一项成熟的软件工程实践，旨在维护和提升源代码质量，以及通过知识转移他人应用的设计和实现解决方案来维持开发社区。

---

### Purposes of Code Review / 代码审查的目的

#### English

Apart from finding bugs, code review has many other purposes:
- Code improvement
- Alternative solution
- Knowledge transfer
- Team building
- And so on

#### 中文

除了发现错误，代码审查还有许多其他目的：
- 代码改进
- 替代解决方案
- 知识转移
- 团队建设
- 等等

---

## 2. Different Levels of Formality / 2. 不同形式的正式程度

### Code Walkthrough / 代码走查

#### English

**Definition**: An informal meeting where the programmer leads the review team through his/her code, and the reviewers try to identify faults.

**Characteristics**:
- More effective if the programmer and reviewer are not the same person
- Sometimes, integrate with Pair Programming
- Similar to testing in effectiveness for finding bugs
- But code walkthrough requires more human effort. Thus, less effective

**Recent Development**: The remote collaboration raised from the needs of "work from home" make code walkthrough by visually impaired developers to join code walkthrough remotely.

#### 中文

**定义**：程序员引导审查团队查看其代码的非正式会议，审查者试图识别错误。

**特点**：
- 如果程序员和审查者不是同一个人，则更有效
- 有时与结对编程集成
- 在发现错误方面与测试类似
- 但代码走查需要更多的人力。因此，效果较差

**最新发展**：由于"在家工作"的需求而产生的远程协作使视障开发者可以远程参与代码走查。

---

### Code Inspection / 代码检查

#### English

**Definition**: A highly-structured formal process of review. Sometimes called as static testing in companies. Effective to find bugs and spot further process improvement. Decreasingly popular.

**Main Ideas**:
- **Pre-meeting**: Authors educate reviewers, and reviewers read/question the code from a testing angle
- **In-meeting**: Walk through the code (by code author) with reviewers and check against checklists. Answer questions and resolve ambiguity. Each reviewer has a predefined role assigned pre-meeting (e.g., a focal area to check). Reviewers "execute" the code in their heads
- **Post-meeting**: Authors follow up and correct code. The moderator of the meeting verifies the required corrective actions taken properly

**Characteristics**: Formal, synchronous, check code, tool support is secondary, heavy-weighted

**Things to check**:
- Efficiency of algorithm
- Logics and correctness of code (e.g., control-flow and data-flow, I/O format and order, parameters and return value types and order etc)
- Comments and consistency with code

#### 中文

**定义**：高度结构化的正式审查过程。有时在公司中称为静态测试。有效发现错误并发现进一步的过程改进。越来越不受欢迎。

**主要思想**：
- **会前**：作者教育审查者，审查者从测试角度阅读/质疑代码
- **会中**：与审查者一起走查代码（由代码作者），并根据检查清单进行检查。回答问题并解决歧义。每个审查者在会前分配了预定义的角色（例如，要检查的重点领域）。审查者在脑海中"执行"代码
- **会后**：作者跟进并纠正代码。会议主持人验证已正确采取所需的纠正措施

**特点**：正式、同步、检查代码、工具支持是次要的、重量级

**要检查的事项**：
- 算法的效率
- 代码的逻辑和正确性（例如，控制流和数据流、I/O 格式和顺序、参数和返回值类型和顺序等）
- 注释和与代码的一致性

---

### Modern Code Review (MCR) / 现代代码审查 (MCR)

#### English

**Definition**: MCR is a lightweight and tool-based code review of code change (not the whole piece of code!). It is the norm for many software development projects.

**Characteristics**:
- Informal
- Tool-based logistics
- Asynchronous
- Focused on reviewing code changes
- Lighter weight than code inspection

**Main Ideas**:
- Author A makes a patch P on a code block C to address some problems and sends the patch P via e-channel (e.g., email, WhatsApp, WeChat, or GitHub tool) to a set of reviewers R
- Each reviewer R evaluates P: either deems P good or rejects P
- Author A commits P; post-commit reviewer by other Rs possible
- Authors and reviewers exchange ideas, find bugs, and discuss alternative solutions to better design the structure of a submitted code change

#### 中文

**定义**：MCR 是对代码变更（不是整段代码！）的轻量级、基于工具的代码审查。它是许多软件开发项目的规范。

**特点**：
- 非正式
- 基于工具的后勤
- 异步
- 专注于审查代码变更
- 比代码检查更轻量

**主要思想**：
- 作者 A 在代码块 C 上制作补丁 P 以解决某些问题，并通过电子渠道（例如，电子邮件、WhatsApp、微信或 GitHub 工具）将补丁 P 发送给一组审查者 R
- 每个审查者 R 评估 P：要么认为 P 好，要么拒绝 P
- 作者 A 提交 P；其他 R 可能进行提交后审查
- 作者和审查者交换想法，发现错误，并讨论替代解决方案，以更好地设计提交的代码变更的结构

---

## 3. Characteristics of Modern Code Review / 3. 现代代码审查的特点

### Informal / 非正式

#### English

Ad hoc group of reviewers without predefined roles, and the review process does not follow a formal procedure.

#### 中文

没有预定义角色的临时审查者组，审查过程不遵循正式程序。

---

### Tool-based Logistics / 基于工具的后勤

#### English

- Email, WhatsApp, WeChat are popular
- Open-source tools: GitHub, Gerrit (for Git), ReviewBoard, Phabricator

#### 中文

- 电子邮件、WhatsApp、微信很流行
- 开源工具：GitHub、Gerrit（用于 Git）、ReviewBoard、Phabricator

---

### Asynchronous / 异步

#### English

Authors and reviewers need not engage in the same task simultaneously (but not extensively delayed).

#### 中文

作者和审查者不需要同时参与同一任务（但不会过度延迟）。

---

### Focus on Code Change / 专注于代码变更

#### English

Focus the review on the patch (code change, the delta), not the whole piece of code.

#### 中文

将审查重点放在补丁（代码变更、增量）上，而不是整段代码。

---

## 4. Purposes of Reviews/Comments/Posts / 4. 审查/评论/帖子的目的

#### English

**4 Major Areas**:
1. **Finding Problems**: Finding bugs, identifying code smells, detecting security issues
2. **Improving Code**: Code improvement, alternative solution, refactoring suggestions
3. **Knowledge Transfer**: Sharing design and implementation solutions, learning from others
4. **Team Building**: Building team awareness, establishing coding standards, maintaining code quality

#### 中文

**4 个主要领域**：
1. **发现问题**：发现错误、识别代码异味、检测安全问题
2. **改进代码**：代码改进、替代解决方案、重构建议
3. **知识转移**：分享设计和实现解决方案，向他人学习
4. **团队建设**：建立团队意识、建立编码标准、维护代码质量

---

## 5. MCR Best Practices / 5. MCR 最佳实践

### General Best Practices / 一般最佳实践

#### English

- Contemporary peer review follows a lightweight, flexible process
- Reviews happen early (before a change is committed), in time, and frequently
- Reviewers have a prior knowledge of the context and the code complete reviews quicker and provide more valuable feedback to the authors
- Change sizes are small
- Small numbers of reviewers (1 to 5 reviewers)
- Read informal posts and comments on the code and patch
- Review is not just to find bugs at group-level: problem solving (solution development), code readability and maintainability, following the norm (of the belonging company), accident prevention, gate-keeping

#### 中文

- 当代同行审查遵循轻量级、灵活的过程
- 审查尽早（在提交变更之前）、及时且频繁地进行
- 审查者对上下文和代码有先验知识，可以更快地完成审查，并向作者提供更有价值的反馈
- 变更规模小
- 审查者数量少（1 到 5 名审查者）
- 阅读代码和补丁上的非正式帖子和评论
- 审查不仅仅是在组级别发现错误：问题解决（解决方案开发）、代码可读性和可维护性、遵循规范（所属公司）、事故预防、把关

---

### MCR Best Practices in Google / Google 的 MCR 最佳实践

#### English

- **Suggesting Reviewers**: Ask persons who can serve as reviewers in turn and in round-robin manner. Do not consistently overload the best persons in the team
- **Perform code analysis to supplement human reviewers**: Apply style checker, code checkers (e.g., Checkstyle for Java)
- **Review frequency**: 4 hours of review (and 4 reviews) per week (median)
- **Review speed**: Authors waits for 1-5 hours
- **Changed code size**: 1 line of code (~10%), one file (~30%), fewer than 10 files (~90%)

#### 中文

- **建议审查者**：轮流并以轮询方式询问可以担任审查者的人。不要持续使团队中最优秀的人过载
- **执行代码分析以补充人工审查者**：应用样式检查器、代码检查器（例如，Java 的 Checkstyle）
- **审查频率**：每周 4 小时审查（和 4 次审查）（中位数）
- **审查速度**：作者等待 1-5 小时
- **变更代码大小**：1 行代码（~10%），一个文件（~30%），少于 10 个文件（~90%）

---

### Reviewer Candidates / 审查者候选人

#### English

- Code owner
- Developers who made previous changes on the code
- Developers who develop the code before (e.g., in producing the code through pair programming)
- Experienced reviewers
- Developers who develop similar features of the changed fragments in some other code

#### 中文

- 代码所有者
- 之前对代码进行过更改的开发者
- 之前开发过代码的开发者（例如，通过结对编程生成代码）
- 经验丰富的审查者
- 在其他代码中开发类似功能的开发者

---

## 6. MCR Issues / 6. MCR 问题

### Review Quality and Code Size / 审查质量和代码大小

#### English

- Reviews on code with higher complexity get fewer discussions and feedback
- Code with fewer review feedback will encounter more post-release bugs

#### 中文

- 对复杂度较高的代码的审查获得的讨论和反馈较少
- 审查反馈较少的代码会遇到更多发布后的错误

---

### Distance / 距离

#### English

Causing delay in the review process or leading to misunderstanding.

**Aspect 1: Geographical issue**
- Large physical distance between authors and reviewers

**Aspect 2: Organization issue**
- Reviewers from different teams or taking different roles

#### 中文

导致审查过程延迟或导致误解。

**方面 1：地理问题**
- 作者和审查者之间的物理距离很大

**方面 2：组织问题**
- 来自不同团队或担任不同角色的审查者

---

### Social Interaction / 社交互动

#### English

- **Tone**: Comments with negative tones are less useful
- **Power**: Ask another person to change their comments. Authors unhappy

#### 中文

- **语气**：带有负面语气的评论不太有用
- **权力**：要求另一个人更改他们的评论。作者不满意

---

### Context / 上下文

#### English

Misunderstanding due to mismatched expectations on the code change (e.g., nice to have vs. urgent fix, full solution vs. high level sketch).

#### 中文

由于对代码变更的期望不匹配而导致的误解（例如，有则更好 vs. 紧急修复，完整解决方案 vs. 高级草图）。

---

## 7. Other Topics / 7. 其他主题

### Should We Review Test Code too? / 我们也应该审查测试代码吗？

#### English

The simple answer is "yes", but on different focuses and less often (and review with the production code).

**Understanding and Improving What Kinds of Code by Reviewing Test Code?**
- Understanding production code
- Improving test code quality
- Improving test coverage
- Understanding test strategy

#### 中文

简单答案是"是"，但重点不同，频率较低（并与生产代码一起审查）。

**通过审查测试代码来理解和改进哪些类型的代码？**
- 理解生产代码
- 改进测试代码质量
- 改进测试覆盖率
- 理解测试策略

---

### How about a Review Patch is for Code Refactoring? / 审查补丁用于代码重构怎么样？

#### English

Industrial case study in Xerox shows that "coping with poor design and coding style is the main driver for developers to apply refactoring in their code changes. Yet, functional changes and bug fixing activities often trigger developers to refactor their code as well."

#### 中文

Xerox 的工业案例研究表明，"应对糟糕的设计和编码风格是开发者在代码变更中应用重构的主要驱动力。然而，功能变更和错误修复活动也经常触发开发者重构他们的代码。"

---

### How about Knowledge Transfer? / 知识转移怎么样？

#### English

Does conducting more rounds of MCR improve the code quality of a developer? Unfortunately, there is no evidence yet both within the same project and across multiple projects.

#### 中文

进行更多轮 MCR 会提高开发者的代码质量吗？不幸的是，在同一项目内和跨多个项目中都没有证据。

---

## 8. Strategy to Deal with Confusion / 8. 处理困惑的策略

#### English

When reviewers are confused about the code change, there is no particularly good strategy. However, some approaches may help:
- Ask for clarification from the author
- Review the context and related code
- Discuss with other reviewers
- Request more documentation

#### 中文

当审查者对代码变更感到困惑时，没有特别好的策略。然而，一些方法可能有所帮助：
- 向作者寻求澄清
- 审查上下文和相关代码
- 与其他审查者讨论
- 请求更多文档

---

## 9. What Information is Needed by Reviewers? / 9. 审查者需要什么信息？

#### English

Reviewers need various types of information to effectively review code changes:
- **Context**: Why is this change needed? What problem does it solve?
- **Code Change**: What exactly changed? What is the delta?
- **Related Code**: What other code is affected by this change?
- **Testing**: How was this change tested?
- **Documentation**: Is there documentation explaining the change?

#### 中文

审查者需要各种类型的信息来有效审查代码变更：
- **上下文**：为什么需要此变更？它解决了什么问题？
- **代码变更**：到底改变了什么？增量是什么？
- **相关代码**：此变更会影响哪些其他代码？
- **测试**：此变更是如何测试的？
- **文档**：是否有解释此变更的文档？

---

## Additional Detail / 补充要点

- 代码走查：效果接近测试，但人力成本高；远程/无障碍场景需更多语音/屏幕阅读器支持
- 代码检查（Fagan）：正式、同步、角色分工、检查清单，会前（自审+教育）、会中（逐段检查、问答）、会后（整改与验证），工具次要
- MCR 特征：轻量、异步、聚焦 patch、小变更、小团队；工具（GitHub/Gerrit/ReviewBoard/Phabricator/邮件/IM）
- 审查目的：缺陷、可读性/可维护性、方案讨论、知识传递、规范一致性、事故预防、把关（gate-keeping）
- 好实践（Google 等）：改动小、响应快（常 1–5h）、每周审查时间中位约 4h、轮换审查者、自动化风格/静态检查补充人工
- 常见问题：复杂代码讨论少→发布后缺陷多；地理/组织距离；语气/权力带来的沟通障碍；上下文预期不一致
- 测试代码审查：应审但频率较低，关注测试质量/覆盖/策略；重构相关 patch 也应明确动机与范围
- 典型工具用法：GitHub PR 逐行评论/文件展开、Gerrit 变更集、邮件/IM 异步讨论

