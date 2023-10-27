       IDENTIFICATION DIVISION.
       PROGRAM-ID. LEAP.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-YEAR    PIC 9(4).
       01 WS-RESULT  PIC 9.
       01 REMAINDERS.
         05 R-4      PIC 9(4).
         05 R-100    PIC 9(4).
         05 R-400    PIC 9(4).
       01 QUOTIENT   PIC 9(4).

      
       PROCEDURE DIVISION.
       LEAP.
         DIVIDE WS-YEAR BY   4 GIVING QUOTIENT REMAINDER R-4.
         DIVIDE WS-YEAR BY 100 GIVING QUOTIENT REMAINDER R-100.
         DIVIDE WS-YEAR BY 400 GIVING QUOTIENT REMAINDER R-400.
         IF R-4 = 0 
            IF R-100 = 0
               IF R-400 = 0
                  MOVE 1 TO WS-RESULT
               ELSE
                  MOVE 0 TO WS-RESULT
               END-IF
            ELSE
               MOVE 1 TO WS-RESULT
            END-IF
         ELSE
            MOVE 0 TO WS-RESULT
         END-IF
         CONTINUE.
       LEAP-EXIT.
         EXIT.
