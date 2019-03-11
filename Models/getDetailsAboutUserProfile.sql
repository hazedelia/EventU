CREATE PROCEDURE getDetailsAboutUserProfile(@users_id INT)
AS
SELECT U.firstname, U.lastname, U.birthday, U.email, U.street, RU.regular_users_id,
(
	SELECT STUFF((SELECT ', ' + T.interestname FROM REGULAR_USERS_INTERESTS BPT
	INNER JOIN INTERESTS T ON T.interest_id = BPT.interest_id
	WHERE BPT.regular_users_id = @users_id FOR XML PATH ('')), 1, 2, '')
)
AS Interest
FROM
USERS AS U
inner join REGULAR_USERS AS RU ON U.users_id = RU.users_id
WHERE
U.users_id = @users_id
