# Introduction

## Statement of the problem

Creating identifiers when writing programs is an important and necessary part of every developer’s job. As opposed to many other words used in source code, identifiers are created by the developer, not preset by libraries or programming languages. This fact in itself creates a task that must be addressed: Identifier names must be created and thought-over with care. There is not much attention paid to this idea due to the fact that most names are functional and therefore any name suffices. Though, this functionality only applies at the machine level. Computers do not care about the names of identifiers, but humans do. In this way, they act as a form of correspondence between writers and readers of code. Since identifiers are assigned to and reference entities in programs, it is vital that they are well-created for the sake of readability. To experienced professionals this task should come easily, but to students it is not so simple. Without the experience to know how to properly format an identifier based on its context, student-created identifiers often fall short of expectations. One such formatting aspect that is associated with them is name length. Name length is a good indicator of the general descriptiveness of a word. By conducting a Python study with the identifiers of students, Python libraries and textbooks, Wang et al. demonstrated a clear distinction with the identifier lengths of students [@Wang].

![The naming length distribution of integers and floats in different data sets [@Wang].](images/int-float_naming.jpg)

Figure 1 shows the lowest name length out of the three sources being students at an average of 3.82 characters and a standard deviation of 3.57 characters. In contrast, the combined five libraries have an average length of 6.38 characters and a standard deviation of 4.08 characters. Similarly the textbook has an average length of 6.35 characters and a standard deviation of 4.10 characters.

![The naming length distribution of functions in different data sets [@Wang].](images/function_naming.jpg)

Figure 2 also shows the lowest name length out of the three sources being students at an average of 4.35 characters and a standard deviation of 4.34 characters. The combined five libraries have an average length of 12.22 characters  and a standard deviation of 4.73 characters. The textbook has an average of 7.79 characters and a standard deviation of 2.76 characters.

![The naming length distribution of arguments in different data sets [@Wang].](images/argument_naming.jpg)

Continuing with the pattern, Figure 3 shows the shortest name lengths coming from students with an average of 1.86 characters and a standard deviation of 2.36 characters. The combined five libraries have an average length of 4.97 characters and a standard deviation of 1.94 characters. The textbook has an average of 5.04 characters and a standard deviation of 5.27 characters.

![The naming style distribution of integers and floats in different data sets [@Wang].](images/int-float-style.jpg)

Table: Eight commonly used naming styles [@Wang]

| Naming Styles                                       | Example     |
|-----------------------------------------------------|-------------|
| single lowercase letter                             | a           |
| single uppercase letter                             | A           |
| lowercase (without underscores)                     | item        |
| lowercase with underscores                          | Item_method |
| uppercase (without underscores)                     | SIZE        |
| uppercase with underscores                          | ITEM_SIZE   |
| capitalized word (or CamelCase) without underscores | BenchAark   |
| capitalized words with underscores                  | Bench_Aark  |

Figure 4 shows the naming styles that are most common amongst each source from Table 1. With students, single lowercase style had the highest percentage at 38.02%. Both the textbook and the five libraries resulted in the lowercase without underscore style being the most prevalent. The libraries consisted of 50.64% with this style and the textbook consisted of 35.90%.

Three possible explanations exist for the trend of short identifier lengths of the student code analyzed with Figures 1-4. The first possibility for identifiers being short is intentional obfuscation. This is defined as transforming "the program's code into another version, which is syntactically different but semantically the same" [@Rajkumar]. This method is often used by programmers "to make the code more complex and difficult to understand" [@Rajkumar]. Often it is used to either protect against malicious attacks or to make it difficult for others to utilize their code.

Given that the focused source of data in Figures 1-4 comes from students rather than professional developers, it is safe to say that unintentional obfuscation is the more likely explanation for short identifier lengths. The first reason this may occur is due to an overall lack of sufficient knowledge regarding identifiers. Due to the nature of identifiers not requiring specific conventions, the concept of good naming practice must be taught to students. Without adequate explanation for them to name identifiers in descriptive ways, students tend to steer toward the use of one character names as seen in Figures 3 and 4. Figures 1 and 2 also demonstrate this shortcoming, though the student averages are slightly higher (though still too short to be adequately descriptive).

