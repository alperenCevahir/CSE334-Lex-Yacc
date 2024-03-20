# QUIZLANG
Team Project for CSE 334 - Programming Languages in 3rd Year Spring Semester
This part of the project is made with Lex.

## PROJECT MEMBERS
Alperen Cevahiroğlu - 20200808016
Nuray Koca - 20170808024
Merve Tuğçe Gezer - 20200808060


### BRIEF INFORMATION ABOUT THE LANGUAGE ###
QuizLang combines the simplicity of Python with the robustness of Java to create an easy-to-write and understandable language. Variables are declared without explicit type declarations for streamlined coding. Control flow statements like while and if are terminated with endwhile and endif respectively, ensuring clear code structure.

For operations, QuizLang uses common mathematical operators like "=", "+", "-", "*", and "/", along with comparison symbols such as "!=", "==", ">", "<", ">=", and "<=". Users can define functions and constants, enhancing code modularity and reusability.

To use QuizLang, compile code with the make command and execute it with a command like ./quizparser < test.quiz. This simple process facilitates both writing and executing QuizLang programs.

QuizLang provides a versatile and intuitive solution for creating quizzes and questionnaires, offering a balance between simplicity and functionality to suit various needs.


### BNF GRAMMER OF QUIZLANG ###
<quizlang_program> ::= <statement_list>
 
<statement_list> ::= | <statement_list> <statement>
 
<statement> ::= <question_statement> | <answer_statement> | <feedback_statement>
 
<question_statement> ::= QUESTION STRING ':' <answer_options>
 
<answer_statement> ::= ANSWER STRING
 
<feedback_statement> ::= FEEDBACK STRING
 
<answer_options> ::= <option> | <option> ',' <answer_options>
 
<option> ::= STRING

