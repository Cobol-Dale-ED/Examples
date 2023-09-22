       IDENTIFICATION DIVISION.
       PROGRAM-ID. PLAYING.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WS-DESCRIPTION.
      *	Notice No Pic Value	And Not Indented, It Works But Bad Style	
       05 WS-DATE1 VALUE '20140831'.
       10 WS-YEAR PIC X(4).
       10 WS-MONTH PIC X(2).
       10 WS-DATE PIC X(2).
      * You Can Redefine Varriables		
       05 WS-DATE2 REDEFINES WS-DATE1 PIC 9(8).


       01 WS-STUDENT-NAME PIC X(25).
       01 WS-DATE4 PIC X(10).

      * Much More Readable Format	
       01 WS-DESCRIPTION.
           05 WS-NUM.
               10 WS-NUM1 PIC 9(2) VALUE 20.
               10 WS-NUM2 PIC 9(2) VALUE 56.
           05 WS-CHAR.
               10 WS-CHAR1 PIC X(2) VALUE 'AA'.
               10 WS-CHAR2 PIC X(2) VALUE 'BB'.
           66 WS-RENAME RENAMES WS-NUM2 THRU WS-CHAR2.

      *	COPY ABC.cpy.
       COPY ABC.cpy REPLACING WS-ABC1 BY WS-COPY1.

       PROCEDURE DIVISION.
       DISPLAY ' '
       DISPLAY 'This Shows A Field Being Redefined'
       DISPLAY "WS-DATE1 : "WS-DATE1.
       DISPLAY "WS-DATE2 : "WS-DATE2.

       DISPLAY ' '

       DISPLAY 'Enter a name: ' WITH NO ADVANCING
       ACCEPT WS-STUDENT-NAME.
       ACCEPT WS-DATE4 FROM DATE.
       DISPLAY ' '
       DISPLAY "The name entered: " WS-STUDENT-NAME.
       DISPLAY ' '
       DISPLAY 'This Shows A Date Accepted From The System, Not Sure Of
      -        'The Format'.
       DISPLAY "Date : " WS-DATE4.

       DISPLAY ' '
       DISPLAY 'This Shows A Renamed Field, Never Used This'
       DISPLAY "WS-RENAME : " WS-RENAME.

       DISPLAY ' '

       DISPLAY 'This Shows The Content Of The ABC Copybook'

       DISPLAY WS-ABC.
       DISPLAY ' '.

       STOP RUN.