The second reason that unintentional obfuscation may occur is due to student practices in other disciplines. Namely, mathematics (particularly algebra) focuses on variables. While programming and algebra both leverage variables, they are treated very differently. Saraswati et al. state that "Most of learning processes are only acquainted with the formal strategy in teaching linear equation with one variable" [@Saraswati]. This means that algebra students use formal tactics to deal with equations that are often linear rather than abstract tactics like those that are necessary to understand programmatic identifiers. In addition, linear equations consist of one or more variables defined with one character each. In this way, students with preset notions about variable meaning based on algebraic concepts may tend to name programmatic variables/identifiers in the same fashion.

Along with this, the fundamental concept that is learned in algebra is to solve for the variable(s) in an equation. In Computer Science this concept is not the same. Rather, variables are used as functional assignments to leverage in other locations of a program. These assignments also have the capacity for more than just numbers (strings for example). Given this, students are required to learn a new understanding of variables/identifiers in order to create better names. To learn better practices and instill beneficial habits regarding programmatic naming conventions, NamePy is designed to help. With the aid of a practical tool in addition to classroom teaching of the proper concepts, the students trends that are seen in Figures 1-4 should shift toward the trends of the textbook and libraries.

The name-length and style examples show one piece of the puzzle that inexperienced programmers are faced with. While Python identifiers can technically be named freely, there is an importance to consider in carefully choosing those names. Identifiers that are not thoughtfully named will likely cause difficulty for third party readers of the code. Even though `x` may be a variable that is able to identify an assignment, audiences of the code will not have this insider knowledge and therefore will not be able to read and comprehend the program in an effective manner. Better yet, developers themselves will often have trouble in understanding their own code when they revisit it after a length of time. Detailed comments help in this case, but readability is still compromised when it is necessary to repeatedly refer to them. In addition, clear identifiers that are accurately descriptive are instrumental in debugging code as well as increasing parsing efficiency due to an increase in readability and comprehension.

```python
o = int(input("option(1/2):"))
if(o == 1):
    x = float(input("Temperature in Celsius:"))
    y = 1.8 * (x) + 32.0
    print("Temperature in Fahrenheit:",y)
elif(o == 2):
    y = float(input("Temperature in Fahrenheit:"))
    x = (f-32)/1.8
    print("Temperature in Celsius:",x)
```

By using single lowercase variables in the sample program above, it is difficult to keep track of each variables' meaning. To do so, the assignments of those variables must be referred to constantly.

```python
option = int(input("option(1/2):"))
if(option == 1):
    celsius = float(input("Temperature in Celsius:"))
    fahrenheit = 1.8 * (celsius) + 32.0
    print("Temperature in Fahrenheit:",fahrenheit)
elif(option == 2):
    fahrenheit = float(input("Temperature in Fahrenheit:"))
    celsius = (f-32)/1.8
    print("Temperature in Celsius:",celsius)
```

By using longer, descriptive variable names in the sample program above, it is easier to keep track of each variables' meaning. There is no need to look back at the assignment statements because the names are descriptive enough to know their function.

Factors that can be associated with the quality of identifiers are length, style, grammar, existence of associated comments and comprehension. These naming qualities will be further discussed regarding their impact on overall identifier quality.

## Overall aim

The solution presented to solve this problem is NamePy, an identifier-focused linter for beginning Python developers. The tool will aim to assist students with creating quality identifiers that are similar to those made my professionals. At a glance, the tool will:

- Be leveraged by Python users
- Follow a predetermined set of standards
- Output error/suggestion messages when standards are not met
- Provide program scores

