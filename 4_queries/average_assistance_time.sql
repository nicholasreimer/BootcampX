/* Get the average time of an assistance request. */

SELECT
AVG(started_at - completed_at) AS average_assistance_request_duration
FROM assistance_requests;

/*
-get the avg duration of an assistance request by subtracting the started_at and completed-at
-wrap the suntraction in an avg() and giv it a coresponding alias
-all of these values are from the assistance_request table so we set the from accordingly to that.

*/