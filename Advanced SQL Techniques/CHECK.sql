SELECT SCHOOL_ID, LEADERS_SCORE, LEADERS_ICON
FROM CHICAGO_PUBLIC_SCHOOLS
WHERE SCHOOL_ID = 610038;

CALL UPDATE_LEADERS_SCORE (610038, 38);

SELECT SCHOOL_ID, LEADERS_SCORE, LEADERS_ICON
FROM CHICAGO_PUBLIC_SCHOOLS
WHERE SCHOOL_ID = 610038;

CALL UPDATE_LEADERS_SCORE (610038, 101);

SELECT SCHOOL_ID, LEADERS_SCORE, LEADERS_ICON
FROM CHICAGO_PUBLIC_SCHOOLS
WHERE SCHOOL_ID = 610038;