The study by Wang et al. used name-length and name-style for comparison to determine some "ideal" standards/suggestions for Python students [@Wang]. This same type of logic is what will drive the set of standards that the tool will use to evaluate identifiers. The features and their specifics are determined by the research done in the next section. With the features and their limits decided, the tool will parse its given program, find its identifiers and analyze them based on the standards. If names are determined to conflict with the predetermined rules of the linter, error messages will be produced in an attempt to help the user solve the issues. In addition to this, scores will be produced based on the evaluation for optimal visualization.

As a student-aimed tool, NamePy is intended to be used as a resource to instill good habits in student developers. While many popular linters are used by experienced users in their project builds, this tool is meant to be "graduated" from. Used for evaluation, it will help students to more quickly bridge the gap that exists between low and high level programmers in regard to identifier naming. With this intent reached, beginning Python developers will improve their identifier quality and therefore overall code quality for all projects to come.

## Motivation

This project idea initialized with my background in the Computer Science field starting as a beginner. Given that there is much to learn at the early stages of programming, naming conventions was one area that had a large bridge to cross. Until I gained more experience, the importance of identifier aspects like style, grammar and content was not clear. A large amount of trial and error was used until fundamental ideas and practices were achieved. Figures 1-4 suggest a similar experience among other students. With prior experience, I am pursuing this project to aid other developers in the struggles that I faced.

Another goal of the creation of NamePy is to explore the complexities of programmatic naming conventions. Given the somewhat creative nature of identifiers there is inherently no perfect or ideal name for any given assignment. This is where research comes into play to determine a robust set of tool standards based on the findings of others. In the end, there are only a few rules that should be followed (namely PEP8) when naming in Python. NamePy provides suggestions based on previously found evidence to increase the overall quality of identifiers. Evidence involving identifier length, style, grammar and associated comments as well as the topics of reading comprehension and linting are considered in the following section.

# Related Work

There are several aspects to consider when determining an adequate identifier name. It is necessary for it to be long enough to be descriptive, but short enough for comprehension. It is necessary for it to use part-of-speech grammar, but it is not certain what grammar is most effective. It is necessary for it to use a style type that is required by the program, but a style type is not always required. It is not always necessary to include descriptive comments, but there could be a correlation with comprehension. It is necessary for it to be easily comprehended, but many of the previously mentioned topics could affect its ability to do so. There is no correct or perfect way to name identifiers due to personal preference, but this research provides a way for developers to enforce a standard that will yield overall better results.

## Background of Identifiers

An identifier in a programming language is the term used to describe lexical tokens that name various things in a program (variables, functions, etc.). To create names for identifiers, it is important to view them in terms of language. Derek Jones makes the connection that "There are a number of situations in everyday life that require the use of arithmetic and binary concepts (e.g., switch light on/off, change mind and flag an error), and measurements confirm that words and phrases commonly used in human conversation are carried over into identifier names" [@Jones]. With this in mind, identifiers can be thought of in a largely similar way to natural language. This paves the way to looking at topics such as word length, grammar and comprehension when thinking about identifier creation. In addition to this, Annette Vee makes the distinction that "Computers are also socially contextualized; they are objects that are both controlled by language and can be used to manipulate linguistic symbols" [@Vee]. This defines identifiers as the lexical tokens that they are. This fact is what makes identifiers unique to programming as opposed to natural language. So, while it is important to view them as a type of language themselves, it is also important to remember their purpose in code: to symbolize.

## Identifier Length

Binkley et al. present a study that looks at short-term memory in relation to identifier names. The study was conducted in Java rather than Python, but nonetheless it remains relevant as a study conducted in a similar programming language. Several aspects of identifier names were seen to have affected the participants’ comprehension. One finding showed that more syllables equated to longer processing times and worse recall accuracy [@Binkley2009]. This shows that in general, longer identifiers (more syllables often equates to longer words) will take longer and be more difficult to comprehend. This contradicts the idea of making identifiers as descriptive as possible because they may end up too long at times. Rather, it suggests that they need to be as short as possible without compromising how descriptive they are. Interestingly, it was also found that longer name lengths had greater influence on experienced programmers [@Binkley2009]. This suggests that the necessary length of identifiers for better comprehension may change as a programmer becomes more experienced.

