#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

typedef enum {
    IDENTIFIER,
    INTEGER,
    STRING,
    EQUALSIGN,
    SEMICOLON,
    PRINTCOMMAND,
    IFSTATEMENT,
    ELSESTATEMENT,
    ENDIFSTATEMENT,
    WHILESTATEMENT,
    ENDWHILESTATEMENT,
    LOGICALAND,
    LOGICALOR,
    EQUALTO,
    NOTEQUALTO,
    GREATERTHAN,
    LESSTHAN,
    GREATEROREQUAL,
    LESSOREQUAL
} TokenType;

typedef struct {
    TokenType type;
    char* value;
} Token;

void printToken(Token token) {
    switch(token.type) {
        case IDENTIFIER:
            printf("IDENTIFIER ");
            break;
        case INTEGER:
            printf("INTEGER ");
            break;
        case STRING:
            printf("STRING ");
            break;
        case EQUALSIGN:
            printf("EQUALSIGN ");
            break;
        case SEMICOLON:
            printf("SEMICOLON ");
            break;
        case PRINTCOMMAND:
            printf("PRINTCOMMAND ");
            break;
        case IFSTATEMENT:
            printf("IFSTATEMENT ");
            break;
        case ELSESTATEMENT:
            printf("ELSESTATEMENT ");
            break;
        case ENDIFSTATEMENT:
            printf("ENDIFSTATEMENT ");
            break;
        case WHILESTATEMENT:
            printf("WHILESTATEMENT ");
            break;
        case ENDWHILESTATEMENT:
            printf("ENDWHILESTATEMENT ");
            break;
        case LOGICALAND:
            printf("LOGICALAND ");
            break;
        case LOGICALOR:
            printf("LOGICALOR ");
            break;
        case EQUALTO:
            printf("EQUALTO ");
            break;
        case NOTEQUALTO:
            printf("NOTEQUALTO ");
            break;
        case GREATERTHAN:
            printf("GREATERTHAN ");
            break;
        case LESSTHAN:
            printf("LESSTHAN ");
            break;
        case GREATEROREQUAL:
            printf("GREATEROREQUAL ");
            break;
        case LESSOREQUAL:
            printf("LESSOREQUAL ");
            break;
        default:
            printf("UNKNOWN ");
    }
    printf("%s\n", token.value);
}

int main() {
    char* input = "x = 4;\nprint x;";

    char* token = strtok(input, " \n;");
    while(token != NULL) {
        Token t;
        t.value = strdup(token);
        if(isdigit(token[0])) {
            t.type = INTEGER;
        } else if(strcmp(token, "=") == 0) {
            t.type = EQUALSIGN;
        } else if(strcmp(token, ";") == 0) {
            t.type = SEMICOLON;
        } else if(strcmp(token, "print") == 0) {
            t.type = PRINTCOMMAND;
        } else if(strcmp(token, "if") == 0) {
            t.type = IFSTATEMENT;
        } else if(strcmp(token, "else") == 0) {
            t.type = ELSESTATEMENT;
        } else if(strcmp(token, "endif") == 0) {
            t.type = ENDIFSTATEMENT;
        } else if(strcmp(token, "while") == 0) {
            t.type = WHILESTATEMENT;
        } else if(strcmp(token, "endwhile") == 0) {
            t.type = ENDWHILESTATEMENT;
        } else if(strcmp(token, "&&") == 0) {
            t.type = LOGICALAND;
        } else if(strcmp(token, "||") == 0) {
            t.type = LOGICALOR;
        } else if(strcmp(token, "==") == 0) {
            t.type = EQUALTO;
        } else if(strcmp(token, "!=") == 0) {
            t.type = NOTEQUALTO;
        } else if(strcmp(token, ">") == 0) {
            t.type = GREATERTHAN;
        } else if(strcmp(token, "<") == 0) {
            t.type = LESSTHAN;
        } else if(strcmp(token, ">=") == 0) {
            t.type = GREATEROREQUAL;
        } else if(strcmp(token, "<=") == 0) {
            t.type = LESSOREQUAL;
        } else {
            t.type = IDENTIFIER;
        }
        printToken(t);
        free(t.value);
        token = strtok(NULL, " \n;");
    }

    return 0;
}
