--CREATE TABLES

--create table Users(
--	Id int identity primary key,
--	Name nvarchar(100),
--	Surname nvarchar(100),
--	ProfilePhoto nvarchar(100),
--	Biography nvarchar(100),
--	PostCount nvarchar(100),
--)

--create table Posts(
--	Id int identity primary key,
--	Image nvarchar(100),
--	Text nvarchar(100),
--	UserId int references Users(Id),
--)

--create table Comments (
--	Id int identity primary key,
--	Text nvarchar(100),
--	PostId int references Posts(Id),
--)



--CREATE VIEW

--create view PostsByUsers as
--select Posts.Image 'PostedImage', Posts.Text 'PostedImageText', Posts.UserId 'PosterId', 
--Users.Name 'PosterName', Users.Surname 'PosterSurname', Users.ProfilePhoto 'PosterProfile', 
--Users.Biography 'PosterBiography', Users.PostCount 'PosterPostsCount'
--from Posts
--join Users
--on Posts.UserId = Users.Id



--CREATE FUNCTION


--create function GetCommentsCountByUser(@UserId int)
--returns int
--as
--begin
--	declare @Count int
--	select @Count = Count(*) from Posts
--	join Comments
--	on Comments.PostId = Posts.Id 
--	where @UserId = UserId
--	return @Count
--end

--select dbo.GetCommentsCountByUser(1) 'All Comments that are being to User Posts'




--CREATE TRIGGER

--create trigger PostAdded
--on Posts
--after insert
--as
--begin
--	update Users set PostCount =  PostCount + 1 where Id = (select UserId from inserted Posts)
--end