The use of "common identifiers" was also seen to improve recall accuracy with the participants of the study [@Binkley2009]. This shows that a larger amount of uniformity in identifier names (using more common words that are used often in the community as a whole) improves comprehension. More will be discussed about uniformity in the following sections.

Schankin et al. present another study that draws conclusions about longer, more informative identifier names. They state that “Code comprehension was assessed by measuring the time needed to find a semantic defect in the code, assuming that such a defect can only be detected if the code has been understood.” It was found that (particularly with more experienced developers) there was better comprehensibility with more descriptive names. In contrast to Binkley's study, it does not highlight the importance of keeping names concise. Similar to the previous study, developer experience has an affect on how short an identifier can be made while maintaining descriptiveness [@Schankin].

Another study performed by New et al. deals with a slightly different but fundamentally related topic: lexical decision. Using the English Lexicon Project, they “reexamined the effect of word length (number of letters in a word) on lexical decision” [@New]. Binkley's study that was previously mentioned focused on short term memory (shortening identifiers) while Schanklin's study focused on long term memory (lengthening identifiers). Compared to both of these, this study found that the effect of word length was not clear [@New]. Because both studies suggested different things, an unclear result justifies that contrast. These findings suggest that ideal identifier length is fluid according to various aspects. Given this, the tool created will not be able to suggest very specific standards regarding length, but rather it will lend guidance in a broader sense.

## Identifier Style

Davis et al. (also authored by Binkley as we have seen before) present an interesting study about identifier style in relation to effort and comprehension. The two main styles are examined in the study (camel case and snake case) in various ways to determine comprehensibility. The main takeaway of the article is that camel case yields better comprehension at the cost of more effort [@Binkley2013]. This project is focused in Python, so styles are determined by the official style guide. For example, class names should be typed with the **CapWords** convention and functions names should be typed with the **snake_case** convention [@Pep8]. Though the article's findings do not specifically matter for the purpose of this project, they prove a point of uniformity. The fact that there is a difference in comprehension between styles at all proves that using a uniform style in a program has value. Essentially, if Python developers had the freedom to use various styles in various places as they saw fit, the code would be less comprehensive in general and less readable to developers that follow the standard. Davis et al. give one piece of evidence here by showing the difference in comprehension between just two styles. It is clear that reading code with various styles (that are each easier or harder to comprehend) would result in code that is overall much harder to comprehend. The main takeaway is that uniformity is an important characteristic of identifier style, and thus it may be important relating to other identifier topics too.

## Identifier Grammar

Newman et al. present an investigation into identifiers in relation to the parts-of-speech used in them. The study found various results that could relate to this project. One such finding was that “Function identifiers are more likely to contain a verb and be represented by a verb phrase” [@Newman]. This makes sense due to the fact that functions have actions and verbs can adequately describe actions. This foundation of identifiers describing things based on their role (for instance a function completing an action) is key to creating understandable identifiers. This can be seen if, for instance, a function identifier were named with a noun. It would not adequately describe the function and therefore not be very comprehensive. This finding also shows that grammar patterns are naturally seen even with no direct convention required when creating identifiers. The fact that certain grammar conventions more adequately describe certain identifier types as well as the fact that these conventions are often seen naturally shows that a uniformity of grammar conventions is beneficial. Similar to uniformity with identifier style, maintaining consistent grammar conventions would aid with comprehension.

## Associated Comments

