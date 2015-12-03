
/*
1、Category表新增字段：StyleConfig
2、UserAcitivity表新增字段：fromdevice
3、UserLogin表新增字段：fromdevice
4、修改存储过程 proc_userActivity
*/



/****************1、Category表新增字段：StyleConfig *********************/
ALTER TABLE Category
ADD StyleConfig nvarchar(512) NULL
go

/****************2、UserAcitivity表新增字段：fromdevice*********************/
ALTER TABLE UserAcitivity
ADD fromdevice int NULL default 0
go

/****************3、UserLogin表新增字段：fromdevice*********************/
ALTER TABLE UserLogin
ADD fromdevice int NULL default 0
go

/****************4、修改存储过程 proc_userActivity*********************/
USE [SocailSpace]
GO
/****** Object:  StoredProcedure [dbo].[proc_userActivity]    Script Date: 01/26/2015 17:05:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[proc_userActivity]
	-- Add the parameters for the stored procedure here
	@startTime Nvarchar(20) ='1900-01-01 00:00:00', 
	@endTime Nvarchar(20)='9999-12-12 23:59:59',
	@cgid bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
		
create table #tempuseractivity  --创建临时表#Tmp
(
	[UserAcitivityId] [bigint] NOT NULL,
	[UserPassportId] [bigint] NOT NULL,
	[OptionType] [int] NULL,
	[RefId] [bigint] NULL,
	[RefType] [int] NULL,
	[ReftCount] [int] NULL,
	[DateCreated] [datetime] NULL,
	[fromdevice] [int] NULL,
	primary key ([UserAcitivityId])   
);


declare @type int
set @type=0
if(@cgid>0)
begin
	select @type=CategoryType
	from dbo.Category where CategoryId=@cgid and Status=1
end

if(@type=1) --topic
begin
	insert into #tempuseractivity
	select * 
	from UserAcitivity
	where RefId in (
	select ChildId from dbo.CategoryRelated where ParentId=@cgid) 
end 
else if (@type=2)--blog
begin
	insert into #tempuseractivity
	select *
	from UserAcitivity
	where RefId in (
	select BlogId from dbo.Blog where HwId in (
	select ChildId from dbo.CategoryRelated where ParentId=@cgid) and IsApproved=1 and IsDelete=0)
end
else if(@type=3) --thread
begin
	insert into #tempuseractivity
	select *
	from UserAcitivity
	where RefId in (
	select ThreadId  from Thread  where BoardId in (
	select ChildId from dbo.CategoryRelated where ParentId=@cgid) and IsApproved=1 and IsDelete=0) 
	
end
else if(@type=4) --cocreate
begin
	insert into #tempuseractivity
	select * 
	from UserAcitivity
	where RefId in (
	select ChildId from dbo.CategoryRelated where ParentId=@cgid)
end
else
begin
	insert into #tempuseractivity
	select * 
	from UserAcitivity
end

select act.* into #AllUserActivity
from (
    select u.*,r.PC_ViewBlog,r.PC_ViewBlogComment,r.PC_ViewCoCreateData,r.PC_ViewCoCreateDataComment,r.PC_ViewPost,r.PC_ViewThread,r.PC_ViewTopic,r.PC_ViewTopicComment
,r.PC_WriteBlog,r.PC_WriteBlogComment,r.PC_WriteCoCreateData,r.PC_WriteCoCreateDataComment,r.PC_WritePost,r.PC_WriteThread,r.PC_WriteTopic,r.PC_WriteTopicComment
,r.M_ViewBlog,r.M_ViewBlogComment,r.M_ViewCoCreateData,r.M_ViewCoCreateDataComment,r.M_ViewPost,r.M_ViewThread,r.M_ViewTopic,r.M_ViewTopicComment
,r.M_WriteBlog,r.M_WriteBlogComment,r.M_WriteCoCreateData,r.M_WriteCoCreateDataComment,r.M_WritePost,r.M_WriteThread,r.M_WriteTopic,r.M_WriteTopicComment
,
r2.PC_TotalView,r2.PC_TotalWrite,r2.M_TotalView,r2.M_TotalWrite,r3.PC_totalOnline,r3.M_totalOnline,
r3.PC_LoginCount,r3.M_LoginCount
 from UserPassport u 
left Join
(select r.* from  
(select UserPassportId,ISNULL(SUM(ReftCount),0) as num,
Case
 When OptionType=1 and RefType=1 and (fromdevice=0 or fromdevice is NULL )   then 'PC_WriteTopic'
 When OptionType=1 and RefType=11 and (fromdevice=0 or fromdevice is null)  then 'PC_WriteTopicComment' 
  When OptionType=1 and RefType=21 and (fromdevice=0 or fromdevice is null)  then 'PC_WriteCoCreateData'
 When OptionType=1 and RefType=22 and (fromdevice=0 or fromdevice is null)  then 'PC_WriteCoCreateDataComment' 
   When OptionType=1 and RefType=4 and (fromdevice=0 or fromdevice is null)  then 'PC_WriteThread'
 When OptionType=1 and RefType=41 and (fromdevice=0 or fromdevice  is null)  then 'PC_WritePost'
 When OptionType=1 and RefType=5 and (fromdevice=0 or fromdevice  is null)  then 'PC_WriteBlog'
 When OptionType=1 and RefType=51 and (fromdevice=0 or fromdevice  is null)  then 'PC_WriteBlogComment'
 When OptionType=2 and RefType=1 and (fromdevice=0 or fromdevice  is null)  then 'PC_ViewTopic'
 When OptionType=2 and RefType=11 and (fromdevice=0 or fromdevice  is null)  then 'PC_ViewTopicComment' 
  When OptionType=2 and RefType=21 and (fromdevice=0 or fromdevice  is null)  then 'PC_ViewCoCreateData'
 When OptionType=2 and RefType=22 and (fromdevice=0 or fromdevice  is null)  then 'PC_ViewCoCreateDataComment' 
   When OptionType=2 and RefType=4 and (fromdevice=0 or fromdevice  is null)  then 'PC_ViewThread'
 When OptionType=2 and RefType=41 and (fromdevice=0 or fromdevice  is null)  then 'PC_ViewPost' 
 When OptionType=2 and RefType=5 and (fromdevice=0 or fromdevice  is null)  then 'PC_ViewBlog' 
 When OptionType=2 and RefType=51 and (fromdevice=0 or fromdevice  is null)  then 'PC_ViewBlogComment' 
 
 When OptionType=1 and RefType=1 and fromdevice=1   then 'M_WriteTopic'
 When OptionType=1 and RefType=11 and fromdevice=1  then 'M_WriteTopicComment' 
  When OptionType=1 and RefType=21 and fromdevice=1  then 'M_WriteCoCreateData'
 When OptionType=1 and RefType=22 and fromdevice=1 then 'M_WriteCoCreateDataComment' 
   When OptionType=1 and RefType=4 and fromdevice=1  then 'M_WriteThread'
 When OptionType=1 and RefType=41 and fromdevice=1  then 'M_WritePost'
 When OptionType=1 and RefType=5 and fromdevice=1  then 'M_WriteBlog'
 When OptionType=1 and RefType=51 and fromdevice=1  then 'M_WriteBlogComment'
 When OptionType=2 and RefType=1 and fromdevice=1  then 'M_ViewTopic'
 When OptionType=2 and RefType=11 and fromdevice=1  then 'M_ViewTopicComment' 
  When OptionType=2 and RefType=21 and fromdevice=1  then 'M_ViewCoCreateData'
 When OptionType=2 and RefType=22 and fromdevice=1  then 'M_ViewCoCreateDataComment' 
   When OptionType=2 and RefType=4 and fromdevice=1  then 'M_ViewThread'
 When OptionType=2 and RefType=41 and fromdevice=1  then 'M_ViewPost' 
 When OptionType=2 and RefType=5 and fromdevice=1  then 'M_ViewBlog' 
 When OptionType=2 and RefType=51 and fromdevice=1  then 'M_ViewBlogComment' 
 Else 'E' end as testBaseLevel
 from #tempuseractivity
 where DateCreated>@startTime and DateCreated <@endTime
group by UserPassportId,OptionType,RefType,fromdevice) as t  
pivot  
(  
sum(t.num)  
for t.testBaseLevel in (PC_WriteTopic,PC_WriteTopicComment,PC_WriteCoCreateData,PC_WriteCoCreateDataComment,PC_WriteThread,PC_WritePost,PC_WriteBlog,PC_WriteBlogComment
    ,PC_ViewTopic,PC_ViewTopicComment,PC_ViewCoCreateData,PC_ViewCoCreateDataComment,PC_ViewThread,PC_ViewBlog,PC_ViewPost,PC_ViewBlogComment,
    M_WriteTopic,M_WriteTopicComment,M_WriteCoCreateData,M_WriteCoCreateDataComment,M_WriteThread,M_WritePost,M_WriteBlog,M_WriteBlogComment
    ,M_ViewTopic,M_ViewTopicComment,M_ViewCoCreateData,M_ViewCoCreateDataComment,M_ViewThread,M_ViewBlog,M_ViewPost,M_ViewBlogComment)
) as r) as r on r.UserPassportId =u.UserPassportId 
left join(
select r2.* from  
(select UserPassportId,ISNULL(SUM(ReftCount),0) as num,
Case
 When OptionType=1 and (fromdevice=0 or fromdevice  is null) then 'PC_TotalWrite'
 When OptionType=2 and (fromdevice=0 or fromdevice  is null)  then 'PC_TotalView' 
 When OptionType=1 and fromdevice=1 then 'M_TotalWrite'
 When OptionType=2 and fromdevice=1  then 'M_TotalView'
 Else 'E' end as testBaseLevel
 from #tempuseractivity
 where DateCreated>@startTime and DateCreated <@endTime
group by UserPassportId,OptionType,fromdevice) as t  
pivot  
(  
sum(t.num)  
for t.testBaseLevel in (PC_TotalWrite,PC_TotalView,M_TotalWrite,M_TotalView)
) as r2) as r2 on u.UserPassportId = r2.UserPassportId
Left JOIN (
select u1.*,u2.PC_LoginCount,u2.M_LoginCount
  from 
 (select r3.*  from  
  (
  select UserPassportId, SUM(TotalMinute) as totalOnline,
Case
 When fromdevice=0 or fromdevice  is null then 'PC_TotalOnline'
 When fromdevice=1  then 'M_TotalOnline' 
 end as testloginlevel 
from dbo.UserLogin
 where DateCreate>@startTime and DateCreate <@endTime
group by UserPassportId,fromdevice
  ) as t 
pivot  
(  
sum(t.totalOnline) 
for t.testloginlevel in (PC_TotalOnline,M_TotalOnline)
) as r3 ) as u1
inner join
 (select r6.*  from  
  (
  select UserPassportId, max(LoginCount) as LoginCount,
Case
 When fromdevice=0 or fromdevice  is null then 'PC_LoginCount'
 When fromdevice=1  then 'M_LoginCount' 
 end as testloginlevel 
from dbo.UserLogin
 where DateCreate>@startTime and DateCreate <@endTime
group by UserPassportId,fromdevice
  ) as t 
pivot  
(  
max(t.LoginCount) 
for t.testloginlevel in (PC_LoginCount,M_LoginCount)
) as r6 ) as u2
on u1.UserPassportId=u2.UserPassportId
) as r3 on u.UserPassportId =r3.UserPassportId) as act

SELECT UserPassportId,UserName,Email,DateCreated,LastLogin,--LoginCount,
isnull(PC_LoginCount,0) as PC_LoginCount,isnull(M_LoginCount,0) as M_LoginCount,
isnull(PC_TotalView,0) as PC_TotalView,isnull(M_TotalView,0) as M_TotalView,isnull(PC_totalOnline,0) as PC_totalOnline,isnull(M_totalOnline,0) as M_totalOnline,RealName,isnull(PC_TotalWrite,0) as PC_TotalWrite,isnull(M_TotalWrite,0) as M_TotalWrite
,isnull(PC_WriteTopicComment,0) as PC_WriteTopicComment,isnull(M_WriteTopicComment,0) as M_WriteTopicComment,isnull(PC_WriteBlog,0) as PC_WriteBlog,isnull(M_WriteBlog,0) as M_WriteBlog,isnull(PC_WriteBlogComment,0) as PC_WriteBlogComment,isnull(M_WriteBlogComment,0) as M_WriteBlogComment,isnull(PC_WriteThread,0) as PC_WriteThread,isnull(M_WriteThread,0) as M_WriteThread,isnull(PC_WritePost,0) as PC_WritePost,isnull(M_WritePost,0) as M_WritePost,
isnull(PC_WriteCoCreateData,0) as PC_WriteCoCreateData,isnull(M_WriteCoCreateData,0) as M_WriteCoCreateData,isnull(PC_WriteCoCreateDataComment,0) as PC_WriteCoCreateDataComment,isnull(M_WriteCoCreateDataComment,0) as M_WriteCoCreateDataComment
,isnull(PC_ViewThread,0)+isnull(PC_ViewBlog,0)+isnull(PC_ViewTopic,0)+isnull(PC_ViewCoCreateData,0) as 'PC_ViewPage',
isnull(M_ViewThread,0)+isnull(M_ViewBlog,0)+isnull(M_ViewTopic,0)+isnull(M_ViewCoCreateData,0) as 'M_ViewPage',
isnull(PC_ViewThread,0) as PC_ViewThread,isnull(M_ViewThread,0) as M_ViewThread,isnull(PC_ViewBlog,0) as PC_ViewBlog,isnull(M_ViewBlog,0) as M_ViewBlog,
isnull(PC_ViewTopic,0) as PC_ViewTopic,isnull(M_ViewTopic,0) as M_ViewTopic,isnull(PC_ViewCoCreateData,0) as PC_ViewCoCreateData,isnull(M_ViewCoCreateData,0) as M_ViewCoCreateData
from #AllUserActivity

drop table #AllUserActivity
drop table #tempuseractivity
END



go
