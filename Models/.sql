alter proc Edit_user_profile
@users_id int,
@firstname NVARCHAR (50),
@lastname NVARCHAR (50),
@birthday DATE,
@street NVARCHAR (50),
@user_image NVARCHAR (16) 
AS
UPDATE USERS SET firstname = @firstname, lastname = @lastname, birthday = @birthday, street = @street, user_image = @user_image WHERE users_id = @users_id