Takang et al. present a study that presents a new, rather overlooked idea when looking at identifiers: comments describing those identifiers. The results yield a surprisingly low correlation between program comprehension and identifiers being paired with comments. One potential reason for this was stated that "if the comments did not provide any new information that is not already conveyed in the identifier names, then the effect would be insignificant considering that exactly one of them would do just as well" [@Takang]. This reinforces the importance of making identifiers descriptive. Comments are not a technical part of source code, rather they are an aid for readers. As with any aid, they should not be relied on consistently. Rather, the identifiers should be relied on for code comprehension and therefore they should be the descriptive ones that make comments superfluous.

Song et al. present the fact that "some researchers have tried to define identifiers with a long descriptive name in order to implement self-commented code. However, it makes code comprehension more difficult" [@Song]. It is true that there are practical limits to identifier lengths and therefore limits to how descriptive they can be. Because of this, a combination of descriptive identifiers and descriptive comments is the best answer.

## Reading Comprehension

Schoeman presents an eye-tracking study that involves reading skills in relation to programming. Her results showed that there is a direct correlation between reading skill and program comprehension. Given that younger students are generally those that lack in reading skills, the study would be mostly relevant to student developers. One main takeaway is that “program flow is not sequential, requiring a substantial degree of selective attention, organizing and reflecting, executed simultaneously in the limited working memory” [@Schoeman]. This idea is helpful when thinking about identifiers as well. It is essential to know that the reader is going through a complex flow in their head when trying to understand the program as a whole (identifiers included). This makes it even more important for identifiers to fit in the program and flow smoothly by having the best names possible.

Annette Vee has an exert in her book that reads "Like reading, [programming] is comprised of a large number of abilities that interrelate with the organization of the learner’s knowledge base, memory and processing capacities, repertoire of comprehension strategies, and general problem-solving abilities. ... As reading is often equated with skill in decoding, 'learning to program' in schools is often equated with learning the vocabulary and syntax of a programming language. But skilled programming, like reading, is complex and context-dependent" [@Vee]. This exert adds onto the previous point that there is a complexity associated with programming similar to that of linguistic aspects of reading. Since the processes are similar, there is justification in saying that ability to read and comprehend written text has bearing on ability to read and comprehend programs. These connect via literacy according to Vee. This will be discussed in the `Coding as Literacy` section. This exert also emphasizes that programming is based on context. Identifiers play into this role by creating the context for contextual dependance itself. Identifiers are the signifiers of entities in programs, so their names directly determine how readers comprehend those programs. Once they are named, they are used in various parts of the code. They consist of the information that is needed for readers to understand what is happening in a given program. In this way, identifiers are the context for programming that is highly context-dependant. Because of the reliability that this assumes of identifiers, the importance of quality name creation is prevalent.

The temperature conversion examples from the Introduction demonstrate the importance of context in programming.

```python
o = int(input("option(1/2):"))
if(o == 1):
    x = float(input("Temperature in Celsius:"))
    y = 1.8 * (x) + 32.0
    print("Temperature in Fahrenheit:",y)
elif(o == 2):
    y = float(input("Temperature in Fahrenheit:"))
    x = (f-32)/1.8
    print("Temperature in Celsius:",x)
```

The assignment of `y` in the line  `y = 1.8 * (x) + 32.0` includes the variable `x`. In this case, `x` could mean anything. In particular, `x` is a common mathematical variable, so it could represent any number. This is not beneficial regarding the context of the line because the reader is required to look back in order to comprehend what is occurring.

```python
option = int(input("option(1/2):"))
if(option == 1):
    celsius = float(input("Temperature in Celsius:"))
    fahrenheit = 1.8 * (celsius) + 32.0
    print("Temperature in Fahrenheit:",fahrenheit)
elif(option == 2):
    fahrenheit = float(input("Temperature in Fahrenheit:"))
    celsius = (f-32)/1.8
    print("Temperature in Celsius:",celsius)
```

The assignmnet of `fahrenheit` in the line `fahrenheit = 1.8 * (celsius) + 32.0` includes the variable `celcius`. In this case, this variable clearly refers to the celsius temperature that is being used in the equation for fahrenheit. Because the identifier is named well, the code can be comprehended much more easily.

