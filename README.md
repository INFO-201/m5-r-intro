# Module 5: Introduction to R

R is an extraordinarily powerful open-source software program built for working with data. It is one of the most popular tools for performing advanced data techniques, including statistical analysis, machine learning, and data visualization. R will be the primary programming language for this course, and we will develop a strong understanding of how to leverage the power of R.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Contents**

- [Resources](#resources)
- [Programming with R](#programming-with-r)
- [Running R Scripts](#running-r-scripts)
  - [Command-Line](#command-line)
  - [RStudio](#rstudio)
- [Comments](#comments)
- [Variables](#variables)
  - [Basic Data Types](#basic-data-types)
- [Getting Help](#getting-help)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Resources
- [Google's R Style Guide](https://google.github.io/styleguide/Rguide.xml)
- [DataCamp](https://www.datacamp.com/home) (awesome resource for interactive tutorials in R)
- [R Tutorial: Introduction](http://www.r-tutor.com/r-introduction)
- [R Tutorial: Basic Data Types](http://www.r-tutor.com/r-introduction/basic-data-types)
- [R Tutorial: Operators](https://www.tutorialspoint.com/r/r_operators.htm)
- [RStudio Keyboard Shortcuts](https://support.rstudio.com/hc/en-us/articles/200711853-Keyboard-Shortcuts)

## Programming with R
R is a **statistical programming language** that allows you to write code to work with data. It is an **open-source** programming language, which means that it is free and continually improved upon by the R community. The R language has a number of functionalities that allow you to read, analyze, and visualize datasets.

  - _Fun Fact:_ R is called "R" because it was inspired by and comes after the language "S", a language for <strong>S</strong>tatistics developed by AT&T.

So far in this course you've leveraged formal language to give instructions to your computers, such as by writing syntactically-precise instructions at the command-line. Programming in R will work in a similar manner: you will write instructions using R's special language and syntax, which the computer will **interpret** as instructions for how to work with data.

However, as projects grow in complexity, it will become useful if we can write down all the instructions in a single place, and then order the computer to _execute_ all of those instructions at once. This list of instructions is called a **script**. Executing or "running" a script will cause each instruction (line of code) to be run _in order, one after the other_, just as if we had typed them in one by one. Writing scripts allows you to save, share, and re-use your work&mdash;by saving instructions in a file, we can easily check, change, and re-execute the list of instructions as we figure out how to use data to answer questions. And because R is an _interpreted_ language rather than a _compiled_ language like Java, R programming environments will also give us the ability to execute each individual line of code in our script if we desire (though this will become cumbersome as the projects become large).

As we shift towards using R, we will be writing multiple instructions (lines of code) and saving them in files with the **`.R`** extension, representing R scripts. You can write this R code in any text editor (such as Atom), but we'll usually use a program called **RStudio** which is specialized for writing and running R scripts.

## Running R Scripts
R scripts (programs) are just a sequence of instructions, and there are a couple of different ways in which we can tell the computer to execute these instructions.

### Command-Line
It is possible to issue R instructions (run lines of code) one-by-one at the command-line by starting an **interactive R session** within your terminal. This will allow you to type R code directly into the terminal, and your computer will interpret and execute each line of code (if you just typed R syntax directly into the terminal, your computer wouldn't understand it).

With R installed, you can start an interactive R session on a Mac by typing `R` into the terminal (to run the `R` program), or on Windows by running the "R" desktop app program. This will start the session and provide you with lots of information about the R language:

![Interactive R session](img/r-interactive-session.png)

Notice that this description also include _instructions on what to do next_&mdash;most importantly `"Type 'q()' to quit R."`. Always read the output when working on the command-line!

Once you've started running an interactive R session, you can begin entering one line of code at a time at the prompt (`>`). This is a nice way to experiment with the R language or to quickly run some code.

- Note that RStudio also provides an interactive console that provides the exact same functionality.

It is also possible to run entire scripts from the command-line by using the `RScript` program, specifying the `.R` file you wish to execute:

![RScript from Terminal](img/rscript-terminal.png)

- On Windows, you would need to find the **absolute path** to the `RScript.exe` program _on your particular machine_ and use that.

  ![RScript from Windows Terminal](img/rscript-terminal-windows.png)

  This can be tricky; I recommend you just use RStudio instead.

### RStudio
RStudio is an open-source **integrated development environment** (IDE) that provides an informative user interface for interacting with the R interpreter. IDEs provide a platform for writing _and_ executing code, including viewing the results of the code you have run. If you haven't already, make sure to download and install [the free version of RStudio](https://www.rstudio.com/products/rstudio/download3/#download).

When you open the RStudio program (either by searching for it, or double-clicking on a desktop icon), you'll see the following interface:

![RStudio's interface](img/rstudio-interface.png)

A RStudio session usually involves 4 sections ("panes"), though you can customize this layout if you wish:

- **Script**: The top-left pane is a simple text editor for writing your R code. While it is not as robust as a text editing program like Atom, it will colorize code, "auto-complete" text, and allows you to easily execute your code. Note that this pane is hidden if there are no open scripts; select `File > New File > R Script` from the menu to create a new script file.

  In order to run your code, you have two options:

  1. You can run a section of your script by selecting (highlighting) the desired code and pressing the "Run" button (keyboard shortcut: `ctrl` and `enter`). If no lines are selected, this will run the line containing the cursor. _Protip:_ use `cmd + a` to select the entire script!

  2. You can run an entire script by using the `Source` command to treat the current file as the "source" of code. Press the "Source" button (hover the mouse over it for keyboard shortcuts) to do so. If you check the "Source on save" option, your entire script will be executed every time you save the file.

- **Console**: The bottom-left pane is a console for entering R commands. This is identical to an inetractive session you'd run on the command-line, in which you can run one line of code at a time. The console will also show the printed results from executing the script. _Protip:_ just like with the command-line, you can **use the up arrow** to easily access previously executed lines of code.

- **Environment**: The top-right pane displays information about the current R environment&mdash;specifically, information that you have stored inside of _variables_ (see below). For example, here we have stored the value `201` in a variable called `x`. You'll often create dozens of variables within a script, and the environment area helps you keep track of which values you have stored in what variables. _This is incredibly useful for debugging!_

- **Plots, packages, help, etc.**: The bottom right pane contains multiple tabs for accessing various information about your program. When you create visualizations, those plots will render in this quadrant. You can also see what packages you've loaded or look up information about files. _Most importantly_, this is also where you can access the official documentation for the R language. If you ever have a question about how someing in R works, this is a good place to start!

Note, you can use the small spaces between the quadrants to adjust the size of each area to your liking. You can also use menu options to reorganize the panes if you wish.


## Comments
Before discussing how to program with R, we need to talk about a piece of syntax that lets you comment your code. In programming, **comments** are bits of text that are _not interpreted as computer instructions_&mdash;they aren't code, they're just notes about the code! Since computer code can be opaque and difficult to understand, we use comments to help write down the meaning and _purpose_ of our code. While a computer is able to understand the code, comments are there to help _people_ understand. This is particularly imporant when someone else will be looking at your work&mdash;whether that person is a collaborator, or is simple a future version of you (e.g., when you need to come back and fix something and so need to remember what you were even thinking). Comments should be clear, concise, and helpful&mdash;they should provide information that is not "obvious" from the code itself.

In R, we mark text as a comment by putting it after the pound/hashtag symbol (**`#`**). Everything from the `#` until the end of the line is a comment. We put descriptive comments _immediately above_ the code it describes, but you can also put very short notes at the end of the line of code (preferably following two spaces):

```r
# Set how many bottles of beer are on the wall
bottles <- 99 - 1  # 98
```

(You may recognize this `#` syntax and commenting behavior from the command-line and git modules. That's because the same syntax is used in a Bash shell!)


## Variables
Since computer programs involve working with lots of _information_, we need a way to store and refer to this information. We do this with **variables**. Variables are labels for information; in R, you can think of them as "boxes" or "nametags" for data. After putting data in a variable box, you can then refer to that data by the name on the box.

Variable names can contain any combination of letters, numbers, periods (`.`), or underscores (`_`). Variables names must begin with a letter. Note that like everything in programming, variable names are case sensitive. It is best practice to make variable names descriptive and information about what data they contain. `a` is not a good variable name. `cups.of.coffee` is a good variable name. To comply with [Google's Style Guidelines](https://google.github.io/styleguide/Rguide.xml#identifiers) variables should be **all lower-case letters, separated by periods (`.`)**.

We call putting information in a variable **assigning** that value to the variable. We do this using the _assignment operator_ **`<-`**. For example:

```r
# Stores the number 7 into a variable called shoe.size
shoe.size <- 7
```

- _Notice:_ variable name goes on the left, value goes on the right!

You can see what value (data) is inside a variable by either typing that variable name as a line of code, or by using R's built-in `print()` function (more on functions later):

```r
print(shoe.size)
## [1] 7
```
- We'll talk about the `[1]` in that output later.

You can also use **mathematical operators** (e.g., `+`, `-`, `/`, `*`) when assigning values to variables. For example, you could create a variable that is the sum of two numbers as follows:

```r
x <- 3 + 4
```

Once a value (like a number) is _in_ a variable, you can use that variable in place of any other value. So all of the following are valid:

```r
x <- 2  # store 2 in x
y <- 9  # store 9 in y
z <- x + y  # store sum of x and y in z
print(z)  # 11
z <- z + 1  # take z, add 1, and store result back in z
print(z)  # 12
```

### Basic Data Types
In the example above, we stored **numeric** values in variables. R is a **dynamically typed language**, which means that we _do not_ need to explicitly state what type of information will be stored in each variable we create. R is intelligent enough to understand that if we have code `x <- 7`, then `x` will contain a numeric data (and so we can do math upon it!)

There are a few "basic types" (or _modes_) for data in R:

- **Numeric**: The default computational data type in R is numeric data, which consists of the set of real numbers (including decimals). We use use **mathematical operators** on numeric data (such as `+`, `-`, `*`, `-`, etc.). There are also numerous functions that work on numeric data (such as calculating sums or averages).

- **Character**: Character data stores _strings_ of characters (things you type with a keyboard) in a variable. You specify that some information is character data by surrounding it in either single quotes (**`'`**) or double quotes (**'"'**).

  ```r
  # Create character variable `famous.poet` with the value "Bill Shakespeare"
  famous.poet <- "Bill Shakespeare"
  ```

  Note that character data _is still data_, so it can be assigned to a variable just like numeric data!

  There are no special operators for character data, though there are a many built-in functions for working with strings.

- **Logical**: Logical (a.k.a Boolean) data types store "yes-or-no" data. A logical value can be one of two values: `TRUE` or `FALSE`. Importantly, these **are not** the strings `"TRUE"` or `"FALSE"`; logical values are a different type!. If you prefer, you can use the shorthand `T` or `F` in lieu of `TRUE` and `FALSE` in variable assignment.

  - _Fun fact:_ logical values are called "booleans" after mathematician and logician [George Boole](https://en.wikipedia.org/wiki/George_Boole).

  Logical values are most commonly the result of applying a **relational operator** (also called a **comparison operator**) to some other data. Comparison operators are used to compare values and include: `<` (less than), `>` (greater than), `<=` (less-than-or-equal), `>=` (greater-than-or-equal), `==` (equal), and `!=` (not-equal).

  ```r
  x <- 3
  y <- 3.15

  # compare numbers
  x > y  # returns logical value FALSE (x IS NOT bigger than y)
  y != x  # returns logical value TRUE (y IS not-equal to x)

  # compare x to pi (built-in variable)
  y == pi  # returns logical value FALSE

  # compare strings (based on alphabetical ordering)
  "cat" > "dog"  # returns FALSE
  ```

  Logical values have their own operators as well (called **logical operators** or **boolean operators**). These apply to logical values and produce logical values, and allow you to make more complex logical expressions. They include `&` (and), `|` (or), and `!` (not).

  ```r
  x <- 3.1
  y <- 3.2
  pet <- "dog"
  weather <- "rain"

  # x is less than pi AND y is greater than pi
  x < pi & y > pi  # TRUE

  # pet is "cat" OR "dog"
  pet == "cat" | pet == "dog"  # TRUE

  # pet is "dog" AND NOT weather is "rain"
  pet == "dog" & !(weather == "rain")  # FALSE
  ```

  Note that it's easy to write complex expressions with logical operators. If you find yourself getting lost, I recommend rethinking your question to see if there is a simpler way to express it!


- **Complex**: Complex (imaginary) numbers have their own data storage type in R, are are created using the `i` syntax: `complex.variable <- 2i`. We will not be using complex numbers in this course.

- **Integer**: Integer values are technically a different data type than numeric values because of how they are stored and manipulated by the R interpreter. This is something that you will rarely encounter, but it's good to know that you can specify a number is of integer type rather than numeric type by placing a capital `L` (for "long integer") after an value in variable assignment (`my.integer <- 10L`).

For practice creating variables, see [exercise-1](exercise-1).

## Getting Help
As with any programming language, when working in R you will inevitably run into problems, confusing situations, or just general questions. Here are a few ways to start getting help.

1. **Read the error messages**: If there is an issue with the way you have written or executed your code, R will often print out a red error message in your console. Do you best to decipher the message (read it carefully, and think about what is meant by each word in the message), or you can put it directly into Google to get more information. You'll soon get the hang of interpreting these messages if you don't panic when one comes up.

2. **Google**: When you're trying to figure out how to do something, it should be no surprise that Google is often the best resource. Try searching for queries like `"how to <DO THING> in R"`. More frequently than not, your question will lead you to a Q/A forum called StackOverflow (see below), which is a great place to find potential answers.

3. **StackOverflow**: StackOverflow is an amazing Q/A forum for asking/answering programming questions. I find that most basic questions have already been asked/answered here. However, don't hesitate to post your own questions to StackOverflow. Be sure to hone in on the specific question you're trying to answer, and provide error messages and sample code. I often find that, by the time I can articulate the question enough to post it, I've figured out my problem anyway.

  - There is a classical method of debugging called [rubber duck debugging](https://en.wikipedia.org/wiki/Rubber_duck_debugging), which involves simply trying to explain your code/problem to an animate object (talking to pets works too). You'll usually be able to fix the problem is you just step back and think about how you would explain it to someone else!

4. **Documentation**: R's documentation is actually quite good. Functions and behaviors are all described in the same format, and often contain a helpful examples. To search the documentation within R (or in RStudio), simply type `?` followed by the function name you're using (more on functions coming soon). You can also search the documentation by typing two questions marks (`??SEARCH`).

  - You can also look up help by using the `help()` function (e.g., `help(print)` will look up information on the `print()` function, just like `?print` does). There is also an `example()` function you can call to see examples of a function in action (e.g., `example(print)`). This will be more important in the next module!
