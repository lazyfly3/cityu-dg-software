# Week 8 Knowledge Summary - Code with Quality / Week 8 知识点总结 - 高质量代码

## Table of Contents / 目录

### 1. Basic Code Design Principles / 1. 基本代码设计原则
- [Abstraction / 抽象](#abstraction--抽象)
- [Information Hiding / 信息隐藏](#information-hiding--信息隐藏)
- [Encapsulation / 封装](#encapsulation--封装)
- [Coupling / 耦合](#coupling--耦合)
- [Cohesion / 内聚](#cohesion--内聚)

### 2. SOLID Principles / 2. SOLID 原则
- [S - Single-Responsibility Principle (SRP) / S - 单一职责原则 (SRP)](#s---single-responsibility-principle-srp--s---单一职责原则-srp)
- [O - Open-Closed Principle (OCP) / O - 开闭原则 (OCP)](#o---open-closed-principle-ocp--o---开闭原则-ocp)
- [L - Liskov Substitution Principle (LSP) / L - 里氏替换原则 (LSP)](#l---liskov-substitution-principle-lsp--l---里氏替换原则-lsp)
- [I - Interface Segregation Principle (ISP) / I - 接口隔离原则 (ISP)](#i---interface-segregation-principle-isp--i---接口隔离原则-isp)
- [D - Dependency Inversion Principle (DIP) / D - 依赖倒置原则 (DIP)](#d---dependency-inversion-principle-dip--d---依赖倒置原则-dip)

### 3. Code Smells / 3. 代码异味
- [Impact on Code Stability and Bug Fix / 对代码稳定性和 Bug 修复的影响](#impact-on-code-stability-and-bug-fix--对代码稳定性和-bug-修复的影响)
- [Impact on Program Comprehension / 对程序理解的影响](#impact-on-program-comprehension--对程序理解的影响)
- [How to Automate Code Smells Detection? / 如何自动化检测代码异味？](#how-to-automate-code-smells-detection--如何自动化检测代码异味)

### 4. Code Refactoring / 4. 代码重构
- [Tool Support / 工具支持](#tool-support--工具支持)
- [Why, What, and How to Refactor? / 为什么、什么以及如何重构？](#why-what-and-how-to-refactor--为什么什么以及如何重构)
- [Refactoring Correctness and Implication / 重构的正确性和影响](#refactoring-correctness-and-implication--重构的正确性和影响)
- [Summary / 总结](#summary--总结)

### Additional Detail / 补充要点
- [Additional Detail / 补充要点](#additional-detail--补充要点)
- [Code Smells & Detection / 代码异味与检测](#code-smells--detection--代码异味与检测)
- [Refactoring Process / 重构流程](#refactoring-process--重构流程)

---

## 1. Basic Code Design Principles / 1. 基本代码设计原则

### Abstraction / 抽象

#### English

Abstraction is a fundamental concept in programming theory that aims to avoid duplication of information and/or human effort. There are two main types:

**Functional Abstraction**: Let C be a piece of code with a well-defined purpose. We put C into the body of a function having a function signature F. We say that F is an abstraction of C. A program P can include C once in the body of F and include one or more statements to call F instead of including multiple copies of C. Developers of the client code U of F need not comprehend the code C; rather, they can rely on the abstraction F and its well-defined functional purpose to complete their own tasks.

**Generalization Abstraction**: Finding similarities/common aspects and forgetting unimportant differences. Let {C1, …, Ci, …, Cn} be codes with similar functional purposes. F is a common abstraction of them. Differences in parameters are unified; similarities are structured in F's body; differences are put under different control flow parts. Or in OO: create a class hierarchy. Makes U more maintainable (easier to understand, avoid maintaining code list explicitly, clean and minimal).

**Data Abstraction**: If we abstract and group functions critically related to a data structure into a set, the set represents a single functional purpose of the data structure. Data Abstraction is to model the operators on a data structure as a set of related functions (called interfaces). In contrast, the data structure implementations are concealed by the interfaces.

**Good vs. Bad Data Abstraction Example (Stack)**:
- **Good**: Stack(), isEmpty(), length(), push(x), pop() - maintains stack integrity (first-in-last-out), doesn't expose implementation
- **Bad**: isEqual(int[] X), set(int x, int i), get(int i), push(int x, int i) - exposes array implementation, violates stack property, allows direct manipulation
- **Worse**: set(int[] X), get() returns internal structure - completely exposes implementation
- **Key principle**: After each operator invocation, data structure integrity must be kept intact. Changes should only be performed by operators, not by client code directly accessing internal structure.

#### 中文

抽象是编程理论中的基本概念，旨在避免信息重复和/或人工工作量的重复。主要有两种类型：

**功能抽象**：设 C 是一段具有明确定义目的的代码。我们将 C 放入具有函数签名 F 的函数体中。我们说 F 是 C 的抽象。程序 P 可以在 F 的主体中包含 C 一次，并包含一个或多个调用 F 的语句，而不是包含多个 C 的副本。F 的客户端代码 U 的开发者不需要理解代码 C；相反，他们可以依赖抽象 F 及其明确定义的功能目的来完成自己的任务。

**泛化抽象**：寻找相似性/共同方面并忽略不重要的差异。设 {C1, …, Ci, …, Cn} 是具有相似功能目的的代码。F 是它们的共同抽象。参数差异被统一；相似性在 F 的主体中结构化；差异被放在不同的控制流部分。或在 OO 中：创建类层次结构。使 U 更易维护（更易理解，避免显式维护代码列表，简洁）。

**数据抽象**：如果我们将与数据结构密切相关的函数抽象并分组到一个集合中，该集合表示数据结构的单一功能目的。数据抽象是将数据结构上的操作建模为一组相关函数（称为接口）。相反，数据结构的具体实现被接口隐藏。

**好与坏的数据抽象示例（栈）**：
- **好**：Stack(), isEmpty(), length(), push(x), pop() - 保持栈完整性（后进先出），不暴露实现
- **坏**：isEqual(int[] X), set(int x, int i), get(int i), push(int x, int i) - 暴露数组实现，违反栈属性，允许直接操作
- **更差**：set(int[] X), get() 返回内部结构 - 完全暴露实现
- **关键原则**：每次操作符调用后，数据结构完整性必须保持。更改应仅由操作符执行，而不是客户端代码直接访问内部结构。

#### 通俗解释

**功能抽象**：就像用微波炉，你只需要按按钮，不需要知道里面是怎么加热的。把一段代码包装成函数，其他地方直接调用就行，不用重复写代码。

**泛化抽象**：就像发现"切菜"、"切肉"、"切水果"都是"切"的动作，就统一成一个"切"的函数，只是参数不同（切什么）。

**数据抽象**：就像用ATM机取钱，你只需要按按钮，不需要知道机器内部怎么数钱、怎么出钞。好的抽象就像ATM机，只暴露必要的操作（取钱、存钱），隐藏内部实现（怎么数钱）。坏的抽象就像把ATM机拆开，让你直接操作里面的零件，这样容易出错，也破坏了机器的完整性。

---

### Information Hiding / 信息隐藏

#### English

Information Hiding means that interfaces should be chosen to reveal as little as possible about its internal workings. We should ask whether the level of details specified in the parameters of an operator in an interface is essential. The goal is to remove details from the interfaces of a data structure by interrelating these interfaces.

**Example**: 
- `canVote1(int HKID, int age, int district_code)` reveals more details (three separate parameters)
- `canVote2(Voter v)` hides details (single object parameter)
- The second is better as it reveals less about internal workings

**Concept**: Like mathematical projection - the projection of a circle on dimension x results in a line segment, hiding the y dimension details.

#### 中文

信息隐藏意味着接口应该尽可能少地暴露其内部工作机制。我们应该询问接口中操作符参数指定的细节级别是否必要。目标是通过相互关联这些接口来从数据结构的接口中移除细节。

**示例**：
- `canVote1(int HKID, int age, int district_code)` 暴露更多细节（三个独立参数）
- `canVote2(Voter v)` 隐藏细节（单个对象参数）
- 第二个更好，因为它暴露的内部工作机制更少

**概念**：类似于数学投影 - 圆在维度 x 上的投影产生线段，隐藏了 y 维度的细节。

#### 通俗解释

信息隐藏就像拍照：你只看到照片里的正面，看不到背面。好的接口就像只给你看必要的信息，隐藏内部细节。比如判断能否投票，好的设计是 `canVote(选民对象)`，你只需要传一个选民对象，不需要知道内部需要检查身份证、年龄、选区这些细节。就像用手机，你只需要按按钮，不需要知道内部电路怎么工作的。

---

### Encapsulation / 封装

#### English

Encapsulation on X refers to ensuring outsiders cannot gain knowledge about certain information internal to X. X can be a class, a module, a file, a data record, etc. We achieve good encapsulation if we can describe the functional purpose using the least "working known-how" of the operators of a data structure and the functional signature does not specify more than what the functional purpose states. We can control the visibility of each data member or data method of a class to increase the level of encapsulation.

**Encapsulation Violation Example**:
- If Stack's internal array `a` is public or accessible via getter/setter, client code can manipulate it directly, corrupting stack integrity
- Solution: Make internal data members private; don't expose getSize()/setSize() if they allow direct manipulation
- We should also control input/output parameters to prevent encapsulation violations

**Key Point**: Controlling visibility (public/private) is necessary but not sufficient. We must also ensure that input/output parameters don't reveal or allow manipulation of internal state.

#### 中文

X 的封装是指确保外部无法获取 X 内部的某些信息。X 可以是类、模块、文件、数据记录等。如果我们能够使用数据结构操作符的最少"工作知识"来描述功能目的，并且功能签名指定的内容不超过功能目的所说明的内容，我们就实现了良好的封装。我们可以控制类的每个数据成员或数据方法的可见性来增加封装级别。

**封装违反示例**：
- 如果 Stack 的内部数组 `a` 是公共的或可通过 getter/setter 访问，客户端代码可以直接操作它，破坏栈完整性
- 解决方案：使内部数据成员私有；如果允许直接操作，不要暴露 getSize()/setSize()
- 我们还应该控制输入/输出参数以防止封装违反

**关键点**：控制可见性（public/private）是必要的，但还不够。我们还必须确保输入/输出参数不会暴露或允许操作内部状态。

#### 通俗解释

封装就像银行金库：外部的人不能直接进去拿钱，必须通过银行柜员（接口）来操作。好的封装就像金库有严格的访问控制，只有授权的人（通过正确的接口）才能操作，而且操作方式受限制（不能直接改内部数据）。坏的封装就像把金库钥匙给所有人，谁都能进去乱动，系统就乱了。封装就是保护内部数据，不让外部代码直接操作，必须通过规定的接口。

---

### Coupling / 耦合

#### English

Coupling is about syntactic dependency. Our aim is to minimize coupling in the code listing. An entity X is structurally and directly dependent on another entity Y at compile time (when code is not yet run). There is a direct structural dependency from X to Y. Programmers need such dependency info for computational efficiency; compiler needs it for code optimization. We often "hard-code" the dependency in source code (component, dataflow, control flow).

**Property**: If X is changed (e.g., deleted/changed its datatype), then Y changes too.

**Consequence**: If Y changes (as result of X), elements (say Z) depend on Y changes too. Z is indirectly dependent on X. If we can either (1) reduce coupling at compile time or (2) delay dependency from compile time to run time, then we make our program have better kinds of coupling.

There are six basic types of coupling (from worse to better):
1. **Content Coupling** - directly use a part of code
2. **Common Coupling** - global variable
3. **External Coupling** - interface protocol, file. Example: f(file X) and g(file X, data z) both read from file X. If changed so they pass needs to new entity u to access X, external coupling is reduced.
4. **Control Coupling** - control flow, workflow pipeline
5. **Stamp Coupling** - a part of a data structure
6. **Data Coupling** - the whole data structure

**Example**: In bubble sorting, control coupling from B.sort() to A.greater(), data coupling from B to A.

#### 中文

耦合是关于语法依赖性的概念。我们的目标是最小化代码中的耦合。实体 X 在编译时（代码尚未运行时）在结构上直接依赖于另一个实体 Y。存在从 X 到 Y 的直接结构依赖。程序员需要此类依赖信息以提高计算效率；编译器需要它进行代码优化。我们经常在源代码中"硬编码"依赖（组件、数据流、控制流）。

**属性**：如果 X 被更改（例如，删除/更改其数据类型），那么 Y 也会改变。

**后果**：如果 Y 改变（作为 X 的结果），依赖于 Y 的元素（比如 Z）也会改变。Z 间接依赖于 X。如果我们能够（1）在编译时减少耦合或（2）将依赖从编译时延迟到运行时，那么我们使程序具有更好的耦合类型。

有六种基本类型的耦合（从差到好）：
1. **内容耦合** - 直接使用代码的一部分
2. **公共耦合** - 全局变量
3. **外部耦合** - 接口协议、文件。示例：f(file X) 和 g(file X, data z) 都从文件 X 读取。如果更改使它们将需求传递给新实体 u 以访问 X，则外部耦合减少。
4. **控制耦合** - 控制流、工作流管道
5. **标记耦合** - 数据结构的一部分
6. **数据耦合** - 整个数据结构

**示例**：在冒泡排序中，从 B.sort() 到 A.greater() 的控制耦合，从 B 到 A 的数据耦合。

#### 通俗解释

耦合就像两个人之间的依赖关系。**高耦合**就像两个人绑在一起，一个人动，另一个人必须跟着动，很麻烦。**低耦合**就像两个人只是偶尔联系，各自独立。代码中的耦合就是模块之间的依赖：如果模块A改了，模块B也必须改，这就是高耦合，不好维护。好的设计是低耦合，模块之间依赖少，改一个不影响另一个。就像搭积木，如果积木之间连接太紧，拆一个全散架；如果连接合适，可以单独替换某一块。

---

### Cohesion / 内聚

#### English

Cohesion is about the reasons to place a set of entities together as a group or split them. We cannot see the dependency on cohesion from the code. Our aim: If two entities are related, they should be grouped together and/or used together.

There are 7 types of cohesion (from worse to better):
1. Coincidental - grouped without a reason
2. Logical - grouped because "we" treat them as one category
3. Temporal - A part of each entity in the group is processed similarly
4. Procedural - A group of functions, when composed, represent different sequences of control
5. Communicational - grouped because of operating on the same data
6. Sequential - the input of one depends on the output of another
7. Functional - to perform different aspects of a well-defined task

Consequence: Higher cohesion and lower coupling together lead to higher quality: maintainability, reusability, and lower complexity.

#### 中文

内聚是关于将一组实体组合在一起或拆分它们的原因。我们无法从代码中看到对内聚的依赖。我们的目标：如果两个实体相关，它们应该被组合在一起和/或一起使用。

有 7 种类型的内聚（从差到好）：
1. 偶然内聚 - 没有理由地组合
2. 逻辑内聚 - 因为"我们"将它们视为一个类别而组合
3. 时间内聚 - 组中每个实体的一部分被类似处理
4. 过程内聚 - 一组函数组合时表示不同的控制序列
5. 通信内聚 - 因为操作相同数据而组合
6. 顺序内聚 - 一个的输入依赖于另一个的输出
7. 功能内聚 - 执行明确定义任务的不同方面

结果：高内聚和低耦合共同导致更高的质量：可维护性、可重用性和更低的复杂性。

#### 通俗解释

内聚就像团队合作：**高内聚**就像团队成员都做相关的事（比如都是做前端的），配合默契；**低内聚**就像把不相关的人硬凑一起（比如把厨师和程序员放一组），很别扭。代码也一样：相关的功能应该放在一起（高内聚），比如处理用户的功能都放在User类里；不相关的功能要分开（低耦合），比如用户管理和支付系统要分开，互不影响。高内聚+低耦合=好代码，就像好团队：内部配合好，对外依赖少。

---

## 2. SOLID Principles / 2. SOLID 原则

### S - Single-Responsibility Principle (SRP) / S - 单一职责原则 (SRP)

#### English

A responsibility is a logical reason to change the code. It is an abstract concept. The principle states that a class should have one and only one reason to be rewritten. A responsibility is not the assigned functionality of the class. It is a derived concept of maintaining good abstraction. If SRP is respected, then the responsibility means delivering the functional purpose of the class.

#### 中文

责任是改变代码的逻辑原因。它是一个抽象概念。该原则规定，一个类应该只有一个且仅有一个被重写的理由。责任不是类的指定功能。它是维护良好抽象的派生概念。如果遵循 SRP，那么责任意味着交付类的功能目的。

#### 通俗解释

单一职责原则就像"一个萝卜一个坑"：每个类只负责一件事。比如User类只负责用户信息，不要让它既管用户又管订单。就像餐厅，服务员负责点菜，厨师负责做菜，收银负责收钱，各司其职。如果一个类要改的原因有很多（比如用户信息变了要改，订单逻辑变了也要改），说明职责不单一，应该拆分。

---

### O - Open-Closed Principle (OCP) / O - 开闭原则 (OCP)

#### English

Open-closed principle requires a code pattern to meet two conditions: Open for extension, and Close for modification. The basic rule of OCP is: (1) extend without modifying the existing code or (2) refine the implementation without changing the functional purpose and input/output arguments. Note that once a class's abstract/virtual method is set as "null" in a subclass, do not extend the method with additional code in any subclass of the former subclass.

#### 中文

开闭原则要求代码模式满足两个条件：对扩展开放，对修改关闭。OCP 的基本规则是：(1) 在不修改现有代码的情况下扩展，或 (2) 在不改变功能目的和输入/输出参数的情况下改进实现。注意，一旦子类将父类的抽象/虚方法设置为"null"，不要在该子类的任何子类中用附加代码扩展该方法。

#### 通俗解释

开闭原则就像乐高积木：积木本身（现有代码）不能改，但可以通过组合（扩展）拼出新的东西。比如有个支付接口，要支持新支付方式，不要改原来的代码，而是新增一个类实现这个接口。就像手机，不能改硬件，但可以装新APP扩展功能。这样原有代码稳定，新功能通过扩展添加，不会影响旧功能。

---

### L - Liskov Substitution Principle (LSP) / L - 里氏替换原则 (LSP)

#### English

Suppose S is a subclass of T. (= T is a generalization of S). S can be reasoned in every client code C in the same way as T is reasoned in C. (= T's behavior is preserved by S). In this case, LSP is followed by the pair of S and T. S may refine or extend T:
- S refines T: S and T compute the same result, but S implements a better algorithm or uses a better data structure
- S extends T: S inherits everything from T and does extra things

Example: Duck is an LSP-kind subclass of Bird. We can reason a duck as a bird whenever we reason the behavior of a bird in general.

#### 中文

假设 S 是 T 的子类（= T 是 S 的泛化）。S 可以在每个客户端代码 C 中以与 T 在 C 中相同的方式被推理（= S 保留了 T 的行为）。在这种情况下，S 和 T 这一对遵循 LSP。S 可以精化或扩展 T：
- S 精化 T：S 和 T 计算相同结果，但 S 实现了更好的算法或使用更好的数据结构
- S 扩展 T：S 继承 T 的所有内容并做额外的事情

示例：Duck 是 Bird 的 LSP 类型子类。每当我们推理鸟的一般行为时，我们可以将鸭子推理为鸟。

#### 通俗解释

里氏替换原则就像"是A就能当A用"：如果Duck是Bird的子类，那么所有用Bird的地方，都能用Duck替换，而且行为一致。就像"所有鸟都会飞"，如果Duck是Bird，那Duck也要会飞。如果Duck不会飞，就不能说是Bird的子类，或者Bird的定义有问题（比如"鸟"不应该要求"会飞"，因为企鹅是鸟但不会飞）。代码中，子类要能完全替代父类，不能破坏父类的行为约定。

---

### I - Interface Segregation Principle (ISP) / I - 接口隔离原则 (ISP)

#### English

ISP states that a client (of an interface) should not be forced to depend on methods (i.e., implement the methods) it does not use. Warning: ISP has no theoretical basis. It is a handy concept to avoid some problematic designs. For example, implementing too many dummy codes to conform to the interfaces for later use (which may never appear). Developers are forced to implement the dummy functions in an interface due to the programming language/compiler we chose to use.

#### 中文

ISP 规定，客户端（接口的）不应该被迫依赖它不使用的方法（即实现这些方法）。警告：ISP 没有理论基础。它是一个方便的概念，用于避免一些有问题的设计。例如，为实现接口而实现太多虚拟代码以供以后使用（可能永远不会出现）。由于我们选择的编程语言/编译器，开发者被迫在接口中实现虚拟函数。

#### 通俗解释

接口隔离原则就像"不要强迫别人用不需要的东西"：如果一个接口有很多方法，但某个类只需要其中几个，就不要强迫它实现所有方法。就像买手机，如果只需要打电话，就不要强迫买带拍照、游戏、视频的旗舰机。应该把大接口拆成小接口，需要什么实现什么。比如把"动物接口"拆成"会飞的接口"、"会游泳的接口"，鸟实现"会飞的"，鱼实现"会游泳的"，不要强迫鸟实现"会游泳的"。

---

### D - Dependency Inversion Principle (DIP) / D - 依赖倒置原则 (DIP)

#### English

DIP requires both conditions below to be held:
1. High-level modules should not depend on low-level modules. Both should depend on abstractions.
2. Abstractions should not depend on details. Details should depend on abstractions.

**Dependency Injection**: At the top level, PolicyService is an interface, and yet a Policy object needs to call a concrete object. We may inject a dependency Mechanism object to the Policy object. Pass an object when constructing a Policy object. We need a Mechanism factory to create the former object.

#### 中文

DIP 要求满足以下两个条件：
1. 高层模块不应该依赖于低层模块。两者都应该依赖于抽象。
2. 抽象不应该依赖于细节。细节应该依赖于抽象。

**依赖注入**：在顶层，PolicyService 是一个接口，但 Policy 对象需要调用具体对象。我们可以将依赖 Mechanism 对象注入到 Policy 对象中。在构造 Policy 对象时传递对象。我们需要一个 Mechanism 工厂来创建前一个对象。

#### 通俗解释

依赖倒置原则就像"高层不依赖底层，都依赖抽象"：比如业务逻辑（高层）不应该直接依赖数据库操作（底层），而应该依赖"数据访问"这个抽象接口。就像用电器，不应该直接依赖某个品牌的插座，而应该依赖"标准插座接口"。这样换数据库或换插座都不影响业务逻辑。

**依赖注入**就像"需要什么传什么"：如果A需要B，不要A自己创建B，而是外部传B给A。就像点外卖，不要自己做饭，而是让外卖员送饭来。这样A和B解耦，A不关心B是怎么来的，测试时可以用假的B（Mock）。

---

## 3. Code Smells / 3. 代码异味

#### English

Code smell is a violation of a design principle and causes an adverse effect to the code. It is also known as anti-patterns. Code smell is a violation of a design principle and (potentially) harms the code. Novice developers tend to find it more difficult to judge the presence of them in their code. Code Review is a good source for the team to manage the code. Some static analysis tools can help detect code smells. Most of them are guidelines only. 22 patterns were identified initially, and more were identified afterwards.

#### 中文

代码异味是违反设计原则并导致代码产生不利影响的问题。它也被称为反模式。代码异味是违反设计原则并（可能）损害代码的问题。新手开发者往往更难判断代码中是否存在代码异味。代码审查是团队管理代码的良好来源。一些静态分析工具可以帮助检测代码异味。它们中的大多数只是指导原则。最初识别了 22 种模式，之后又识别了更多。

#### 通俗解释

代码异味就像"代码的坏味道"：虽然能跑，但有问题，比如代码重复、函数太长、类太大、命名不清等。就像房间有异味，虽然能住，但不舒服。代码异味不是错误（能编译能跑），但会让代码难维护、容易出错。新手可能看不出来，老手一看就知道有问题。代码审查和静态分析工具能帮助发现。就像体检，能发现潜在问题。

---

### Impact on Code Stability and Bug Fix / 对代码稳定性和 Bug 修复的影响

#### English

A study on ArgoUML, Eclipse, Mylyn, and Rhino, Azureus shows that:
- Classes with code smells change more often than the otherwise.
- They also incur more in issue-fixing or fix-bugging patches
- Classes with more code smells change more often than the classes with less code smells

It means that the code degraded.

#### 中文

对 ArgoUML、Eclipse、Mylyn 和 Rhino、Azureus 的研究表明：
- 有代码异味的类比没有的类更频繁地改变
- 它们也会导致更多的问题修复或修复错误的补丁
- 有更多代码异味的类比有较少代码异味的类更频繁地改变

这意味着代码质量下降了。

#### 通俗解释

代码异味的影响就像"有问题的代码更容易出问题"：研究发现，有代码异味的类改得更频繁（因为容易出错，要经常修），bug也更多。就像有问题的车，经常要修。代码异味越多，问题越多。这说明代码质量在下降，需要重构。

---

### Impact on Program Comprehension / 对程序理解的影响

#### English

A program comprehension study on code incurring Blob (i.e., code difficult to work with) and Spaghetti Code as code smells shows that programs incurring these two anti-patterns are more time consuming, need more effort, and lead developers to answer comprehension questions less correctly, but not reading more classes.

#### 中文

对包含 Blob（即难以处理的代码）和 Spaghetti Code 作为代码异味的程序理解研究表明，包含这两种反模式的程序更耗时，需要更多努力，导致开发者回答理解问题的正确率更低，但不会阅读更多类。

#### 通俗解释

代码异味对理解的影响就像"难懂的代码更难懂"：Blob（大而复杂的类）和Spaghetti Code（像意大利面一样乱的代码）让开发者理解代码更费时、更费力，而且理解错误更多。就像看一篇逻辑混乱的文章，看了很久还是理解错了。即使看了很多类，也理解不对，因为代码本身就有问题。

---

### How to Automate Code Smells Detection? / 如何自动化检测代码异味？

#### English

Formulate what constitute a code smell. Then, mine the code to extract entities and compute metric values. Many open-source code can generate the control flow graph or AST of a project written in any programming language. There are also many code projects to compute various metrics. AST: Abstract Syntax Tree.

#### 中文

制定构成代码异味的规则。然后，挖掘代码以提取实体并计算度量值。许多开源代码可以生成用任何编程语言编写的项目的控制流图或 AST。还有许多代码项目可以计算各种度量指标。AST：抽象语法树。

#### 通俗解释

自动化检测代码异味就像"用工具找问题"：先定义什么是代码异味（比如"函数超过50行"、"类超过500行"），然后用工具分析代码，计算各种指标（比如代码行数、复杂度、耦合度等），找出符合异味特征的代码。就像用体检设备，设定标准（比如血压>140算高），然后自动检测。AST（抽象语法树）就像代码的结构图，工具可以分析这个图来找问题。

---

## 4. Code Refactoring / 4. 代码重构

#### English

Refactoring is to improve code structure and organization. Triggering points: code review and in code maintenance. A refactoring process includes: identify code that needs refactoring, apply refactoring techniques, verify correctness of refactoring, and test to ensure functionality is unchanged.

#### 中文

重构是改进代码结构和组织。触发点：代码审查和代码维护。重构过程包括：识别需要重构的代码，应用重构技术，验证重构的正确性，以及测试以确保功能未改变。

#### 通俗解释

重构就像"重新整理房间"：房间能住（代码能跑），但东西乱（代码结构乱），重新整理一下，让房间更整洁（代码更清晰）。**不改功能**，只是改结构。触发点：代码审查时发现有问题，或者维护时发现难改。过程：找到要重构的代码，应用重构技术（比如提取函数、拆分类），验证改对了（测试），确保功能没变。就像整理房间，东西还是那些，但放得更整齐了。

---

### Tool Support / 工具支持

#### English

Every good IDE (e.g., Eclipse, Visual Studio) has a menu of popular refactoring to assist developers to manage their code. Use them or do it manually. Press "Alt + Shift + T" in Eclipse. Press "Ctrl + ." in Visual Studio.

#### 中文

每个好的 IDE（如 Eclipse、Visual Studio）都有一个流行的重构菜单来协助开发者管理代码。使用它们或手动执行。在 Eclipse 中按 "Alt + Shift + T"。在 Visual Studio 中按 "Ctrl + ."。

#### 通俗解释

重构工具就像"自动整理工具"：IDE（开发环境）提供重构功能，比如"重命名"（改名字，所有地方自动改）、"提取函数"（把一段代码提取成函数）、"移动方法"（把方法移到别的类）等。用工具比手动改安全，因为工具会保证改对。就像用整理工具整理房间，比手动整理更不容易出错。

---

### Why, What, and How to Refactor? / 为什么、什么以及如何重构？

#### English

A study on Windows development team in Microsoft shows that developers perform manually, improve code readability and maintainability, worry about regression bugs and build breaks. The symptoms of code that help developers initiate refactoring include code smells, technical debt, and maintainability issues.

#### 中文

对微软 Windows 开发团队的研究表明，开发者手动执行，提高代码可读性和可维护性，担心回归错误和构建中断。帮助开发者启动重构的代码症状包括代码异味、技术债务和可维护性问题。

---

### Refactoring Correctness and Implication / 重构的正确性和影响

#### English

Refactoring may improve or deteriorate code. We need to carefully verify the correctness of refactoring. Not all refactoring is always useful. A study by Lacerda et al. (2020) shows that refactoring can improve or deteriorate code quality.

#### 中文

重构可能改善或恶化代码。我们需要仔细验证重构的正确性。并非所有重构都总是有用的。Lacerda 等人（2020）的研究表明，重构可以改善或恶化代码质量。

---

### Summary / 总结

#### English

Maintaining code structure is important. Accumulating problems in the code will lead to have more code changes, more latent bugs, and less comprehensible code "in the future". Manage the amount of code smells in code. Refactor the code to improve code readability and maintainability, either manually or with tool assistance, if developers are confident about validation of changes and able to handle code changes across different branches in version control system. Note that removing all of them is never an option.

#### 中文

维护代码结构很重要。代码中积累的问题将导致未来更多的代码更改、更多的潜在错误和更不易理解的代码。管理代码中代码异味的数量。如果开发者对更改的验证有信心，并且能够处理版本控制系统中不同分支的代码更改，则重构代码以提高代码可读性和可维护性（手动或使用工具辅助）。注意，删除所有代码异味从来不是一个选项。

---

## Additional Detail / 补充要点

### Fundamental Concepts / 基础概念

#### English

**Core Principles**: Abstraction (separate purpose from interface), Information Hiding (minimize interface exposure), Encapsulation (restrict internal knowledge exposure). High cohesion and low coupling improve maintainability, reusability, and complexity control.

#### 中文

**核心原则**：抽象（目的与接口分离）、信息隐藏（接口少暴露）、封装（限制内部知识曝光）。高内聚低耦合提升可维护/复用/复杂度控制。

---

### Coupling and Cohesion Types / 耦合和内聚类型

#### English

**Coupling Types** (worse → better): Content, Common, External, Control, Stamp, Data.

**Cohesion Types** (worse → better): Coincidental, Logical, Temporal, Procedural, Communicational, Sequential, Functional.

#### 中文

**耦合类型**（坏 → 好）：内容、公用、外部、控制、标记、数据。

**内聚类型**（坏 → 好）：偶然、逻辑、时间、过程、通信、顺序、功能。

---

### SOLID Principles / SOLID 原则

#### English

**Five Principles**:
- **SRP**: Single reason to change
- **OCP**: Open for extension, closed for modification
- **LSP**: Subclasses should be substitutable
- **ISP**: Split interfaces to avoid unused implementations
- **DIP**: High-level modules depend on abstractions, dependency injection

#### 中文

**五个原则**：
- **SRP**：单一变更理由
- **OCP**：扩展开放/修改关闭
- **LSP**：可替换子类
- **ISP**：拆分接口避免无用实现
- **DIP**：高层依赖抽象、依赖注入

---

### Code Smell Impact / 代码异味影响

#### English

**Effects**: Increase change frequency, defect rate, and understanding cost. Static metrics (CBO, WMC, LOC, ATFD, LAA, etc.) can assist automated detection.

#### 中文

**影响**：提升变更频率、缺陷率、理解成本。静态度量（CBO/WMC/LOC/ATFD/LAA 等）可辅助自动化检测。

---

### Refactoring Practice / 重构实践

#### English

**Process**: Optimize structure without changing behavior. Triggers: review/maintenance/smells. IDE automation (rename, extract function/class, move, inline, etc.). Requires accompanying tests to prevent regression.

#### 中文

**过程**：在不改行为下优化结构。触发点：评审/维护/异味。IDE 自动化（重命名、提取函数/类、移动、内联等）。需配套测试防回归。

---

### Code Smell Management / 代码异味管理

#### English

**Strategy**: Don't need to "zero out" all smells. Need to evaluate benefits/risks/costs, incorporate smells/technical debt into backlog priority management.

#### 中文

**策略**：不必"清零"异味。需评估收益/风险/成本，将异味/技术债纳入待办优先级管理。

---

## Code Smells & Detection / 代码异味与检测

#### English
- Code smell = violation of design principles; anti-patterns that harm maintainability/readability/evolution.
- Impacts: classes with smells change more often, incur more bug-fixing patches; smells like Blob/Spaghetti increase comprehension time and reduce accuracy.
- Detection: static analysis + metrics (e.g., CBO, WMC, LOC, ATFD, LAA, CC, LCOM, NOM, NPATH); AST/CFG mining; tools (SonarQube, PMD, Checkstyle, IDE inspections).
- Not all smells must be removed; prioritize by risk/impact.

#### 中文
- 代码异味=违背设计原则的反模式，损害可维护性/可读性/演化性。
- 影响：带异味的类更高变更率、更多缺陷修复；Blob/Spaghetti 等增加理解时间、降低正确率。
- 检测：静态分析+度量（如 CBO、WMC、LOC、ATFD、LAA、圈复杂度、LCOM、NOM、NPATH）；AST/CFG 挖掘；工具（SonarQube、PMD、Checkstyle、IDE 检查）。
- 不是所有异味都要立刻清除，按风险/影响排序处理。

---

## Refactoring Process / 重构流程

#### English
- Trigger: code review, maintenance, smell detection.
- Steps: identify smell → choose refactoring → small safe steps → run tests → commit → review.
- Common refactorings: extract/inline method/class, rename, move, pull up/push down, replace temp with query, introduce parameter object, simplify conditional, reduce duplication.
- Tooling: IDE automated refactors; CI + tests guard regressions.

#### 中文
- 触发：代码评审、维护、异味检测。
- 步骤：识别异味→选重构手法→小步安全修改→跑测试→提交→复审。
- 常见手法：提取/内联方法/类，重命名，移动，提升/下移，替换临时变量，引入参数对象，简化条件，消除重复。
- 工具：IDE 自动重构；CI+测试防回归。