Given these points about reading comprehension, it should also be possible to develop a readability score for identifiers in a similar way to scoring written text. By incorporating the other mentioned topics, a score could be further elongated to provide better and more descriptive score results.

## Linting

Linting originates from a Unix utility "which examines C source programs, detecting a number of bugs and obscurities." It was used as a tool to enforce the rules of C more than the compiler alone [@Johnson]. This early practice of adding linters to the pipeline of code-checking set the stage for future linters like NamePy. From the original C linter to today's Python linters, the fundamental purpose has not changed. In Python, "Linting highlights syntactical and stylistic problems in your Python source code, which often helps you identify and correct subtle programming errors or unconventional coding practices that can lead to errors" [@VSCode]. Essentially, linters are intended to catch errors in order to improve source code. The aim of this project is to do the same thing with identifiers. Poorly named identifiers will be caught and the user will have a better understanding of how to make them better. Given this, the methods outlined in the next section focus on linting at various levels in regard to identifiers.

One aspect of NamePy as a linter that Johnson directly states about C's *Lint* is that "Lint can afford to be wrong, since incorrectness and over-conservatism are merely annoying, not fatal" [@Johnson]. This speaks to the suggestive nature of NamePy fundamentally as a linter. Users are not required to follow the direction of the tool because it's produced errors do not suggest any functionality failures like a compiler does. NamePy's purpose is to improve Python identifiers in source code, but it is an educational instrument rather than a requirement. Linters also provide users the ability to break the writing-checking process into more than one part. Johnson states the benefit that "the programmer can concentrate at one stage of the programming process solely on the algorithms, data structures, and correctness of the program, and then later retrofit, with the aid of lint, the desirable properties of universality and portability" [@Johnson]. This idea will come into sight in the `Methods of Approach` section when discussing implementation location of NamePy.

