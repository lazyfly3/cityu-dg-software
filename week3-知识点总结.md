# Week 3 Knowledge Summary - Modern Code Review / Week 3 知识点总结 - 现代代码审查

## Table of Contents / 目录

### 1. What is Code Review? / 1. 什么是代码审查？
- [Definition / 定义](#definition--定义)
- [Purposes of Code Review / 代码审查的目的](#purposes-of-code-review--代码审查的目的)

### 2. Different Levels of Formality / 2. 不同形式的正式程度
- [Code Walkthrough / 代码走查](#code-walkthrough--代码走查)
- [Code Inspection / 代码检查](#code-inspection--代码检查)
- [Modern Code Review (MCR) / 现代代码审查 (MCR)](#modern-code-review-mcr--现代代码审查-mcr)

### 3. Characteristics of Modern Code Review / 3. 现代代码审查的特点
- [Informal / 非正式](#informal--非正式)
- [Tool-based Logistics / 基于工具的后勤](#tool-based-logistics--基于工具的后勤)
- [Asynchronous / 异步](#asynchronous--异步)
- [Focus on Code Change / 专注于代码变更](#focus-on-code-change--专注于代码变更)

### 4. Purposes of Reviews/Comments/Posts / 4. 审查/评论/帖子的目的
- [Purposes of Reviews/Comments/Posts / 4. 审查/评论/帖子的目的](#purposes-of-reviewscommentsposts--4-审查评论帖子的目的)

### 5. MCR Best Practices / 5. MCR 最佳实践
- [General Best Practices / 一般最佳实践](#general-best-practices--一般最佳实践)
- [MCR Best Practices in Google / Google 的 MCR 最佳实践](#mcr-best-practices-in-google--google-的-mcr-最佳实践)
- [Reviewer Candidates / 审查者候选人](#reviewer-candidates--审查者候选人)

### 6. MCR Issues / 6. MCR 问题
- [Review Quality and Code Size / 审查质量和代码大小](#review-quality-and-code-size--审查质量和代码大小)
- [Distance / 距离](#distance--距离)
- [Social Interaction / 社交互动](#social-interaction--社交互动)
- [Context / 上下文](#context--上下文)

### 7. Other Topics / 7. 其他主题
- [Should We Review Test Code too? / 我们也应该审查测试代码吗？](#should-we-review-test-code-too--我们也应该审查测试代码吗)
- [How about a Review Patch is for Code Refactoring? / 审查补丁用于代码重构怎么样？](#how-about-a-review-patch-is-for-code-refactoring--审查补丁用于代码重构怎么样)
- [How about Knowledge Transfer? / 知识转移怎么样？](#how-about-knowledge-transfer--知识转移怎么样)

### 8. Strategy to Deal with Confusion / 8. 处理困惑的策略
- [Strategy to Deal with Confusion / 8. 处理困惑的策略](#strategy-to-deal-with-confusion--8-处理困惑的策略)

### 9. What Information is Needed by Reviewers? / 9. 审查者需要什么信息？
- [What Information is Needed by Reviewers? / 9. 审查者需要什么信息？](#what-information-is-needed-by-reviewers--9-审查者需要什么信息)

### Additional Detail / 补充要点
- [Additional Detail / 补充要点](#additional-detail--补充要点)

---

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

#### 通俗解释

现代代码审查就像写作文让同学帮忙看：你写了一段代码，通过GitHub等工具发给同事看，同事可以提意见、找错误、讨论更好的写法。不是正式开会，而是随时可以审查，通过工具异步进行。只审查你改的那部分代码，不是看整个项目，所以比较轻量。就像改作文，只改你新写的那段，不用重看整篇。

---

## 3. Characteristics of Modern Code Review / 3. 现代代码审查的特点

### Informal / 非正式

#### English

Ad hoc group of reviewers without predefined roles, and the review process does not follow a formal procedure.

#### 中文

没有预定义角色的临时审查者组，审查过程不遵循正式程序。

#### 通俗解释

非正式审查就像同学之间互相看作业：不需要正式流程，谁有空谁看，不需要固定角色（比如不需要指定"主审"、"副审"），比较灵活。不像正式审查那样要开会、要填表、要走流程，而是随时可以审查，比较轻松。

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

#### 通俗解释

异步审查就像发邮件：你发代码给同事，同事有空的时候看，看完回复，不需要两个人同时在线。不像开会那样要约时间，比较灵活，适合远程协作。但也不能拖太久，一般1-5小时内回复。

---

### Focus on Code Change / 专注于代码变更

#### English

Focus the review on the patch (code change, the delta), not the whole piece of code.

#### 中文

将审查重点放在补丁（代码变更、增量）上，而不是整段代码。

#### 通俗解释

专注于代码变更就像"只看改了什么"：不是看整个文件，只看你新加或修改的那几行。就像改作文，老师只看你新写的那段，不用重看整篇。这样审查快、效率高，也容易发现问题。就像Git的diff，只显示变化的部分，一目了然。

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

#### 通俗解释

代码审查的目的不只是找bug，还有四个作用：**发现问题**就像体检，找bug、找代码异味、找安全问题。**改进代码**就像提建议，讨论更好的写法、重构建议。**知识转移**就像教学，老手教新手，分享经验。**团队建设**就像统一标准，让大家遵循同样的编码规范，保持代码质量。就像团队一起学习，互相帮助，共同提高。

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

#### 通俗解释

最佳实践就像"怎么做代码审查"：**轻量灵活**，不要搞得太正式。**尽早审查**，提交前就审查，不要等提交后。**审查者要懂上下文**，知道代码的背景，审查更快、建议更有价值。**改动要小**，一次改一点，不要一次改太多。**审查者1-5个**，不要太多，人多意见杂。**不只是找bug**，还要讨论方案、提高可读性、遵循规范、预防事故、把关质量。就像同学互相看作业，轻松但认真。

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

#### 通俗解释

Google的最佳实践就像"大公司的经验"：**轮流审查**，不要总让最厉害的人审查，大家轮流，公平分担。**用工具辅助**，用代码检查工具（如Checkstyle）自动检查格式、风格，人工审查者专注逻辑和设计。**审查频率**，每周中位数4小时，大概4次审查，不要太多也不要太少。**审查速度**，1-5小时内回复，不要拖太久。**改动要小**，90%的改动少于10个文件，30%只改1个文件，10%只改1行。就像"小步快跑"，每次改一点，容易审查。

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

#### 通俗解释

审查者候选人就像"找谁看代码"：**代码所有者**，这个代码的负责人，最了解。**之前改过的人**，知道上下文。**之前开发过的人**，比如结对编程的搭档。**经验丰富的审查者**，审查能力强。**开发过类似功能的人**，有相关经验。就像找老师看作业，找最懂的人看，建议最有价值。

---

## 6. MCR Issues / 6. MCR 问题

### Review Quality and Code Size / 审查质量和代码大小

#### English

- Reviews on code with higher complexity get fewer discussions and feedback
- Code with fewer review feedback will encounter more post-release bugs

#### 中文

- 对复杂度较高的代码的审查获得的讨论和反馈较少
- 审查反馈较少的代码会遇到更多发布后的错误

#### 通俗解释

审查质量和代码大小的关系就像"难的东西大家都不想看"：代码越复杂，审查者越不想深入讨论（因为太复杂，讨论起来累），给的反馈越少。但反馈少的代码，发布后bug越多。就像难懂的作文，老师可能简单看看就过了，但问题其实很多。所以复杂代码要特别注意，或者拆分成简单的小块。

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

#### 通俗解释

距离问题就像"沟通障碍"：**地理距离**，作者和审查者不在一个地方，时差、语言、文化差异导致沟通困难。**组织距离**，不同团队、不同角色的人，背景不同，理解不同，容易误解。就像远程协作，不如面对面沟通顺畅。或者不同部门的人，术语不同，容易理解偏差。

---

### Social Interaction / 社交互动

#### English

- **Tone**: Comments with negative tones are less useful
- **Power**: Ask another person to change their comments. Authors unhappy

#### 中文

- **语气**：带有负面语气的评论不太有用
- **权力**：要求另一个人更改他们的评论。作者不满意

#### 通俗解释

社交互动问题就像"沟通方式"：**语气**，如果审查者说话很冲、很负面（比如"这代码太烂了"），作者会不高兴，也不愿意改。应该用建设性的语气（比如"这里可以这样改进"）。**权力**，如果审查者是领导，强制要求改，作者可能不服但不敢说，影响积极性。应该平等讨论，以理服人。就像老师改作业，要鼓励为主，不要打击。

---

### Context / 上下文

#### English

Misunderstanding due to mismatched expectations on the code change (e.g., nice to have vs. urgent fix, full solution vs. high level sketch).

#### 中文

由于对代码变更的期望不匹配而导致的误解（例如，有则更好 vs. 紧急修复，完整解决方案 vs. 高级草图）。

#### 通俗解释

上下文问题就像"期望不一致"：作者以为这是"临时方案，先这样"，审查者以为这是"最终方案，要完美"，就会产生冲突。或者作者以为"紧急修复，能跑就行"，审查者要求"完整测试、文档齐全"，也会冲突。就像做作业，学生以为"草稿就行"，老师要求"正式版"，就会有问题。所以审查时要明确上下文：这是临时方案还是最终方案？紧急修复还是正常开发？

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

#### 通俗解释

测试代码也要审查，但重点不同：**理解生产代码**，看测试代码能了解生产代码怎么用。**提高测试代码质量**，测试代码也要写好。**提高测试覆盖率**，看测试代码知道哪些地方没测到。**理解测试策略**，看测试代码知道测试思路。但测试代码审查频率可以低一些，和生产代码一起审查就行。就像检查作业，主要检查作业本身，但也要看看草稿，了解思路。

---

### How about a Review Patch is for Code Refactoring? / 审查补丁用于代码重构怎么样？

#### English

Industrial case study in Xerox shows that "coping with poor design and coding style is the main driver for developers to apply refactoring in their code changes. Yet, functional changes and bug fixing activities often trigger developers to refactor their code as well."

#### 中文

Xerox 的工业案例研究表明，"应对糟糕的设计和编码风格是开发者在代码变更中应用重构的主要驱动力。然而，功能变更和错误修复活动也经常触发开发者重构他们的代码。"

#### 通俗解释

代码审查触发重构就像"发现问题就改进"：研究发现，代码审查时发现设计差、编码风格差，是触发重构的主要原因。但加新功能、修bug时，也经常触发重构（因为改代码时发现可以顺便改进）。就像修车时发现其他地方也有问题，顺便一起修了。

---

### How about Knowledge Transfer? / 知识转移怎么样？

#### English

Does conducting more rounds of MCR improve the code quality of a developer? Unfortunately, there is no evidence yet both within the same project and across multiple projects.

#### 中文

进行更多轮 MCR 会提高开发者的代码质量吗？不幸的是，在同一项目内和跨多个项目中都没有证据。

#### 通俗解释

知识转移的效果就像"多审查能提高水平吗"：理论上，多审查应该能学到东西，提高代码质量。但研究发现，没有证据证明多审查能提高开发者的代码质量。就像多改作业应该能提高水平，但实际效果不确定。可能因为审查者水平不同、审查质量不同、学习效果因人而异。

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

#### 通俗解释

处理困惑的策略就像"看不懂怎么办"：如果审查者看不懂代码，可以：**问作者**，直接问"这是什么意思"。**看上下文**，看看相关代码，了解背景。**和其他审查者讨论**，大家一起讨论，可能有人懂。**要更多文档**，让作者补充说明。就像看作业看不懂，可以问同学、看课本、问老师、要更多资料。

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

### Code Walkthrough / 代码走查

#### English

**Effectiveness**: Code walkthrough is nearly as effective as testing in finding bugs, but has high human resource costs. In remote/accessibility scenarios, more voice/screen reader support is needed.

#### 中文

**效果**：代码走查在发现错误方面几乎与测试一样有效，但人力成本高。在远程/无障碍场景中，需要更多语音/屏幕阅读器支持。

---

### Code Inspection (Fagan) / 代码检查（Fagan）

#### English

**Characteristics**: Formal, synchronous, role-based division of labor, checklist-based. Process includes: before meeting (self-review + education), during meeting (section-by-section review, Q&A), after meeting (fix and verification). Tools are secondary.

#### 中文

**特点**：正式、同步、角色分工、检查清单。流程包括：会前（自审 + 教育）、会中（逐段检查、问答）、会后（整改与验证）。工具次要。

---

### MCR Characteristics / MCR 特征

#### English

**Key Features**: Lightweight, asynchronous, focused on patches, small changes, small teams. Tools include GitHub, Gerrit, ReviewBoard, Phabricator, email, IM.

#### 中文

**关键特征**：轻量、异步、聚焦 patch、小变更、小团队。工具包括 GitHub、Gerrit、ReviewBoard、Phabricator、邮件、IM。

---

### Review Purposes / 审查目的

#### English

**Multiple Purposes**: Finding defects, improving readability/maintainability, discussing alternative solutions, knowledge transfer, ensuring consistency with standards, accident prevention, gate-keeping (quality control).

#### 中文

**多重目的**：发现缺陷、提高可读性/可维护性、讨论替代方案、知识传递、确保规范一致性、事故预防、把关（质量控制）。

---

### Good Practices (e.g., Google) / 好实践（如 Google）

#### English

**Best Practices**: Small changes, fast response (often 1-5 hours), median review time about 4 hours per week, rotate reviewers, automated style/static checks supplement manual review.

#### 中文

**最佳实践**：改动小、响应快（常 1–5h）、每周审查时间中位约 4h、轮换审查者、自动化风格/静态检查补充人工。

---

### Common Problems / 常见问题

#### English

**Challenges**: Complex code gets less discussion → more defects after release; geographical/organizational distance; communication barriers from tone/power dynamics; inconsistent context expectations.

#### 中文

**挑战**：复杂代码讨论少 → 发布后缺陷多；地理/组织距离；语气/权力带来的沟通障碍；上下文预期不一致。

---

### Test Code Review / 测试代码审查

#### English

**Guidelines**: Test code should be reviewed but at lower frequency. Focus on test quality, coverage, and strategy. Refactoring-related patches should also clearly state motivation and scope.

#### 中文

**指导原则**：测试代码应审查但频率较低。关注测试质量、覆盖和策略。重构相关 patch 也应明确动机与范围。

---

### Typical Tool Usage / 典型工具用法

#### English

**Tool Features**: GitHub PR line-by-line comments/file expansion, Gerrit change sets, email/IM asynchronous discussion.

#### 中文

**工具特性**：GitHub PR 逐行评论/文件展开、Gerrit 变更集、邮件/IM 异步讨论。

### In-Class Activity MCR-2 / 课堂活动 MCR-2

#### English

**Setup**: Form a group of 4-5 students
- Author A: 1 student
- Reviewer R: no pre-defined role
- Agree on tool (GitHub support)

**Timeline (30 minutes)**:
- 00-15: A prepares patch P for code C on GitHub, with explanation, notifies via e-channel
- 15-25: R reviews P and posts comments on GitHub, notifies when finished
- 15-25: A answers issues, provides clarifications, revises patch P' iteratively
- 25-30: R approves P, A applies final patch P' to get corrected code C2
- 30: A submits C2 with comments (images/link to GitHub repo) to Canvas Discussion for peer sharing

#### 中文

**设置**：组成 4-5 名学生的小组
- 作者 A：1 名学生
- 审查者 R：无预定义角色
- 商定工具（GitHub 支持）

**时间线（30 分钟）**：
- 00-15：A 在 GitHub 上为代码 C 准备补丁 P，附说明，通过电子渠道通知
- 15-25：R 审查 P 并在 GitHub 上发布评论，完成后通知
- 15-25：A 回答问题，提供澄清，迭代修订补丁 P'
- 25-30：R 批准 P，A 应用最终补丁 P' 获得修正代码 C2
- 30：A 提交 C2 及评论（图片/GitHub 仓库链接）到 Canvas 讨论区供同伴分享

