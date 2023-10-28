             IDENTIFICATION DIVISION.
             PROGRAM-ID. reverse-string.
             DATA DIVISION.
             WORKING-STORAGE SECTION.
             01 WS-STRING PIC X(64).
             01 TEMP      PIC X(64).
             01 IDX       PIC 9(2).
             01 IDX-R     PIC 9(2).

             PROCEDURE DIVISION.
             REVERSE-STRING.
               MOVE WS-STRING TO TEMP.

               MOVE 1 TO IDX-R.
               PERFORM VARYING IDX FROM FUNCTION LENGTH(WS-STRING)
                BY -1 UNTIL IDX = 0
                  MOVE WS-STRING(IDX:1) TO TEMP(IDX-R:1)
                  ADD 1 TO IDX-R
               END-PERFORM.
      
               MOVE FUNCTION TRIM(TEMP, LEADING) TO WS-STRING.