Another term that is often used as a replacement for `linter` is `static analysis tool`. A list that is comprised of the widely used static analysis tools for every programming language can be found at [this](https://github.com/analysis-tools-dev/static-analysis) GitHub repository. Included in this list are three linters that hold high reputations and most closely resemble NamePy. These tools are `pylint`, `flake8` and `pycodestyle`. Being Python linters, they are intended to catch syntactical and stylistic errors in source code. It is important to note, though, that these tools (including NamePy) are largely suggestive in nature. The use of linters is not technically required in any instance unless otherwise specified by a manager of a project. PEP8 (the official Python style guide) notes that "A style guide is about consistency. Consistency with this style guide is important. Consistency within a project is more important. Consistency within one module or function is most important" [@Pep8]. This quote suggests that the importance of linting lies in the aspect of consistency. In this way, while linters are not required, they are encouraged due to the consistency that they bring. Ultimately, the creators of linting tools are able to choose the style guide that they follow. This may include rules from PEP8 as well as rules that are not official according to the Python language. Despite the rules (as mentioned before) the importance is the consistency that the tool brings. `pylint`, `flake8` and `pycodestyle` are comprised of style guides that many Python developers agree with and depend on. For this reason, NamePy will be compared to them in following section.

# Method of Approach

## Development Environment and Toolset

### Poetry

### Pytest

### LibCST

NamePy leverages LibCST as its main library to parse source code and extract information regarding identifiers. While one would normally use Python's built-in AST module to leverage syntax trees and parse them, LibCST has more to offer. Essentially, it "creates a compromise between an Abstract Syntax Tree (AST) and a traditional Concrete Syntax Tree (CST)" [@Libcst]. Unlike traditional syntax trees, this library is lossless in the sense that it has the ability to preserve all parts of the source code including things like comments, whitespace and parenthesis.

The main framework for NamePy stems from a previous project that I contributed to named CAStanet. There is a file that allows it to parse through either individual Python files or entire Python directories. A command line interface exists to perform various actions on the files. These features will also be used for this tool. At the root, the tool uses `matchers` to locate specific source code items such as assignment statements, function definitions and comments. Using this ability, various functions will be created to locate identifiers and analyze them. The tool will look for specified criteria in all of the identifiers and develop a score based on how well the criteria were met. It will also report back to the user specific errors with identifiers in a similar way to other popular linters.

```python
def var_length(path:str):
    cast_dict = file_or_directory(path)
    for cast in cast_dict.values():
        var_list = match.findall(cast, match.Assign())
```

The LibCST library provides the groundwork to easily extract necessary information from programs for running functions that meet the tool's linting and scoring goals.

## Levels of Implementation

### IDE Level

IDE's (Integrated Development Environments) are software applications that are leveraged by most developers to manipulate source code. Given the popularity and versatility of Visual Studio Code, I am choosing to use it to discuss linting at the IDE level. VSCode extensions is a large feature that gives the software application a lot of its versatility. Users are able to quickly and simply search for and install extensions that can be found on the extension marketplace.

![Extension Marketplace on Visual Studio Code](images/vscode-extensions.jpg)

What is beneficial about linting at this level is the very short length of time between making an error, identifying and fixing it. A participant in a study performed by Tómasdóttir et al. stated that "If you can get some bugs away from your code so early as when you write it, it’s great" [@Tomasdottir]. The rigidity of this concept can be seen by the sheer amount of VSCode extensions that exist for the purpose of catching errors as they are written. By shortening the time between making a mistake and finding/fixing it, the hardship of fixing them when they are found during compile or runtime is decreased [@Tomasdottir].

Considering lower-level, junior developers, it is important to look at how catching errors at the IDE level affects learning. In general, "corrective feedback is proven to be very useful in terms of acquiring further cognitive skills." Obermüller et al. also states how "positive feedback is considered to have better effects on motivational aspects than negative feedback" [@Obermuller]. Linters are inherently negative/corrective in nature, so they will always have some sort of negative impact on student motivation. Though, IDE errors appear in a very slow, one-by-one fashion compared to linters at the CI level. This suggests minimal negative impact on student motivation while maintaining corrective feedback to acquire further cognitive skills.

Despite the above information, the IDE level is not the ideal level to apply the tool with students due to cognitive complexity. When comparing the time of linting between the IDE level and a separate level (such as GitHub Actions), it can be seen that there is a higher cognitive complexity at the time of the IDE. This is due to the fact that the given task at the IDE level is to write code. By adding a linter at the same time, the difficulty of that task is increased due to the fact that errors are presented at the time of writing. Robinson presents in his article that "The effects of complexity differentials should be revealed by the fact that the cognitively simpler, less resource-demanding task will involve a lower error rate, and/or be completed faster, and be less susceptible to interference from competing tasks than the more complex task" [@Robinson]. This is important due to the fact that students will have a higher error rate given higher cognitive complexity when coding. Since the goal of the tool is to help students improve their source code, implementing it in a way that is too complex may hurt them instead.

### CI Level

While the IDE level of linting possesses many tools that developers use to address feedback, this project's tool is intended for students, so evaluation is more important than formative feedback. IDE level linting is not normally capable of providing evaluation metrics, so a different route would be required. Implementation of the tool in a similar manner as `Pylint` for instance (the ability to run the linter in a VSCode window upon saving) would provide an evaluation, but this integration does not fit the scope of the project. Rather, the use of GitHub Actions is a better choice to provide evaluative feedback to student developers.

Referring back to Vee, in addition to the fact that coding is a literacy, she also enforces the fact that literacy is developed (or learned) and not inherent. Suggesting both that literacy is a learned skill and that this is especially prevalent in students, Vee states that "Sophisticated literacy skills such as analysis and argument have always been necessary at the highest educational echelons, but we now expect all students to achieve this level of skill under the rubric of literacy" [@Vee]. This is an important connection to make considering the evaluative nature of my tool. Student developers require evaluation on their work because they are constantly learning.

Keeping in mind that coding is a literacy, Sommers provides insight based on his research on student writers. He found that students often did not revise their work because they lacked "a set of strategies to help them identify the "something larger" that they sensed was wrong and work from there" [@Villanueva]. In the same way, IDE level visualization of errors do not always help students learn how to revise their code. Rather, evaluation metrics at the GitHub Actions level would help students learn their mistakes and correct them in a "fixing something larger" manner. This is what makes the CI level optimal for this application.

#### GitHub Actions

Identical to popular linters such as `Pylint` the tool can be inserted into GitHub Action workflows for automation. This does not require any additional implementation to the tool itself. To do so, a `.yml` file can be created that installs and runs the tool on the given files/directories inside of a virtual environment. GitHub's documentation provides information for any developer to be able to implement the tool in this manner. Including the tool in a class of students' continuous integration build would be beneficial because it would set a standard of linting that would be followed by the whole class. Compared to running it locally, putting the tool in a build workflow would take away the manual labor and therefore make it easier and more useful. For student developers this is also a good option because instructors can create workflows incorporating it. In this way students do not have to do any extra work and they are able to automatically see errors as they appear in GitHub.

### Local Use

Like other open source linters, this tool will have the capacity to be installed locally on machines and to be run with software projects that students work on. It will be available on PyPI for users to install with the `pip` command and it will have the capacity to run in a similar manner to other linters such as `Pylint`. This method of using the tool is the most basic for student developers. Given that it is the same process as other popular linters, it is expected that any user will know how to use it given the documentation. Though it is the most basic, it does not offer any sort of automation. In order to check for linting errors, the user would need to manually run the tool every time they wished to check their work. Initial setup of the tool is the most simplistic compared to the previous two levels, but continued use of it is the most time-demanding. It will remain as a standard way to use the tool for any user that wishes to do so, but leveraging GitHub Actions is recommended.

## Installing NamePy

### Reporting Results

## NamePy's Components

### Feature Comparison

The following table displays the differences in features between NamePy and three other popular linters. It defines the feature set that NamePy possesses and compares it to the others in order to show both similarities and singularity.

| Feature                                      | NamePy | pylint | flake8 | pycodestyle |
|----------------------------------------------|--------|--------|--------|-------------|
| Ability to Run in GitHub Actions             | ✓      | ✓      | ✓      | ✓           |
| Enforce PEP8 Naming Conventions              | ✗      | ✓      | ✓*     | ✓           |
| Check Identifier Length                      | ✓      | ✗      | ✗      | ✗           |
| Check Identifier Grammar                     | ✓      | ✗      | ✗      | ✗           |
| Check for Identifiers w/ Associated Comments | ✓      | ✗      | ✗      | ✗           |
| Error Evaluation Score                       | ✓      | ✓      | ✗      | ✗           |

* Only with optional PEP8 plugin

The feature comparison table highlights the main features of NamePy next to `pylint`, `flake8` and `pycodestyle`. The ability to run a linter in GitHub Actions is a feature that will be discussed in this section. It is an important feature for any linter to have, so it is present in all four. Checking for PEP8 standards was initially going to be a part of the feature set, but it was decided against due to the fact that it already exists among other linters. The key focus of NamePy is its unique feature set. To enfore PEP8 standards, other linters can be used in conjunction with it. Multiple topics mentioned in the `Related Works` section have been implemented as features including identifier length and grammar checks as well as associated comment checks. Because these three features analyze identifiers in a way that research suggests is effective, they are unique to NamePy. Finally, an evaluation score based on the amount of errors in a program is a feature that both NamePy and `pylint` possess, but not `flake8` or `pycodestyle`.

### Feature: Identifier Length

### Feature: Identifier Grammar

### Feature: Associated Comments

### Feature: Error Evaluation Score

## NamePy's Output

### Success Messages

### Error Messages

### Warning Messages

# References

::: {#refs}
:::
