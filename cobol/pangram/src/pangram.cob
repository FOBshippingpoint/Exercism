       IDENTIFICATION DIVISION.
       PROGRAM-ID. PANGRAM.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-SENTENCE PIC X(60).
       01 WS-RESULT PIC 9.
       01 CHTR-COUNT PIC 9.
       01 CHTR PIC A.
       01 ALPHABETS PIC A(26).
       01 IDX PIC 9(2).

      
       PROCEDURE DIVISION.
       PANGRAM.
           MOVE "ABCDEFGHIJKLMNOPQRSTUVWXYZ" TO ALPHABETS.
           MOVE FUNCTION Upper-case(WS-SENTENCE) TO WS-SENTENCE.
           PERFORM VARYING IDX FROM 1 BY 1 UNTIL IDX > 25
              MOVE ALPHABETS(IDX:1) TO CHTR
              PERFORM FIND-CHTR
              IF CHTR-COUNT = 0
                 MOVE 0 TO WS-RESULT
                 STOP RUN
              END-IF
           END-PERFORM.
           MOVE 1 TO WS-RESULT.
           STOP RUN.
      
       FIND-CHTR.
           MOVE 0 TO CHTR-COUNT.
           INSPECT WS-SENTENCE TALLYING CHTR-COUNT FOR ALL CHTR.