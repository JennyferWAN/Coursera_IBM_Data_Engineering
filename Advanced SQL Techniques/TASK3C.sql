--#SET TERMINATOR @

CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_SCORE(
IN in_School_ID INTEGER,
IN in_Leader_Score INTEGER)

LANGUAGE SQL
MODIFIES SQL DATA


BEGIN

	UPDATE CHICAGO_PUBLIC_SCHOOLS
	SET Leaders_Score = in_Leader_Score
	WHERE School_ID = in_School_ID;
	
		IF in_Leader_Score > 0 AND in_Leader_Score < 20 THEN
			UPDATE CHICAGO_PUBLIC_SCHOOLS
			SET Leaders_Icon = 'Very Weak';
		
		ELSEIF in_Leader_Score < 40 THEN
			UPDATE CHICAGO_PUBLIC_SCHOOLS
			SET Leaders_Icon = 'Weak';
		
		ELSEIF in_Leader_Score < 60 THEN
			UPDATE CHICAGO_PUBLIC_SCHOOLS
			SET Leaders_Icon = 'Average';
		
		ELSEIF in_Leader_Score < 80 THEN
			UPDATE CHICAGO_PUBLIC_SCHOOLS
			SET Leaders_Icon = 'Strong';
		
		ELSEIF in_Leader_Score < 100 THEN
			UPDATE CHICAGO_PUBLIC_SCHOOLS
			SET Leaders_Icon = 'Very Strong';

END IF;

END

@