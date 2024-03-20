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
 
<statement> ::= <question_statement> | <answer_statement> | <feedback_statement> | <control_flow_statement>
 
<question_statement> ::= "QUESTION" STRING ":" <answer_options>
 
<answer_statement> ::= "ANSWER" STRING
 
<feedback_statement> ::= "FEEDBACK" STRING
 
<control_flow_statement> ::= <if_statement> | <while_statement>
 
<if_statement> ::= "IF" <condition> ":" <statement_list> <else_clause> "ENDIF"
 
<else_clause> ::= "ELSE" ":" <statement_list> | ε
 
<while_statement> ::= "WHILE" <condition> ":" <statement_list> "ENDWHILE"
 
<condition> ::= <logic_expression>
 
<answer_options> ::= <option> | <option> "," <answer_options>
 
<option> ::= STRING
 
<logic_expression> ::= <term> | <term> <logical_operator> <term>
 
<term> ::= <factor> | <factor> <relational_operator> <factor>
 
<factor> ::= STRING | NUMBER | BOOLEAN
 
<logical_operator> ::= "&&" | "||"
 
<relational_operator> ::= "==" | "!=" | ">" | "<" | ">=" | "<="

