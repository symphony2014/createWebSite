
GO
/****** Object:  Table [dbo].[Client]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientId] [int] NOT NULL,
	[ClientName] [nvarchar](128) NULL,
 CONSTRAINT [XPKClient] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageIcon]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImageIcon](
	[ImageIconId] [int] NOT NULL,
	[ImageName] [nvarchar](20) NULL,
	[ImageSrc] [varchar](128) NULL,
 CONSTRAINT [XPKImageIcon] PRIMARY KEY CLUSTERED 
(
	[ImageIconId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImageLibrary]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageLibrary](
	[ImageId] [bigint] NOT NULL,
	[Pjid] [bigint] NULL,
	[RefId] [bigint] NULL,
	[RefType] [int] NULL,
	[ImageSrc] [nvarchar](128) NULL,
	[UserPassportId] [bigint] NULL,
	[UserName] [nvarchar](64) NULL,
	[DataCreated] [datetime] NULL,
 CONSTRAINT [XPKImageLibrary] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kudo]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kudo](
	[RefId] [bigint] NOT NULL,
	[RefType] [int] NOT NULL,
	[KudosValue] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKKudo] PRIMARY KEY CLUSTERED 
(
	[RefId] ASC,
	[RefType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LanguageCode]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LanguageCode](
	[LanguageCode] [int] NOT NULL,
	[LanguageName] [varchar](20) NOT NULL,
	[SubName] [varchar](20) NULL,
	[Acronym] [varchar](20) NULL,
 CONSTRAINT [XPKLanguageCode] PRIMARY KEY CLUSTERED 
(
	[LanguageCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log](
	[Id] [uniqueidentifier] NOT NULL,
	[CommunityId] [int] NULL,
	[PjId] [bigint] NULL,
	[RefId] [bigint] NULL,
	[RefType] [int] NULL,
	[UserPassportId] [bigint] NULL,
	[UserName] [nvarchar](64) NULL,
	[RealName] [nvarchar](20) NULL,
	[Operation] [char](2) NULL,
	[IsConsole] [int] NULL,
	[Message] [nvarchar](50) NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateTimeTicks] [bigint] NOT NULL,
 CONSTRAINT [XPKLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SectionRelated]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SectionRelated](
	[ParentId] [bigint] NOT NULL,
	[ChildId] [bigint] NOT NULL,
	[ParentType] [int] NULL,
	[ChildType] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKSectionRelated] PRIMARY KEY CLUSTERED 
(
	[ParentId] ASC,
	[ChildId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShortMessage]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShortMessage](
	[ShortMessageId] [bigint] NOT NULL,
	[FromUserPassportId] [bigint] NULL,
	[ToUserPassportId] [bigint] NULL,
	[Subject] [nvarchar](250) NULL,
	[Body] [nvarchar](512) NULL,
	[IsRead] [tinyint] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKShortMessage] PRIMARY KEY CLUSTERED 
(
	[ShortMessageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stat_Log]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stat_Log](
	[LogId] [uniqueidentifier] NOT NULL,
	[Content] [varchar](512) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKStat_Log] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SurveyResource]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SurveyResource](
	[SurveyResourceId] [bigint] NOT NULL,
	[RefId] [bigint] NULL,
	[RefType] [tinyint] NULL,
	[ResourcePath] [varchar](128) NULL,
	[ResourceType] [tinyint] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKSurveyResource] PRIMARY KEY CLUSTERED 
(
	[SurveyResourceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[TagId] [bigint] NOT NULL,
	[TagName] [nvarchar](150) NULL,
	[RefId] [bigint] NULL,
	[RefType] [tinyint] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKTag] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBC_EditLog]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBC_EditLog](
	[EditLogId] [bigint] NOT NULL,
 CONSTRAINT [XPKEditLog] PRIMARY KEY CLUSTERED 
(
	[EditLogId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgentCompany]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentCompany](
	[Aid] [int] NOT NULL,
	[AName] [nvarchar](50) NULL,
	[AType] [tinyint] NULL,
	[IsActive] [int] NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[ContactPhone] [nvarchar](20) NULL,
	[Address] [nvarchar](100) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKAgent_Company] PRIMARY KEY CLUSTERED 
(
	[Aid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserPassport]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserPassport](
	[UserPassportId] [bigint] NOT NULL,
	[PersonalId] [varchar](50) NULL,
	[UserName] [nvarchar](64) NOT NULL,
	[RealName] [nvarchar](20) NULL,
	[Password] [varchar](20) NOT NULL,
	[PasswordFormat] [int] NULL,
	[PasswordQuestion] [nvarchar](128) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[Email] [varchar](64) NULL,
	[Mobile] [varchar](20) NULL,
	[Tel] [varchar](20) NULL,
	[Gender] [int] NULL,
	[Birthday] [datetime] NULL,
	[Age] [int] NULL,
	[OccupationId] [int] NULL,
	[PersonalIncome] [nvarchar](50) NULL,
	[FamilyIncome] [nvarchar](50) NULL,
	[Education] [int] NULL,
	[MailValidated] [int] NULL,
	[MobileValidated] [int] NULL,
	[NationalityId] [int] NULL,
	[ProvinceId] [int] NULL,
	[CityId] [int] NULL,
	[Address] [nvarchar](256) NULL,
	[PostCode] [varchar](20) NULL,
	[OtherSpecify1] [nvarchar](50) NULL,
	[OtherSpecify2] [nvarchar](50) NULL,
	[OtherSpecify3] [nvarchar](50) NULL,
	[OtherSpecify4] [nvarchar](50) NULL,
	[ImageIconId] [int] NULL,
	[ImageSrc] [varchar](128) NULL,
	[FromPlace] [int] NULL,
	[Kudos] [int] NULL,
	[KudosWeight] [int] NULL,
	[Point] [int] NULL,
	[Cash] [decimal](18, 2) NULL,
	[Credit] [int] NULL,
	[UserType] [int] NULL,
	[LanguageCode] [int] NULL,
	[TimeZone] [int] NULL,
	[DefaultTheme] [int] NULL,
	[CommunityId] [int] NULL,
	[IsProjectUser] [int] NULL,
	[Flag] [int] NULL,
	[Status] [int] NULL,
	[LoginCount] [int] NULL,
	[LastLogin] [datetime] NULL,
	[LastUpdate] [datetime] NULL,
	[LastIp] [varchar](20) NULL,
	[LastHostName] [varchar](50) NULL,
	[LastUserAgent] [varchar](256) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKUserPassport] PRIMARY KEY CLUSTERED 
(
	[UserPassportId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Community]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Community](
	[CommunityId] [int] NOT NULL,
	[CommunityName] [nvarchar](20) NULL,
	[Description] [nvarchar](128) NULL,
	[UniqueWord] [varchar](50) NULL,
	[ClientId] [int] NULL,
	[UserPassportId] [bigint] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKCommunity] PRIMARY KEY CLUSTERED 
(
	[CommunityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Project]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Project](
	[PjId] [bigint] NOT NULL,
	[ProjectId] [nvarchar](64) NULL,
	[ProjectName] [nvarchar](64) NULL,
	[Description] [nvarchar](512) NULL,
	[Title] [nvarchar](250) NULL,
	[Intro] [nvarchar](512) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[UseOrder] [tinyint] NULL,
	[ImageSrc] [varchar](128) NULL,
	[IsOpen] [tinyint] NULL,
	[IsFollowProjectTime] [int] NULL,
	[IsByOrder] [tinyint] NULL,
	[IsUserInProjectDetail] [tinyint] NULL,
	[ProjectType] [tinyint] NULL,
	[Point] [int] NULL,
	[Status] [int] NULL,
	[UserPassportId] [bigint] NULL,
	[CommunityId] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKProject] PRIMARY KEY CLUSTERED 
(
	[PjId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Board]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Board](
	[BoardId] [bigint] NOT NULL,
	[PjId] [bigint] NOT NULL,
	[Title] [nvarchar](2048) NULL,
	[Body] [nvarchar](4000) NULL,
	[Description] [nvarchar](500) NULL,
	[TotalThread] [int] NULL,
	[OrderId] [int] NULL,
	[ImgSrc] [nvarchar](128) NULL,
	[PageSize] [int] NULL,
	[IsDelete] [int] NULL,
	[UserPassportId] [bigint] NOT NULL,
	[UserName] [nvarchar](64) NULL,
	[RealName] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[LastUpdate] [datetime] NULL,
 CONSTRAINT [XPKBoard] PRIMARY KEY CLUSTERED 
(
	[BoardId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thread]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Thread](
	[ThreadId] [bigint] NOT NULL,
	[BoardId] [bigint] NOT NULL,
	[CommunityId] [int] NULL,
	[BlockId] [int] NULL,
	[Subject] [nvarchar](250) NULL,
	[Body] [nvarchar](4000) NULL,
	[BodyFormat] [tinyint] NULL,
	[UserPassportId] [bigint] NULL,
	[UserName] [nvarchar](64) NULL,
	[RealName] [nvarchar](20) NULL,
	[RecentPostUserPassportId] [bigint] NULL,
	[RecentPostUserName] [nvarchar](20) NULL,
	[RecentPostRealName] [nvarchar](20) NULL,
	[RecentPostId] [bigint] NULL,
	[RecentPostSubject] [nvarchar](250) NULL,
	[RecentReplyDate] [datetime] NULL,
	[TotalView] [int] NULL,
	[TotalReply] [int] NULL,
	[Kudos] [int] NULL,
	[HasUploadResource] [tinyint] NULL,
	[IsNew] [tinyint] NULL,
	[IsHot] [tinyint] NULL,
	[IsTop] [tinyint] NULL,
	[IsApproved] [tinyint] NULL,
	[IsDelete] [tinyint] NULL,
	[HasQuickPoll] [int] NULL,
	[IsMustQuickPoll] [int] NULL,
	[ImageSrc] [varchar](128) NULL,
	[PageSize] [tinyint] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKThread] PRIMARY KEY CLUSTERED 
(
	[ThreadId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChatRoom]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChatRoom](
	[ChatRoomId] [bigint] NOT NULL,
	[CommunityId] [int] NULL,
	[RoomName] [nvarchar](500) NULL,
	[RoomDesc] [varchar](100) NULL,
	[RoomIntro] [varchar](100) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[IsFollowTime] [int] NULL,
	[IsPrivate] [tinyint] NULL,
	[UserPassportId] [bigint] NULL,
	[Status] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKChatRoom] PRIMARY KEY CLUSTERED 
(
	[ChatRoomId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChatFile]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChatFile](
	[ChatFileId] [bigint] NOT NULL,
	[ChatRoomId] [bigint] NULL,
	[UserPassportId] [bigint] NULL,
	[FileName] [nvarchar](128) NULL,
	[FilePath] [varchar](128) NULL,
	[FileType] [int] NULL,
	[OrderId] [int] NULL,
	[IsCurrent] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKChatFile] PRIMARY KEY CLUSTERED 
(
	[ChatFileId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChatSync]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatSync](
	[ChatRoomId] [bigint] NOT NULL,
	[ChatFileId] [bigint] NULL,
	[UserPassportId] [bigint] NULL,
	[Version] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKChatSync] PRIMARY KEY CLUSTERED 
(
	[ChatRoomId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatSyncLog]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatSyncLog](
	[ChatRoomId] [bigint] NOT NULL,
	[ChatFileId] [bigint] NOT NULL,
	[UserPassportId] [bigint] NOT NULL,
	[Version] [int] NOT NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKChatSyncLog] PRIMARY KEY CLUSTERED 
(
	[ChatRoomId] ASC,
	[ChatFileId] ASC,
	[UserPassportId] ASC,
	[Version] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatLog]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChatLog](
	[ChatLogId] [bigint] NOT NULL,
	[ChatRoomId] [bigint] NULL,
	[FromUserPassportId] [bigint] NULL,
	[FromUserName] [nvarchar](20) NULL,
	[FromRealName] [nvarchar](20) NULL,
	[ToUserPassportId] [bigint] NULL,
	[ToUserName] [nvarchar](20) NULL,
	[ToRealName] [nvarchar](20) NULL,
	[Content] [nvarchar](1024) NULL,
	[MessageType] [int] NULL,
	[Face] [varchar](128) NULL,
	[Status] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKChatLog] PRIMARY KEY CLUSTERED 
(
	[ChatLogId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChatUser]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatUser](
	[ChatRoomId] [bigint] NOT NULL,
	[UserPassportId] [bigint] NOT NULL,
	[UserName] [nvarchar](64) NULL,
	[RealName] [nvarchar](20) NULL,
	[UserType] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKChatUser] PRIMARY KEY CLUSTERED 
(
	[ChatRoomId] ASC,
	[UserPassportId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stat_Chat]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stat_Chat](
	[StatId] [uniqueidentifier] NOT NULL,
	[CommunityId] [int] NULL,
	[ChatRoomId] [bigint] NULL,
	[RoomName] [nvarchar](500) NULL,
	[TotalUserCount] [int] NULL,
	[TotalSpeakUserCount] [int] NULL,
	[TotalRecCount] [int] NULL,
	[TotalPrivateRecCount] [int] NULL,
	[Status] [int] NULL,
	[Flag] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKStat_Chat] PRIMARY KEY CLUSTERED 
(
	[StatId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stat_Chat_Detail_User]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stat_Chat_Detail_User](
	[StatId] [uniqueidentifier] NOT NULL,
	[UserPassportId] [bigint] NOT NULL,
	[ChatRoomId] [bigint] NULL,
	[UserName] [nvarchar](64) NULL,
	[RealName] [nvarchar](20) NULL,
	[ChatCount] [int] NULL,
	[PrivateCount] [int] NULL,
	[Status] [int] NULL,
	[Flag] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKStat_Chat_Detail_User] PRIMARY KEY CLUSTERED 
(
	[StatId] ASC,
	[UserPassportId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInClient]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInClient](
	[UserPassportId] [bigint] NOT NULL,
	[ClientId] [int] NOT NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKUserInClient] PRIMARY KEY CLUSTERED 
(
	[UserPassportId] ASC,
	[ClientId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoCreation]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CoCreation](
	[CoCreationId] [bigint] NOT NULL,
	[CommunityId] [int] NULL,
	[PjId] [bigint] NULL,
	[Title] [nvarchar](2048) NULL,
	[Introduce] [nvarchar](1024) NULL,
	[SourcePath] [varchar](128) NULL,
	[ImageSrc] [varchar](128) NULL,
	[CcType] [tinyint] NULL,
	[MaxDataCount] [int] NULL,
	[MinDataCount] [int] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[IsRandom] [int] NULL,
	[IsFollowTime] [int] NULL,
	[PermittedUserType] [int] NULL,
	[IsPrivate] [tinyint] NULL,
	[Status] [int] NULL,
	[CcTimes] [tinyint] NULL,
	[UserPassportId] [bigint] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKCoCreation] PRIMARY KEY CLUSTERED 
(
	[CoCreationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CoCreationLayer]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoCreationLayer](
	[CoCreationId] [bigint] NOT NULL,
	[LayerId] [int] NOT NULL,
	[LayerName] [nvarchar](128) NULL,
	[IsMultiValue] [int] NULL,
	[ValueType] [int] NULL,
	[HasPointXY] [int] NULL,
	[HasElement] [int] NULL,
	[UserPassportId] [bigint] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKCoCreationLayer] PRIMARY KEY CLUSTERED 
(
	[CoCreationId] ASC,
	[LayerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoCreationElement]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CoCreationElement](
	[CoCreationId] [bigint] NOT NULL,
	[LayerId] [int] NOT NULL,
	[ElementId] [int] NOT NULL,
	[ElementName] [nvarchar](128) NULL,
	[ImageSrc] [varchar](128) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKCoCreationElement] PRIMARY KEY CLUSTERED 
(
	[CoCreationId] ASC,
	[LayerId] ASC,
	[ElementId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CoCreationData]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CoCreationData](
	[CoCreationDataId] [bigint] NOT NULL,
	[CoCreationId] [bigint] NULL,
	[UserPassportId] [bigint] NULL,
	[Title] [nvarchar](200) NULL,
	[Content] [nvarchar](4000) NULL,
	[Mood] [nvarchar](128) NULL,
	[OtherSpecify1] [nvarchar](128) NULL,
	[OtherSpecify2] [nvarchar](128) NULL,
	[OtherSpecify3] [nvarchar](128) NULL,
	[DataValue] [varchar](1024) NULL,
	[BigPic] [varchar](128) NULL,
	[SmallPic] [varchar](128) NULL,
	[TotalView] [int] NULL,
	[TotalReply] [int] NULL,
	[IsNew] [tinyint] NULL,
	[IsHot] [tinyint] NULL,
	[IsTop] [tinyint] NULL,
	[Status] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKCoCreationData] PRIMARY KEY CLUSTERED 
(
	[CoCreationDataId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CoComment]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoComment](
	[CoCommentId] [bigint] NOT NULL,
	[CoCreationDataId] [bigint] NULL,
	[Subject] [nvarchar](250) NULL,
	[Body] [nvarchar](4000) NULL,
	[BodyFormat] [tinyint] NULL,
	[UserPassportId] [bigint] NULL,
	[UserName] [nvarchar](64) NULL,
	[RealName] [nvarchar](20) NULL,
	[OrderId] [int] NULL,
	[IsNew] [tinyint] NULL,
	[IsHot] [tinyint] NULL,
	[IsTop] [tinyint] NULL,
	[IsApproved] [tinyint] NULL,
	[IsDelete] [tinyint] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKCoComment] PRIMARY KEY CLUSTERED 
(
	[CoCommentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryRelated]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryRelated](
	[ParentId] [bigint] NOT NULL,
	[ChildId] [bigint] NOT NULL,
	[CommunityId] [int] NOT NULL,
	[PjId] [bigint] NULL,
	[ParentType] [int] NULL,
	[ChildType] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKCategoryRelated] PRIMARY KEY CLUSTERED 
(
	[ParentId] ASC,
	[ChildId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [bigint] NOT NULL,
	[PjId] [bigint] NOT NULL,
	[CommunityId] [int] NOT NULL,
	[Title] [nvarchar](2048) NULL,
	[Description] [nvarchar](500) NULL,
	[CategoryType] [int] NULL,
	[Instruction] [ntext] NULL,
	[OrderId] [int] NULL,
	[Status] [int] NULL,
	[UserPassportId] [bigint] NOT NULL,
	[UserName] [nvarchar](64) NULL,
	[RealName] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[LastUpdate] [datetime] NULL,
 CONSTRAINT [XPKCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Topic](
	[TopicId] [bigint] NOT NULL,
	[PjId] [bigint] NULL,
	[TopicType] [tinyint] NULL,
	[Subject] [nvarchar](2048) NULL,
	[Body] [nvarchar](4000) NULL,
	[BodyFormat] [tinyint] NULL,
	[UserPassportId] [bigint] NULL,
	[UserName] [nvarchar](64) NULL,
	[RealName] [nvarchar](20) NULL,
	[RecentCommentUserPassportId] [bigint] NULL,
	[RecentCommentUserName] [nvarchar](20) NULL,
	[RecentCommentRealName] [nvarchar](20) NULL,
	[RecentCommentId] [bigint] NULL,
	[RecentCommentSubject] [nvarchar](250) NULL,
	[RecentReplyDate] [datetime] NULL,
	[TotalView] [int] NULL,
	[TotalReply] [int] NULL,
	[OrderId] [int] NULL,
	[CommentTimes] [tinyint] NULL,
	[CommentPic] [int] NULL,
	[CommentWord] [int] NULL,	
	[HasUploadResource] [tinyint] NULL,
	[IsPremitUploadResource] [tinyint] NULL,
	[IsModified] [tinyint] NULL,
	[IsPermitFirstView] [int] NULL,
	[IsPrivate] [tinyint] NULL,
	[IsApproved] [tinyint] NULL,
	[IsDelete] [tinyint] NULL,
	[HasQuickPoll] [int] NULL,
	[IsMustQuickPoll] [int] NULL,
	IsRequire [int] NULL,	
	[AllowAppendRole] [int] NULL,
	[ImageSrc] [varchar](128) NULL,
	[PageSize] [tinyint] NULL,
	[LastUpdate] [datetime] NULL,
	[LastIp] [varchar](20) NULL,
	[LastHostName] [varchar](50) NULL,
	[LastUserAgent] [varchar](256) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKTopic] PRIMARY KEY CLUSTERED 
(
	[TopicId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stat_Topic]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stat_Topic](
	[StatId] [uniqueidentifier] NOT NULL,
	[CommunityId] [int] NULL,
	[PjId] [bigint] NULL,
	[TopicId] [bigint] NULL,
	[Subject] [nvarchar](250) NULL,
	[TotalView] [int] NULL,
	[TotalReply] [int] NULL,
	[TotalUserCount] [int] NULL,
	[TotalCompProjUserCount] [int] NULL,
	[TotalProjUserCount] [int] NULL,
	[Status] [int] NULL,
	[Flag] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKStat_Topic] PRIMARY KEY CLUSTERED 
(
	[StatId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConfigIndex]    Script Date: 02/09/2015 14:37:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ConfigIndex](
	[Theme] [nvarchar](50) NULL,
	[Announcement] [ntext] NULL,
	[showAnnouncement] [int] NULL,
	[Reward] [ntext] NULL,
	[ShowReward] [int] NULL,
	[Suggestion] [ntext] NULL,
	[ShowSuggestion] [int] NULL,
	[WelcomeBanner] [ntext] NULL,
	[RightWelcome] [ntext] NULL,
	[ModuleTheme] [nvarchar](50) NULL,
	[PjId] [bigint] NOT NULL,
 CONSTRAINT [XPKConfigIndex] PRIMARY KEY CLUSTERED 
(
	[PjId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[ConfigIndex]  WITH CHECK ADD  CONSTRAINT [XFKConfigIndexPjId] FOREIGN KEY([PjId])
REFERENCES [dbo].[Project] ([PjId])
GO

ALTER TABLE [dbo].[ConfigIndex] CHECK CONSTRAINT [XFKConfigIndexPjId]
GO
/****** Object:  Table [dbo].[Poll]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Poll](
	[PollId] [bigint] NOT NULL,
	[CommunityId] [int] NULL,
	[PjId] [bigint] NULL,
	[RefId] [bigint] NULL,
	[RefType] [int] NULL,
	[Title] [nvarchar](256) NULL,
	[PollType] [int] NULL,
	[ViewType] [int] NULL,
	[TotalVotes] [int] NULL,
	[IsRandomOption] [int] NULL,
	[IsModify] [int] NULL,
	[IsShown] [int] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[Status] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKPoll] PRIMARY KEY CLUSTERED 
(
	[PollId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInCommunityProject]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInCommunityProject](
	[UserPassportId] [bigint] NOT NULL,
	[CommunityId] [int] NOT NULL,
	[PjId] [bigint] NOT NULL,
	[UserType] [int] NULL,
	[Point] [int] NULL,
	[TsOfDateCreated] [bigint] NOT NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKUserInCommunityProject] PRIMARY KEY CLUSTERED 
(
	[UserPassportId] ASC,
	[CommunityId] ASC,
	[PjId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInProjectDetail]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInProjectDetail](
	[CommunityId] [int] NOT NULL,
	[PjId] [bigint] NOT NULL,
	[UserPassportId] [bigint] NOT NULL,
	[RefId] [bigint] NOT NULL,
	[RefType] [tinyint] NULL,
	[HasRead] [tinyint] NULL,
	[HasWrite] [tinyint] NULL,
	[HasModify] [tinyint] NULL,
	[HasDelete] [tinyint] NULL,
	[OpAuthorId] [bigint] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKUserInProject] PRIMARY KEY CLUSTERED 
(
	[CommunityId] ASC,
	[PjId] ASC,
	[UserPassportId] ASC,
	[RefId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stat_User]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stat_User](
	[StatId] [uniqueidentifier] NOT NULL,
	[CommunityId] [int] NULL,
	[PjId] [bigint] NULL,
	[UserPassportId] [bigint] NULL,
	[UserName] [nvarchar](64) NULL,
	[RealName] [nvarchar](20) NULL,
	[Email] [varchar](64) NULL,
	[LoginCount] [int] NULL,
	[LastLogin] [datetime] NULL,
	[LastComment] [datetime] NULL,
	[TotalComment] [int] NULL,
	[NullParticipateCount] [int] NULL,
	[TotalTopic] [int] NULL,
	[Status] [int] NULL,
	[Flag] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKStat_User] PRIMARY KEY CLUSTERED 
(
	[StatId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Survey]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Survey](
	[SurveyId] [bigint] NOT NULL,
	[CommunityId] [int] NOT NULL,
	[PjId] [bigint] NULL,
	[SurveyBusinessCode] [nvarchar](50) NULL,
	[Title] [nvarchar](128) NULL,
	[Description] [nvarchar](512) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[TakeTime] [int] NULL,
	[TotalQuestion] [int] NULL,
	[SurveyType] [int] NULL,
	[IsOpen] [int] NULL,
	[ExternalUrl] [nvarchar](255) NULL,
	[OrderId] [int] NULL,
	[Status] [int] NULL,
	[TotalFinishSample] [int] NULL,
	[TargetSample] [int] NULL,
	[InvitedSample] [int] NULL,
	[IsPermitModify] [int] NULL,
	[Point] [int] NULL,
	[Cash] [decimal](18, 2) NULL,
	[IsAutoIncreasePoint] [tinyint] NULL,
	[IsShowInProjList] [tinyint] NULL,	
	[SampleRangeCount] [int] NULL,
	[MachCount] [int] NULL,
	[SurveyIndustry] [int] NULL,
	[Bak1] [nvarchar](20) NULL,
	[Bak2] [nvarchar](20) NULL,
	[Bak3] [nvarchar](50) NULL,
	[Bak4] [nvarchar](100) NULL,
	[Bak5] [nvarchar](200) NULL,	
	[LastUpdate] [datetime] NULL,
	[UserPassportId] [bigint] NOT NULL,
	[CreateUser] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKSurvey] PRIMARY KEY CLUSTERED 
(
	[SurveyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurveyData]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SurveyData](
	[CommunityId] [int] NOT NULL,
	[GroupId] [bigint] NOT NULL,
	[PjId] [bigint] NOT NULL,
	[UserPassportId] [bigint] NOT NULL,
	[RespId] [int] NOT NULL,
	[SurveyQuestionId] [bigint] NOT NULL,
	[QuesCode] [varchar](20) NOT NULL,
	[QuesAllCode] [varchar](20) NOT NULL,
	[QuesType] [int] NULL,
	[QuesValue] [nvarchar](1024) NULL,
	[QuesExplain] [nvarchar](1024) NULL,
	[OrderId] [int] NULL,
	[ValueType] [tinyint] NULL,
	[Flag] [tinyint] NULL,
	[Status] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKSurveyData] PRIMARY KEY CLUSTERED 
(
	[CommunityId] ASC,
	[GroupId] ASC,
	[PjId] ASC,
	[UserPassportId] ASC,
	[RespId] ASC,
	[SurveyQuestionId] ASC,
	[QuesCode] ASC,
	[QuesAllCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SurveyQuestion]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SurveyQuestion](
	[SurveyQuestionId] [bigint] NOT NULL,
	[CommunityId] [int] NULL,
	[SurveyId] [bigint] NOT NULL,
	[PjId] [bigint] NULL,
	[UserPassportId] [bigint] NULL,
	[Code] [varchar](20) NULL,
	[Label] [nvarchar](1024) NULL,
	[QuesType] [tinyint] NULL,
	[DisplayType] [tinyint] NULL,
	[SubCount] [int] NULL,
	[OptionCount] [int] NULL,
	[LevelId] [tinyint] NULL,
	[ParentId] [bigint] NULL,
	[OrderId] [int] NULL,
	[IsSubOpentext] [tinyint] NULL,
	[IsOptionOpentext] [tinyint] NULL,
	[IsNumeric] [tinyint] NULL,
	[IsResource] [tinyint] NULL,
	[TotalView] [int] NULL,
	[TotalAnswer] [int] NULL,
	[IsModified] [tinyint] NULL,
	[NeedExplain] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKSurveyQues] PRIMARY KEY CLUSTERED 
(
	[SurveyQuestionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BlockInCommunity]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BlockInCommunity](
	[BlockId] [bigint] NOT NULL,
	[CommunityId] [int] NULL,
	[BlockName] [nvarchar](50) NULL,
	[Description] [nvarchar](128) NULL,
	[HasChild] [tinyint] NULL,
	[LevelId] [tinyint] NULL,
	[ParentId] [bigint] NULL,
	[PicSrc] [varchar](64) NULL,
	[UserCount] [int] NULL,
	[ThreadCount] [int] NULL,
	[NewThreadCount] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKBlockInCommunity] PRIMARY KEY CLUSTERED 
(
	[BlockId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserInKudo]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInKudo](
	[UserPassportId] [bigint] NOT NULL,
	[RefId] [bigint] NOT NULL,
	[RefType] [int] NOT NULL,
	[GivenKudos] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKUserInKudo] PRIMARY KEY CLUSTERED 
(
	[UserPassportId] ASC,
	[RefId] ASC,
	[RefType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Module]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Module](
	[ModuleId] [int] NOT NULL,
	[LanguageCode] [int] NOT NULL,
	[ModuleName] [nvarchar](256) NULL,
	[Location] [varchar](256) NULL,
	[DefaultUserType] [varchar](50) NULL,
	[ParentId] [int] NULL,
	[OrderId] [int] NULL,
	[Status] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKModule] PRIMARY KEY CLUSTERED 
(
	[ModuleId] ASC,
	[LanguageCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Nationality]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nationality](
	[NationalityId] [int] NOT NULL,
	[ProvinceId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[LanguageCode] [int] NOT NULL,
	[NationName] [nvarchar](64) NULL,
	[ProvinceName] [nvarchar](64) NULL,
	[CityName] [nvarchar](64) NULL,
 CONSTRAINT [XPKNationality] PRIMARY KEY CLUSTERED 
(
	[NationalityId] ASC,
	[ProvinceId] ASC,
	[CityId] ASC,
	[LanguageCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Occupation]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Occupation](
	[OccupationId] [int] NOT NULL,
	[LanguageCode] [int] NOT NULL,
	[OccupationName] [nvarchar](64) NULL,
	[ParentId] [int] NULL,
 CONSTRAINT [XPKOccupation] PRIMARY KEY CLUSTERED 
(
	[OccupationId] ASC,
	[LanguageCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PollOption]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PollOption](
	[PollOptionId] [bigint] NOT NULL,
	[PollId] [bigint] NULL,
	[Title] [nvarchar](256) NULL,
	[Code] [int] NULL,
	[OrderId] [int] NULL,
	[TotalVotes] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKPollOption] PRIMARY KEY CLUSTERED 
(
	[PollOptionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PollData]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PollData](
	[PollId] [bigint] NOT NULL,
	[PollOptionId] [bigint] NOT NULL,
	[UserPassportId] [bigint] NOT NULL,
	[Code] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKPollData] PRIMARY KEY CLUSTERED 
(
	[PollId] ASC,
	[PollOptionId] ASC,
	[UserPassportId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeployRole]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeployRole](
	[Id] [bigint] NOT NULL,
	[PjId] [bigint] NOT NULL,
	[UserPassportId] [bigint] NOT NULL,
	[ContentId] [bigint] NULL,
	[ContentType] [int] NULL,
	[HasRead] [int] NULL,
	[HasWrite] [int] NULL,
	[HasModify] [int] NULL,
	[HasDelete] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKDeploy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeWork]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeWork](
	[HwId] [bigint] NOT NULL,
	[PjId] [bigint] NOT NULL,
	[Title] [nvarchar](2048) NULL,
	[Body] [nvarchar](4000) NULL,
	[Description] [nvarchar](500) NULL,
	[TotalBlog] [int] NULL,
	[OrderId] [int] NULL,
	[BlogTimes] [int] NULL,
	[HasUploadResource] [int] NULL,
	[IsPremitUploadResource] [int] NULL,
	[IsPrivate] [int] NULL,
	[IsApproved] [int] NULL,
	[IsDelete] [int] NULL,
	[HasQuickPoll] [int] NULL,
	[IsMustQuickPoll] [int] NULL,
	IsRequire [int] NULL,	
	[ImageSrc] [nvarchar](128) NULL,
	[PageSize] [int] NULL,
	[UserPassportId] [bigint] NOT NULL,
	[UserName] [nvarchar](64) NULL,
	[RealName] [nvarchar](50) NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKHomeWork] PRIMARY KEY CLUSTERED 
(
	[HwId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectOrder]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectOrder](
	[PjId] [bigint] NOT NULL,
	[RefId] [bigint] NOT NULL,
	[RefType] [tinyint] NOT NULL,
	[RefOrderId] [int] NULL,
	[IsDelete] [int] NULL,
	[UserPassportId] [bigint] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKBlockInProject] PRIMARY KEY CLUSTERED 
(
	[PjId] ASC,
	[RefId] ASC,
	[RefType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Section](
	[SectionId] [bigint] NOT NULL,
	[PjId] [bigint] NULL,
	[Title] [nvarchar](2048) NULL,
	[Description] [nvarchar](4000) NULL,
	[ImageSrc] [varchar](128) NULL,
	[TopicCount] [int] NULL,
	[TopicPageSize] [int] NULL,
	[OrderId] [int] NULL,
	[UseOrder] [int] NULL,
	[Status] [int] NULL,
	[UserPassportId] [bigint] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKSection] PRIMARY KEY CLUSTERED 
(
	[SectionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentId] [bigint] NOT NULL,
	[PjId] [bigint] NULL,
	[TopicId] [bigint] NULL,
	[Subject] [nvarchar](2048) NULL,
	[Body] [nvarchar](4000) NULL,
	[BodyFormat] [tinyint] NULL,
	[UserPassportId] [bigint] NULL,
	[UserName] [nvarchar](64) NULL,
	[RealName] [nvarchar](20) NULL,
	[OrderId] [int] NULL,
	[HasUploadResource] [int] NULL,
	[IsApproved] [tinyint] NULL,
	[IsDelete] [tinyint] NULL,
	[ReplyId] [bigint] NULL,
	[ReplyUserPassportId] [bigint] NULL,
	[ReplyUserName] [nvarchar](64) NULL,
	[QuoteId] [bigint] NULL,
	[QuoteBody] [nvarchar](4000) NULL,
	[TotalReply] [int] NULL,
	[IsClient] [int] NULL,
	[IsPrivate] [int] NULL,
	[IsRead] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[LastIp] [varchar](20) NULL,
	[LastHostName] [varchar](50) NULL,
	[LastUserAgent] [varchar](256) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKComment] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserInProjectOrder]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInProjectOrder](
	[UserPassportId] [bigint] NOT NULL,
	[PjId] [bigint] NOT NULL,
	[RefId] [bigint] NOT NULL,
	[RefType] [tinyint] NOT NULL,
	[RefOrderId] [int] NULL,
	[TsOfDateCreated] [bigint] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKUserInProjectOrder] PRIMARY KEY CLUSTERED 
(
	[UserPassportId] ASC,
	[PjId] ASC,
	[RefId] ASC,
	[RefType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UploadResource]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UploadResource](
	[UploadResourceId] [bigint] NOT NULL,
	[PjId] [bigint] NULL,
	[RefId] [bigint] NULL,
	[RefType] [tinyint] NULL,
	[FileName] [nvarchar](256) NULL,
	[ResourcePath] [varchar](128) NULL,
	[ResourceType] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKUploadResource] PRIMARY KEY CLUSTERED 
(
	[UploadResourceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stat_Topic_Detail_User]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stat_Topic_Detail_User](
	[StatId] [uniqueidentifier] NOT NULL,
	[UserPassportId] [bigint] NOT NULL,
	[TopicId] [bigint] NULL,
	[UserName] [nvarchar](64) NULL,
	[RealName] [nvarchar](20) NULL,
	[CommentCount] [int] NULL,
	[Status] [int] NULL,
	[Flag] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKStat_Topic_Detail_User] PRIMARY KEY CLUSTERED 
(
	[StatId] ASC,
	[UserPassportId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurveyQuestionPrivateLinks]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SurveyQuestionPrivateLinks](
	[SurveyQuestionPrivateLinksId] [bigint] NOT NULL,
	[UserPassportId] [bigint] NOT NULL,
	[SurveyId] [bigint] NOT NULL,
	[PrivateUrl] [varchar](256) NULL,
	[Status] [int] NULL,
	[Point] [int] NULL,
	[Cash] [decimal](18, 2) NULL,
	[AuditPoint] [int] NULL,
	Remark nvarchar(100) NULL,
	bak1 nvarchar(100) NULL,
	bak2 nvarchar(100) NULL,
	bak3 nvarchar(100) NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKSurveyQuestionPrivateLinks] PRIMARY KEY CLUSTERED 
(
	[SurveyQuestionPrivateLinksId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Blog](
	[BlogId] [bigint] NOT NULL,
	[CommunityId] [int] NULL,
	[HwId] [bigint] NULL,
	[Subject] [nvarchar](250) NULL,
	[Body] [nvarchar](4000) NULL,
	[BodyFormat] [tinyint] NULL,
	[UserPassportId] [bigint] NULL,
	[UserName] [nvarchar](64) NULL,
	[RealName] [nvarchar](20) NULL,
	[TotalView] [int] NULL,
	[TotalReply] [int] NULL,
	[HasUploadResource] [tinyint] NULL,
	[IsNew] [tinyint] NULL,
	[IsHot] [tinyint] NULL,
	[IsApproved] [tinyint] NULL,
	[IsDelete] [tinyint] NULL,
	[ImageSrc] [varchar](128) NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKBlog] PRIMARY KEY CLUSTERED 
(
	[BlogId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BlogComment]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogComment](
	[BlogCommentId] [bigint] NOT NULL,
	[BlogId] [bigint] NULL,
	[Subject] [nvarchar](250) NULL,
	[Body] [nvarchar](4000) NULL,
	[BodyFormat] [tinyint] NULL,
	[UserPassportId] [bigint] NULL,
	[UserName] [nvarchar](64) NULL,
	[RealName] [nvarchar](20) NULL,
	[IsNew] [tinyint] NULL,
	[IsHot] [tinyint] NULL,
	[IsApproved] [tinyint] NULL,
	[IsDelete] [tinyint] NULL,
	[IsRead] [int] NULL,
	[ReplyId] [bigint] NULL,
	[ReplyUserPassportId] [bigint] NULL,
	[ReplyUserName] [nvarchar](64) NULL,
	[TotalReply] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKBlogComment] PRIMARY KEY CLUSTERED 
(
	[BlogCommentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurveySub]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SurveySub](
	[SurveySubId] [bigint] NOT NULL,
	[SurveyQuestionId] [bigint] NULL,
	[Code] [varchar](20) NULL,
	[Label] [nvarchar](1024) NULL,
	[OrderId] [int] NULL,
	[IsOpentext] [tinyint] NULL,
	[IsNumeric] [tinyint] NULL,
	[IsResource] [tinyint] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKSurveySub] PRIMARY KEY CLUSTERED 
(
	[SurveySubId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SurveyOption]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SurveyOption](
	[SurveyOptionId] [bigint] NOT NULL,
	[SurveyQuestionId] [bigint] NULL,
	[Code] [varchar](20) NULL,
	[Label] [nvarchar](1024) NULL,
	[LevelId] [tinyint] NULL,
	[ParentId] [bigint] NULL,
	[OrderId] [int] NULL,
	[IsOpentext] [tinyint] NULL,
	[IsNumeric] [tinyint] NULL,
	[IsResource] [tinyint] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKSurveyOption] PRIMARY KEY CLUSTERED 
(
	[SurveyOptionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SurveyOutQuestionProperty]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SurveyOutQuestionProperty](
	[SurveyOutQuestionPropertyId] [bigint] NOT NULL,
	[SurveyQuestionId] [bigint] NOT NULL,
	[OpenUrl] [varchar](256) NULL,
	[IsOpen] [int] NULL,
	[UserPassportId] [bigint] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKSurveyOutQuestionP] PRIMARY KEY CLUSTERED 
(
	[SurveyOutQuestionPropertyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Post]    Script Date: 05/29/2012 17:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[PostId] [bigint] NOT NULL,
	PjId bigint NULL,
	[ThreadId] [bigint] NULL,
	[Subject] [nvarchar](250) NULL,
	[Body] [nvarchar](4000) NULL,
	[BodyFormat] [tinyint] NULL,
	[UserPassportId] [bigint] NULL,
	[UserName] [nvarchar](64) NULL,
	[RealName] [nvarchar](20) NULL,
	[Kudos] [int] NULL,
	[IsNew] [tinyint] NULL,
	[IsHot] [tinyint] NULL,
	[IsApproved] [tinyint] NULL,
	[IsDelete] [tinyint] NULL,
	[IsRead] [int] NULL,
	[ReplyId] [bigint] NULL,
	[ReplyUserPassportId] [bigint] NULL,
	[ReplyUserName] [nvarchar](64) NULL,
	[QuoteId] [bigint] NULL,
	[QuoteBody] [nvarchar](4000) NULL,
	[TotalReply] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKPost] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [R_56]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[BlockInCommunity]  WITH CHECK ADD  CONSTRAINT [R_56] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Community] ([CommunityId])
GO
ALTER TABLE [dbo].[BlockInCommunity] CHECK CONSTRAINT [R_56]
GO
/****** Object:  ForeignKey [R_57]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [R_57] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [R_57]
GO
/****** Object:  ForeignKey [R_58]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[BlogComment]  WITH CHECK ADD  CONSTRAINT [R_58] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blog] ([BlogId])
GO
ALTER TABLE [dbo].[BlogComment] CHECK CONSTRAINT [R_58]
GO
/****** Object:  ForeignKey [R_134]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Board]  WITH CHECK ADD  CONSTRAINT [R_134] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[Board] CHECK CONSTRAINT [R_134]
GO
/****** Object:  ForeignKey [R_139]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Board]  WITH CHECK ADD  CONSTRAINT [R_139] FOREIGN KEY([PjId])
REFERENCES [dbo].[Project] ([PjId])
GO
ALTER TABLE [dbo].[Board] CHECK CONSTRAINT [R_139]
GO
/****** Object:  ForeignKey [R_136]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [R_136] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Community] ([CommunityId])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [R_136]
GO
/****** Object:  ForeignKey [R_137]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [R_137] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [R_137]
GO
/****** Object:  ForeignKey [R_140]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [R_140] FOREIGN KEY([PjId])
REFERENCES [dbo].[Project] ([PjId])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [R_140]
GO
/****** Object:  ForeignKey [R_138]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[CategoryRelated]  WITH CHECK ADD  CONSTRAINT [R_138] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Community] ([CommunityId])
GO
ALTER TABLE [dbo].[CategoryRelated] CHECK CONSTRAINT [R_138]
GO
/****** Object:  ForeignKey [R_72]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[ChatFile]  WITH CHECK ADD  CONSTRAINT [R_72] FOREIGN KEY([ChatRoomId])
REFERENCES [dbo].[ChatRoom] ([ChatRoomId])
GO
ALTER TABLE [dbo].[ChatFile] CHECK CONSTRAINT [R_72]
GO
/****** Object:  ForeignKey [R_73]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[ChatFile]  WITH CHECK ADD  CONSTRAINT [R_73] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[ChatFile] CHECK CONSTRAINT [R_73]
GO
/****** Object:  ForeignKey [R_74]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[ChatLog]  WITH CHECK ADD  CONSTRAINT [R_74] FOREIGN KEY([FromUserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[ChatLog] CHECK CONSTRAINT [R_74]
GO
/****** Object:  ForeignKey [R_76]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[ChatLog]  WITH CHECK ADD  CONSTRAINT [R_76] FOREIGN KEY([ChatRoomId])
REFERENCES [dbo].[ChatRoom] ([ChatRoomId])
GO
ALTER TABLE [dbo].[ChatLog] CHECK CONSTRAINT [R_76]
GO
/****** Object:  ForeignKey [R_69]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[ChatRoom]  WITH CHECK ADD  CONSTRAINT [R_69] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[ChatRoom] CHECK CONSTRAINT [R_69]
GO
/****** Object:  ForeignKey [R_77]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[ChatRoom]  WITH CHECK ADD  CONSTRAINT [R_77] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Community] ([CommunityId])
GO
ALTER TABLE [dbo].[ChatRoom] CHECK CONSTRAINT [R_77]
GO
/****** Object:  ForeignKey [R_81]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[ChatSync]  WITH CHECK ADD  CONSTRAINT [R_81] FOREIGN KEY([ChatRoomId])
REFERENCES [dbo].[ChatRoom] ([ChatRoomId])
GO
ALTER TABLE [dbo].[ChatSync] CHECK CONSTRAINT [R_81]
GO
/****** Object:  ForeignKey [R_83]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[ChatSync]  WITH CHECK ADD  CONSTRAINT [R_83] FOREIGN KEY([ChatFileId])
REFERENCES [dbo].[ChatFile] ([ChatFileId])
GO
ALTER TABLE [dbo].[ChatSync] CHECK CONSTRAINT [R_83]
GO
/****** Object:  ForeignKey [R_85]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[ChatSync]  WITH CHECK ADD  CONSTRAINT [R_85] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[ChatSync] CHECK CONSTRAINT [R_85]
GO
/****** Object:  ForeignKey [R_82]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[ChatSyncLog]  WITH CHECK ADD  CONSTRAINT [R_82] FOREIGN KEY([ChatRoomId])
REFERENCES [dbo].[ChatRoom] ([ChatRoomId])
GO
ALTER TABLE [dbo].[ChatSyncLog] CHECK CONSTRAINT [R_82]
GO
/****** Object:  ForeignKey [R_84]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[ChatSyncLog]  WITH CHECK ADD  CONSTRAINT [R_84] FOREIGN KEY([ChatFileId])
REFERENCES [dbo].[ChatFile] ([ChatFileId])
GO
ALTER TABLE [dbo].[ChatSyncLog] CHECK CONSTRAINT [R_84]
GO
/****** Object:  ForeignKey [R_86]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[ChatSyncLog]  WITH CHECK ADD  CONSTRAINT [R_86] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[ChatSyncLog] CHECK CONSTRAINT [R_86]
GO
/****** Object:  ForeignKey [R_70]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[ChatUser]  WITH CHECK ADD  CONSTRAINT [R_70] FOREIGN KEY([ChatRoomId])
REFERENCES [dbo].[ChatRoom] ([ChatRoomId])
GO
ALTER TABLE [dbo].[ChatUser] CHECK CONSTRAINT [R_70]
GO
/****** Object:  ForeignKey [R_71]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[ChatUser]  WITH CHECK ADD  CONSTRAINT [R_71] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[ChatUser] CHECK CONSTRAINT [R_71]
GO
/****** Object:  ForeignKey [R_75]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[CoComment]  WITH CHECK ADD  CONSTRAINT [R_75] FOREIGN KEY([CoCreationDataId])
REFERENCES [dbo].[CoCreationData] ([CoCreationDataId])
GO
ALTER TABLE [dbo].[CoComment] CHECK CONSTRAINT [R_75]
GO
/****** Object:  ForeignKey [R_33]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[CoCreation]  WITH CHECK ADD  CONSTRAINT [R_33] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Community] ([CommunityId])
GO
ALTER TABLE [dbo].[CoCreation] CHECK CONSTRAINT [R_33]
GO
/****** Object:  ForeignKey [R_34]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[CoCreation]  WITH CHECK ADD  CONSTRAINT [R_34] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[CoCreation] CHECK CONSTRAINT [R_34]
GO
/****** Object:  ForeignKey [R_61]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[CoCreationData]  WITH CHECK ADD  CONSTRAINT [R_61] FOREIGN KEY([CoCreationId])
REFERENCES [dbo].[CoCreation] ([CoCreationId])
GO
ALTER TABLE [dbo].[CoCreationData] CHECK CONSTRAINT [R_61]
GO
/****** Object:  ForeignKey [R_62]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[CoCreationData]  WITH CHECK ADD  CONSTRAINT [R_62] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[CoCreationData] CHECK CONSTRAINT [R_62]
GO
/****** Object:  ForeignKey [R_66]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[CoCreationElement]  WITH CHECK ADD  CONSTRAINT [R_66] FOREIGN KEY([CoCreationId])
REFERENCES [dbo].[CoCreation] ([CoCreationId])
GO
ALTER TABLE [dbo].[CoCreationElement] CHECK CONSTRAINT [R_66]
GO
/****** Object:  ForeignKey [R_67]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[CoCreationElement]  WITH CHECK ADD  CONSTRAINT [R_67] FOREIGN KEY([CoCreationId], [LayerId])
REFERENCES [dbo].[CoCreationLayer] ([CoCreationId], [LayerId])
GO
ALTER TABLE [dbo].[CoCreationElement] CHECK CONSTRAINT [R_67]
GO
/****** Object:  ForeignKey [R_64]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[CoCreationLayer]  WITH CHECK ADD  CONSTRAINT [R_64] FOREIGN KEY([CoCreationId])
REFERENCES [dbo].[CoCreation] ([CoCreationId])
GO
ALTER TABLE [dbo].[CoCreationLayer] CHECK CONSTRAINT [R_64]
GO
/****** Object:  ForeignKey [R_65]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[CoCreationLayer]  WITH CHECK ADD  CONSTRAINT [R_65] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[CoCreationLayer] CHECK CONSTRAINT [R_65]
GO
/****** Object:  ForeignKey [R_27]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [R_27] FOREIGN KEY([PjId])
REFERENCES [dbo].[Project] ([PjId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [R_27]
GO
/****** Object:  ForeignKey [R_28]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [R_28] FOREIGN KEY([TopicId])
REFERENCES [dbo].[Topic] ([TopicId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [R_28]
GO
/****** Object:  ForeignKey [R_29]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [R_29] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [R_29]
GO
/****** Object:  ForeignKey [R_10]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Community]  WITH CHECK ADD  CONSTRAINT [R_10] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[Community] CHECK CONSTRAINT [R_10]
GO
/****** Object:  ForeignKey [R_11]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Community]  WITH CHECK ADD  CONSTRAINT [R_11] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Client] ([ClientId])
GO
ALTER TABLE [dbo].[Community] CHECK CONSTRAINT [R_11]
GO

/****** Object:  ForeignKey [R_141]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[DeployRole]  WITH CHECK ADD  CONSTRAINT [R_141] FOREIGN KEY([PjId])
REFERENCES [dbo].[Project] ([PjId])
GO
ALTER TABLE [dbo].[DeployRole] CHECK CONSTRAINT [R_141]
GO
/****** Object:  ForeignKey [R_142]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[DeployRole]  WITH CHECK ADD  CONSTRAINT [R_142] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[DeployRole] CHECK CONSTRAINT [R_142]
GO
/****** Object:  ForeignKey [R_124]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[HomeWork]  WITH CHECK ADD  CONSTRAINT [R_124] FOREIGN KEY([PjId])
REFERENCES [dbo].[Project] ([PjId])
GO
ALTER TABLE [dbo].[HomeWork] CHECK CONSTRAINT [R_124]
GO
/****** Object:  ForeignKey [R_125]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[HomeWork]  WITH CHECK ADD  CONSTRAINT [R_125] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[HomeWork] CHECK CONSTRAINT [R_125]
GO
/****** Object:  ForeignKey [R_51]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Module]  WITH CHECK ADD  CONSTRAINT [R_51] FOREIGN KEY([LanguageCode])
REFERENCES [dbo].[LanguageCode] ([LanguageCode])
GO
ALTER TABLE [dbo].[Module] CHECK CONSTRAINT [R_51]
GO
/****** Object:  ForeignKey [R_6]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Nationality]  WITH CHECK ADD  CONSTRAINT [R_6] FOREIGN KEY([LanguageCode])
REFERENCES [dbo].[LanguageCode] ([LanguageCode])
GO
ALTER TABLE [dbo].[Nationality] CHECK CONSTRAINT [R_6]
GO
/****** Object:  ForeignKey [R_7]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Occupation]  WITH CHECK ADD  CONSTRAINT [R_7] FOREIGN KEY([LanguageCode])
REFERENCES [dbo].[LanguageCode] ([LanguageCode])
GO
ALTER TABLE [dbo].[Occupation] CHECK CONSTRAINT [R_7]
GO
/****** Object:  ForeignKey [R_87]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Poll]  WITH CHECK ADD  CONSTRAINT [R_87] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Community] ([CommunityId])
GO
ALTER TABLE [dbo].[Poll] CHECK CONSTRAINT [R_87]
GO
/****** Object:  ForeignKey [R_89]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[PollData]  WITH CHECK ADD  CONSTRAINT [R_89] FOREIGN KEY([PollId])
REFERENCES [dbo].[Poll] ([PollId])
GO
ALTER TABLE [dbo].[PollData] CHECK CONSTRAINT [R_89]
GO
/****** Object:  ForeignKey [R_90]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[PollData]  WITH CHECK ADD  CONSTRAINT [R_90] FOREIGN KEY([PollOptionId])
REFERENCES [dbo].[PollOption] ([PollOptionId])
GO
ALTER TABLE [dbo].[PollData] CHECK CONSTRAINT [R_90]
GO
/****** Object:  ForeignKey [R_91]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[PollData]  WITH CHECK ADD  CONSTRAINT [R_91] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[PollData] CHECK CONSTRAINT [R_91]
GO
/****** Object:  ForeignKey [R_88]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[PollOption]  WITH CHECK ADD  CONSTRAINT [R_88] FOREIGN KEY([PollId])
REFERENCES [dbo].[Poll] ([PollId])
GO
ALTER TABLE [dbo].[PollOption] CHECK CONSTRAINT [R_88]
GO
/****** Object:  ForeignKey [R_54]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [R_54] FOREIGN KEY([ThreadId])
REFERENCES [dbo].[Thread] ([ThreadId])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [R_54]
GO
/****** Object:  ForeignKey [R_55]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [R_55] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [R_55]
GO
/****** Object:  ForeignKey [R_12]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [R_12] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [R_12]
GO
/****** Object:  ForeignKey [R_22]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [R_22] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Community] ([CommunityId])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [R_22]
GO
/****** Object:  ForeignKey [R_32]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[ProjectOrder]  WITH CHECK ADD  CONSTRAINT [R_32] FOREIGN KEY([PjId])
REFERENCES [dbo].[Project] ([PjId])
GO
ALTER TABLE [dbo].[ProjectOrder] CHECK CONSTRAINT [R_32]
GO
/****** Object:  ForeignKey [R_39]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[ProjectOrder]  WITH CHECK ADD  CONSTRAINT [R_39] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[ProjectOrder] CHECK CONSTRAINT [R_39]
GO
/****** Object:  ForeignKey [R_119]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [R_119] FOREIGN KEY([PjId])
REFERENCES [dbo].[Project] ([PjId])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [R_119]
GO
/****** Object:  ForeignKey [R_120]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [R_120] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [R_120]
GO
/****** Object:  ForeignKey [R_98]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Stat_Chat]  WITH CHECK ADD  CONSTRAINT [R_98] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Community] ([CommunityId])
GO
ALTER TABLE [dbo].[Stat_Chat] CHECK CONSTRAINT [R_98]
GO
/****** Object:  ForeignKey [R_99]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Stat_Chat]  WITH CHECK ADD  CONSTRAINT [R_99] FOREIGN KEY([ChatRoomId])
REFERENCES [dbo].[ChatRoom] ([ChatRoomId])
GO
ALTER TABLE [dbo].[Stat_Chat] CHECK CONSTRAINT [R_99]
GO
/****** Object:  ForeignKey [R_103]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Stat_Chat_Detail_User]  WITH CHECK ADD  CONSTRAINT [R_103] FOREIGN KEY([StatId])
REFERENCES [dbo].[Stat_Chat] ([StatId])
GO
ALTER TABLE [dbo].[Stat_Chat_Detail_User] CHECK CONSTRAINT [R_103]
GO
/****** Object:  ForeignKey [R_104]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Stat_Chat_Detail_User]  WITH CHECK ADD  CONSTRAINT [R_104] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[Stat_Chat_Detail_User] CHECK CONSTRAINT [R_104]
GO
/****** Object:  ForeignKey [R_105]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Stat_Chat_Detail_User]  WITH CHECK ADD  CONSTRAINT [R_105] FOREIGN KEY([ChatRoomId])
REFERENCES [dbo].[ChatRoom] ([ChatRoomId])
GO
ALTER TABLE [dbo].[Stat_Chat_Detail_User] CHECK CONSTRAINT [R_105]
GO
/****** Object:  ForeignKey [R_95]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Stat_Topic]  WITH CHECK ADD  CONSTRAINT [R_95] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Community] ([CommunityId])
GO
ALTER TABLE [dbo].[Stat_Topic] CHECK CONSTRAINT [R_95]
GO
/****** Object:  ForeignKey [R_96]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Stat_Topic]  WITH CHECK ADD  CONSTRAINT [R_96] FOREIGN KEY([PjId])
REFERENCES [dbo].[Project] ([PjId])
GO
ALTER TABLE [dbo].[Stat_Topic] CHECK CONSTRAINT [R_96]
GO
/****** Object:  ForeignKey [R_97]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Stat_Topic]  WITH CHECK ADD  CONSTRAINT [R_97] FOREIGN KEY([TopicId])
REFERENCES [dbo].[Topic] ([TopicId])
GO
ALTER TABLE [dbo].[Stat_Topic] CHECK CONSTRAINT [R_97]
GO
/****** Object:  ForeignKey [R_100]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Stat_Topic_Detail_User]  WITH CHECK ADD  CONSTRAINT [R_100] FOREIGN KEY([StatId])
REFERENCES [dbo].[Stat_Topic] ([StatId])
GO
ALTER TABLE [dbo].[Stat_Topic_Detail_User] CHECK CONSTRAINT [R_100]
GO
/****** Object:  ForeignKey [R_101]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Stat_Topic_Detail_User]  WITH CHECK ADD  CONSTRAINT [R_101] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[Stat_Topic_Detail_User] CHECK CONSTRAINT [R_101]
GO
/****** Object:  ForeignKey [R_102]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Stat_Topic_Detail_User]  WITH CHECK ADD  CONSTRAINT [R_102] FOREIGN KEY([TopicId])
REFERENCES [dbo].[Topic] ([TopicId])
GO
ALTER TABLE [dbo].[Stat_Topic_Detail_User] CHECK CONSTRAINT [R_102]
GO
/****** Object:  ForeignKey [R_92]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Stat_User]  WITH CHECK ADD  CONSTRAINT [R_92] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Community] ([CommunityId])
GO
ALTER TABLE [dbo].[Stat_User] CHECK CONSTRAINT [R_92]
GO
/****** Object:  ForeignKey [R_93]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Stat_User]  WITH CHECK ADD  CONSTRAINT [R_93] FOREIGN KEY([PjId])
REFERENCES [dbo].[Project] ([PjId])
GO
ALTER TABLE [dbo].[Stat_User] CHECK CONSTRAINT [R_93]
GO
/****** Object:  ForeignKey [R_94]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Stat_User]  WITH CHECK ADD  CONSTRAINT [R_94] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[Stat_User] CHECK CONSTRAINT [R_94]
GO
/****** Object:  ForeignKey [R_128]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Survey]  WITH CHECK ADD  CONSTRAINT [R_128] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Community] ([CommunityId])
GO
ALTER TABLE [dbo].[Survey] CHECK CONSTRAINT [R_128]
GO
/****** Object:  ForeignKey [R_130]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Survey]  WITH CHECK ADD  CONSTRAINT [R_130] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[Survey] CHECK CONSTRAINT [R_130]
GO
/****** Object:  ForeignKey [R_59]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[SurveyData]  WITH CHECK ADD  CONSTRAINT [R_59] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Community] ([CommunityId])
GO
ALTER TABLE [dbo].[SurveyData] CHECK CONSTRAINT [R_59]
GO
/****** Object:  ForeignKey [R_38]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[SurveyOption]  WITH CHECK ADD  CONSTRAINT [R_38] FOREIGN KEY([SurveyQuestionId])
REFERENCES [dbo].[SurveyQuestion] ([SurveyQuestionId])
GO
ALTER TABLE [dbo].[SurveyOption] CHECK CONSTRAINT [R_38]
GO
/****** Object:  ForeignKey [R_106]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[SurveyOutQuestionProperty]  WITH CHECK ADD  CONSTRAINT [R_106] FOREIGN KEY([SurveyQuestionId])
REFERENCES [dbo].[SurveyQuestion] ([SurveyQuestionId])
GO
ALTER TABLE [dbo].[SurveyOutQuestionProperty] CHECK CONSTRAINT [R_106]
GO
/****** Object:  ForeignKey [R_133]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[SurveyQuestion]  WITH CHECK ADD  CONSTRAINT [R_133] FOREIGN KEY([SurveyId])
REFERENCES [dbo].[Survey] ([SurveyId])
GO
ALTER TABLE [dbo].[SurveyQuestion] CHECK CONSTRAINT [R_133]
GO
/****** Object:  ForeignKey [R_35]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[SurveyQuestion]  WITH CHECK ADD  CONSTRAINT [R_35] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Community] ([CommunityId])
GO
ALTER TABLE [dbo].[SurveyQuestion] CHECK CONSTRAINT [R_35]
GO
/****** Object:  ForeignKey [R_36]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[SurveyQuestion]  WITH CHECK ADD  CONSTRAINT [R_36] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[SurveyQuestion] CHECK CONSTRAINT [R_36]
GO
/****** Object:  ForeignKey [R_129]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[SurveyQuestionPrivateLinks]  WITH CHECK ADD  CONSTRAINT [R_129] FOREIGN KEY([SurveyId])
REFERENCES [dbo].[Survey] ([SurveyId])
GO
ALTER TABLE [dbo].[SurveyQuestionPrivateLinks] CHECK CONSTRAINT [R_129]
GO
/****** Object:  ForeignKey [R_131]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[SurveyQuestionPrivateLinks]  WITH CHECK ADD  CONSTRAINT [R_131] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[SurveyQuestionPrivateLinks] CHECK CONSTRAINT [R_131]
GO
/****** Object:  ForeignKey [R_37]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[SurveySub]  WITH CHECK ADD  CONSTRAINT [R_37] FOREIGN KEY([SurveyQuestionId])
REFERENCES [dbo].[SurveyQuestion] ([SurveyQuestionId])
GO
ALTER TABLE [dbo].[SurveySub] CHECK CONSTRAINT [R_37]
GO
/****** Object:  ForeignKey [R_135]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Thread]  WITH CHECK ADD  CONSTRAINT [R_135] FOREIGN KEY([BoardId])
REFERENCES [dbo].[Board] ([BoardId])
GO
ALTER TABLE [dbo].[Thread] CHECK CONSTRAINT [R_135]
GO
/****** Object:  ForeignKey [R_52]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Thread]  WITH CHECK ADD  CONSTRAINT [R_52] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[Thread] CHECK CONSTRAINT [R_52]
GO
/****** Object:  ForeignKey [R_53]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Thread]  WITH CHECK ADD  CONSTRAINT [R_53] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Community] ([CommunityId])
GO
ALTER TABLE [dbo].[Thread] CHECK CONSTRAINT [R_53]
GO
/****** Object:  ForeignKey [R_25]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Topic]  WITH CHECK ADD  CONSTRAINT [R_25] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[Topic] CHECK CONSTRAINT [R_25]
GO
/****** Object:  ForeignKey [R_26]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[Topic]  WITH CHECK ADD  CONSTRAINT [R_26] FOREIGN KEY([PjId])
REFERENCES [dbo].[Project] ([PjId])
GO
ALTER TABLE [dbo].[Topic] CHECK CONSTRAINT [R_26]
GO
/****** Object:  ForeignKey [R_50]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[UploadResource]  WITH CHECK ADD  CONSTRAINT [R_50] FOREIGN KEY([PjId])
REFERENCES [dbo].[Project] ([PjId])
GO
ALTER TABLE [dbo].[UploadResource] CHECK CONSTRAINT [R_50]
GO
/****** Object:  ForeignKey [R_19]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[UserInClient]  WITH CHECK ADD  CONSTRAINT [R_19] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[UserInClient] CHECK CONSTRAINT [R_19]
GO
/****** Object:  ForeignKey [R_20]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[UserInClient]  WITH CHECK ADD  CONSTRAINT [R_20] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Client] ([ClientId])
GO
ALTER TABLE [dbo].[UserInClient] CHECK CONSTRAINT [R_20]
GO
/****** Object:  ForeignKey [R_14]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[UserInCommunityProject]  WITH CHECK ADD  CONSTRAINT [R_14] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[UserInCommunityProject] CHECK CONSTRAINT [R_14]
GO
/****** Object:  ForeignKey [R_15]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[UserInCommunityProject]  WITH CHECK ADD  CONSTRAINT [R_15] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Community] ([CommunityId])
GO
ALTER TABLE [dbo].[UserInCommunityProject] CHECK CONSTRAINT [R_15]
GO
/****** Object:  ForeignKey [R_79]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[UserInKudo]  WITH CHECK ADD  CONSTRAINT [R_79] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[UserInKudo] CHECK CONSTRAINT [R_79]
GO
/****** Object:  ForeignKey [R_80]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[UserInKudo]  WITH CHECK ADD  CONSTRAINT [R_80] FOREIGN KEY([RefId], [RefType])
REFERENCES [dbo].[Kudo] ([RefId], [RefType])
GO
ALTER TABLE [dbo].[UserInKudo] CHECK CONSTRAINT [R_80]
GO
/****** Object:  ForeignKey [R_41]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[UserInProjectDetail]  WITH CHECK ADD  CONSTRAINT [R_41] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Community] ([CommunityId])
GO
ALTER TABLE [dbo].[UserInProjectDetail] CHECK CONSTRAINT [R_41]
GO
/****** Object:  ForeignKey [R_42]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[UserInProjectDetail]  WITH CHECK ADD  CONSTRAINT [R_42] FOREIGN KEY([PjId])
REFERENCES [dbo].[Project] ([PjId])
GO
ALTER TABLE [dbo].[UserInProjectDetail] CHECK CONSTRAINT [R_42]
GO
/****** Object:  ForeignKey [R_44]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[UserInProjectDetail]  WITH CHECK ADD  CONSTRAINT [R_44] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[UserInProjectDetail] CHECK CONSTRAINT [R_44]
GO
/****** Object:  ForeignKey [R_46]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[UserInProjectOrder]  WITH CHECK ADD  CONSTRAINT [R_46] FOREIGN KEY([PjId], [RefId], [RefType])
REFERENCES [dbo].[ProjectOrder] ([PjId], [RefId], [RefType])
GO
ALTER TABLE [dbo].[UserInProjectOrder] CHECK CONSTRAINT [R_46]
GO
/****** Object:  ForeignKey [R_47]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[UserInProjectOrder]  WITH CHECK ADD  CONSTRAINT [R_47] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[UserInProjectOrder] CHECK CONSTRAINT [R_47]
GO
/****** Object:  ForeignKey [R_48]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[UserInProjectOrder]  WITH CHECK ADD  CONSTRAINT [R_48] FOREIGN KEY([PjId])
REFERENCES [dbo].[Project] ([PjId])
GO
ALTER TABLE [dbo].[UserInProjectOrder] CHECK CONSTRAINT [R_48]
GO
/****** Object:  ForeignKey [R_5]    Script Date: 05/29/2012 17:46:04 ******/
ALTER TABLE [dbo].[UserPassport]  WITH CHECK ADD  CONSTRAINT [R_5] FOREIGN KEY([LanguageCode])
REFERENCES [dbo].[LanguageCode] ([LanguageCode])
GO
ALTER TABLE [dbo].[UserPassport] CHECK CONSTRAINT [R_5]
GO


-------------------------------2013-1-30--------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Gift](
	[GiftId] [bigint] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](2048) NULL,
	[GiftPoint] [int] NULL,
	[GiftCash] [decimal](18, 2) NULL,
	[Count] [int] NULL,
	[OrderId] [int] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[Type] [tinyint] NULL,
	[DefaultImage] [varchar](128) NULL,
	[Status] [tinyint] NULL,
	[GiftType] [int] NULL,
	[CreatorUserPassportId] [bigint] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKGift] PRIMARY KEY CLUSTERED 
(
	[GiftId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

---------------------------------------------------------------------

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[GiftExchange](
	[GiftExchangeId] [bigint] NOT NULL,
	[UserPassportId] [bigint] NULL,
	[GiftId] [bigint] NULL,
	[UsedPoint] [int] NULL,
	[UsedCash] [decimal](18, 2) NULL,
	[Status] [int] NULL,
	Remark nvarchar(100) NULL,
	[ReceiverName] [nvarchar](50) NULL,
	[ReceiverAddress] [nvarchar](256) NULL,
	[ReceiverMobile] [nvarchar](20) NULL,
	[ReceiverPostCode] [nvarchar](20) NULL,
	[OperatorUserPassportId] [bigint] NULL,
	bak1 nvarchar(100) NULL,
	bak2 nvarchar(100) NULL,
	bak3 nvarchar(100) NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKGiftExchange] PRIMARY KEY CLUSTERED 
(
	[GiftExchangeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[GiftExchange]  WITH CHECK ADD  CONSTRAINT [R_148] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO

ALTER TABLE [dbo].[GiftExchange] CHECK CONSTRAINT [R_148]
GO

ALTER TABLE [dbo].[GiftExchange]  WITH CHECK ADD  CONSTRAINT [R_149] FOREIGN KEY([GiftId])
REFERENCES [dbo].[Gift] ([GiftId])
GO

ALTER TABLE [dbo].[GiftExchange] CHECK CONSTRAINT [R_149]
GO

---------------------------------------------------------------------

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Profile](
	[ProfileId] [bigint] NOT NULL,
	[Code] [varchar](20) NULL,
	[Name] [nvarchar](256) NULL,
	[Content] [nvarchar](1024) NULL,
	[LanguageCode] [int] NULL,
	[ValueType] [tinyint] NULL,
	[ControlType] [tinyint] NULL,
	[OrderId] [int] NULL,
	[IsViewed] [tinyint] NULL,
	[IsFiltered] [tinyint] NULL,
	[IsRequired] [tinyint] NULL,
	[IsValidated] [tinyint] NULL,
	[IsActivate] [int] NULL,
	[ParentProfileId] [bigint] NULL,
	[PostProfileId] [bigint] NULL,	
	[IsQuota] [int] NULL,
	[IsSystemProfile] [int] NULL,
	[Bak1] [varchar](50) NULL,
	[Bak2] [varchar](50) NULL,
	[Bak3] [varchar](50) NULL,
	[Bak4] [varchar](100) NULL,
	[Bak5] [varchar](200) NULL,	
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKProfile] PRIMARY KEY CLUSTERED 
(
	[ProfileId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [R_144] FOREIGN KEY([LanguageCode])
REFERENCES [dbo].[LanguageCode] ([LanguageCode])
GO

ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [R_144]
GO

---------------------------------------------------------------------

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProfileEnum](
	[ProfileEnumId] [bigint] NOT NULL,
	[ProfileId] [bigint] NOT NULL,
	[Label] [nvarchar](100) NULL,
	[Description] [nvarchar](200) NULL,
	[Value] [int] NULL,
	[ParentProfileEnumId] [bigint] NULL,
	[IsDelete] [int] NULL,
	[Bak1] [nvarchar](20) NULL,
	[Bak2] [nvarchar](50) NULL,
	[Bak3] [nvarchar](50) NULL,
	[Bak4] [nvarchar](100) NULL,
	[Bak5] [nvarchar](200) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_ProfileEnum] PRIMARY KEY CLUSTERED 
(
	[ProfileEnumId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ProfileEnum]  WITH NOCHECK ADD  CONSTRAINT [R_265] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profile] ([ProfileId])
GO

ALTER TABLE [dbo].[ProfileEnum] CHECK CONSTRAINT [R_265]
GO

---------------------------------------------------------------------

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[UserProfile](
	[UserPassportId] [bigint] NOT NULL,
	[ProfileId] [bigint] NOT NULL,
	[Value] [nvarchar](128) NULL,
	[EnumValue] [varchar](20) NULL,
	[TextValue] [nvarchar](1024) NULL,
	[NumericValue] [float] NULL,
	[DateValue] [datetime] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKUserProfile] PRIMARY KEY CLUSTERED 
(
	[UserPassportId] ASC,
	[ProfileId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[UserProfile]  WITH NOCHECK ADD  CONSTRAINT [R_145] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profile] ([ProfileId])
GO

ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [R_145]
GO

ALTER TABLE [dbo].[UserProfile]  WITH NOCHECK ADD  CONSTRAINT [R_146] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO

ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [R_146]
GO

---------------------------------------------------------------------

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserPointLog](
	[UserPointLogId] [bigint] NOT NULL,
	[UserPassportId] [bigint] NULL,
	[OperatorId] [bigint] NULL,
	[PointType] [int] NULL,
	[PointOperateType] [int] NULL,
	[PointIncrease] [int] NULL,
	[PointDecrease] [int] NULL,
	[CashIncrease] [decimal](18, 2) NULL,
	[CashDecrease] [decimal](18, 2) NULL,
	[CreditIncrease] [int] NULL,
	[CreditDecrease] [int] NULL,
	[PointRemain] [int] NULL,
	[CashRemain] [decimal](18, 2) NULL,
	[CreditRemain] [int] NULL,
	[RefProjectId] [bigint] NULL,
	[RefProjectType] [int] NULL,
	[OperateComment] [nvarchar](512) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKUserPointLog] PRIMARY KEY CLUSTERED 
(
	[UserPointLogId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[UserPointLog]  WITH CHECK ADD  CONSTRAINT [R_147] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO

ALTER TABLE [dbo].[UserPointLog] CHECK CONSTRAINT [R_147]


-------------------------2013-1-30 END -----------------------------------
GO

---------------------------2013-4-22------------------------------------------
-----[UserAcitivity]
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserAcitivity](
	[UserAcitivityId] [bigint] NOT NULL,
	[UserPassportId] [bigint] NOT NULL,
	[OptionType] [int] NULL,
	[RefId] [bigint] NULL,
	[RefType] [int] NULL,
	[ReftCount] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKUserAcitivity] PRIMARY KEY CLUSTERED 
(
	[UserAcitivityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[UserAcitivity]  WITH CHECK ADD  CONSTRAINT [R_150] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO

ALTER TABLE [dbo].[UserAcitivity] CHECK CONSTRAINT [R_150]
GO

---------[UserLogin]
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserLogin](
	[LoginId] [bigint] NOT NULL,
	[UserPassportId] [bigint] NULL,
	[Option] [int] NULL,
	[LoginCount] [int] NULL,
	[TotalMinute] [int] NULL,
	[DateCreate] [datetime] NULL,
 CONSTRAINT [XPKUserLogin] PRIMARY KEY CLUSTERED 
(
	[LoginId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[UserLogin]  WITH CHECK ADD  CONSTRAINT [R_152] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO

ALTER TABLE [dbo].[UserLogin] CHECK CONSTRAINT [R_152]
GO




-------------------[UserDeviceInfo]
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[UserDeviceInfo](
	[UserDeviceId] [bigint] NOT NULL,
	[UserPassportId] [bigint] NULL,
	[OS] [int] NULL,
	[OSVersion] [varchar](50) NULL,
	[DeviceName] [nvarchar](50) NULL,
	[MobileModel] [nvarchar](50) NULL,
	[TokenKey] [varchar](100) NULL,
	[MacAddress] [varchar](30) NULL,
	[IpAddress] [varchar](20) NULL,
	[AppKey] [nvarchar](30) NULL,
	[AppName] [nvarchar](30) NULL,
	[AppVersion] [nvarchar](20) NULL,
	[UDID] [varchar](50) NULL,
	[ModelIdentifier] [varchar](30) NULL,
	[SystemVersion] [nvarchar](20) NULL,
	[NetWorkCondition] [varchar](20) NULL,
	[TimeStamp] [varchar](20) NULL,
	[IDFA] [varchar](50) NULL,
	[ODIN] [varchar](50) NULL,
	[IMEI] [varchar](50) NULL,
	[Other1] [nvarchar](100) NULL,
	[Other2] [nvarchar](200) NULL,
	[Other3] [nvarchar](300) NULL,
	[Other4] [nvarchar](100) NULL,
	[Other5] [nvarchar](100) NULL,
	[Other6] [nvarchar](100) NULL,
	[Other7] [nvarchar](200) NULL,
	[Other8] [nvarchar](max) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKUserDe] PRIMARY KEY CLUSTERED 
(
	[UserDeviceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[UserDeviceInfo]  WITH CHECK ADD  CONSTRAINT [R_153] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO

ALTER TABLE [dbo].[UserDeviceInfo] CHECK CONSTRAINT [R_153]
GO




--[ValidateUser]
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ValidateUser](
	[ValidateId] [bigint] NOT NULL,
	[UserPassportId] [bigint] NULL,
	[ValidateType] [int] NULL,
	[ValidateStatus] [int] NULL,
	[ValidateValue] [nvarchar](64) NULL,
	[ValidateCode] [nvarchar](10) NULL,
	[SendTime] [datetime] NULL,
	[ValidateTime] [datetime] NULL,
 CONSTRAINT [XPKValidateTime] PRIMARY KEY CLUSTERED 
(
	[ValidateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ValidateUser]  WITH CHECK ADD  CONSTRAINT [R_154] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO

ALTER TABLE [dbo].[ValidateUser] CHECK CONSTRAINT [R_154]
GO

---------------------------2013-4-22 End------------------------------------------


--------------------------2013-7-18 Begin--------------------------------------

/****** Object:  Table [dbo].[UserCardInfo]    Script Date: 06/19/2013 18:50:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[UserCardInfo](
	[UserCardId] [bigint] NOT NULL,
	[UserPassportId] [bigint] NULL,
	[CardName] [nvarchar](100) NULL,
	[CardType] [int] NULL,
	[CardNum] [varchar](50) NULL,
	[CardIssuer] [nvarchar](100) NULL,
	[Owner] [nvarchar](50) NULL,
	[OwnerMobile] [varchar](20) NULL,
	[Status] [int] NULL,
	[IsDelete] [int] NULL,
	[DefaultCard] [int] NULL,
	[bak1] [nvarchar](100) NULL,
	[bak2] [nvarchar](100) NULL,
	[bak3] [nvarchar](100) NULL,
	[LastUpdated] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKUserCardInof] PRIMARY KEY CLUSTERED 
(
	[UserCardId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[UserCardInfo]  WITH CHECK ADD  CONSTRAINT [R_155] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO

ALTER TABLE [dbo].[UserCardInfo] CHECK CONSTRAINT [R_155]
GO



/****** Object:  Table [dbo].[CashWithDraw]    Script Date: 06/19/2013 18:50:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CashWithDraw](
	[CashWithDrawId] [bigint] NOT NULL,
	[UserPassportId] [bigint] NULL,
	[UserCardId] [bigint] NULL,
	[Cash] [decimal](18, 2) NULL,
	[Status] [int] NULL,
	[OperatorUserPassportId] [bigint] NULL,
	[Remark] [nvarchar](100) NULL,
	[bak1] [nvarchar](100) NULL,
	[bak2] [nvarchar](100) NULL,
	[bak3] [nvarchar](100) NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKCashWithDraw] PRIMARY KEY CLUSTERED 
(
	[CashWithDrawId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[CashWithDraw]  WITH CHECK ADD  CONSTRAINT [R_156] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO

ALTER TABLE [dbo].[CashWithDraw] CHECK CONSTRAINT [R_156]
GO

ALTER TABLE [dbo].[CashWithDraw]  WITH CHECK ADD  CONSTRAINT [R_157] FOREIGN KEY([UserCardId])
REFERENCES [dbo].[UserCardInfo] ([UserCardId])
GO

ALTER TABLE [dbo].[CashWithDraw] CHECK CONSTRAINT [R_157]
GO


---InvitationCode
CREATE TABLE InvitationCode
(
	InvitationCodeId     bigint  NOT NULL ,
	InvitationCode       nvarchar(50)  NULL ,
	OwnerId              bigint  NULL ,
	OwnerType            integer  NULL ,
	InvitationCount      integer  NULL ,
	Bak1                 nvarchar(50)  NULL ,
	Bak2                 nvarchar(50)  NULL ,
	Bak3                 nvarchar(50)  NULL ,
	LastUpdate           datetime  NULL ,
	DateCreated          datetime  NULL 
)
go


ALTER TABLE InvitationCode
	ADD CONSTRAINT XPKInvitationCode PRIMARY KEY  CLUSTERED (InvitationCodeId ASC)
go

-----InvitationInfo
CREATE TABLE InvitationInfo
(
	InvitationInfoId     bigint  NOT NULL ,
	InvitationInfoType   integer  NULL ,
	InvitationCodePlaceHolder nvarchar(30)  NULL ,
	InvitationMessage    nvarchar(4000)  NULL ,
	InvatationIntroduce nvarchar(512) NULL,
	LastUpdate           datetime  NULL ,
	DateCreated          datetime  NULL 
)
go


ALTER TABLE InvitationInfo
	ADD CONSTRAINT XPKInvitationInfo PRIMARY KEY  CLUSTERED (InvitationInfoId ASC)
go

------InvitationUser
CREATE TABLE InvitationUser
(
	InvitationUserId     bigint  NOT NULL ,
	InvitationCodeId     bigint  NULL ,
	UserPassportId       bigint  NULL ,
	OwnerId              bigint  NULL ,
	InvitationCode       nvarchar(50)  NULL ,
	RegisterType         integer  NULL ,
	Bak1                 nvarchar(50)  NULL ,
	Bak2                 nvarchar(50)  NULL ,
	Bak3                 nvarchar(50)  NULL ,
	DateCreated          datetime  NULL 
)
go


ALTER TABLE InvitationUser
	ADD CONSTRAINT XPKInvitationUser PRIMARY KEY  CLUSTERED (InvitationUserId ASC)
go
ALTER TABLE InvitationUser
	ADD CONSTRAINT  R_165 FOREIGN KEY (InvitationCodeId) REFERENCES InvitationCode(InvitationCodeId)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go
ALTER TABLE InvitationUser
	ADD CONSTRAINT  R_166 FOREIGN KEY (UserPassportId) REFERENCES UserPassport(UserPassportId)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

---------------------------2013-7-18 End-------------------------------------



---------------------------2013-10-22 Begin-------------------------------------
/****** Object:  Table [dbo].[Sampling]    Script Date: 10/22/2013 18:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sampling](
	[SamplingId] [bigint] NOT NULL,
	[SurveyId] [bigint] NULL,
	[SamplingType] [int] NULL,
	[IsFilter] [int] NULL,
	[IsSampling] [int] NULL,
	[IsMach] [int] NULL,
	[SampleRangeNum] [int] NULL,
	[SampleCount] [int] NULL,
	[MachCount] [int] NULL,
	[SampleRangeDescription] [nvarchar](4000) NULL,
	[IsDelete] [int] NULL,
	[PushStatus] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKSampling] PRIMARY KEY CLUSTERED 
(
	[SamplingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SamplingAllRespondent]    Script Date: 10/22/2013 18:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SamplingAllRespondent](
	[SamplingAllRespondentId] [bigint] NOT NULL,
	[SamplingId] [bigint] NULL,
	[SurveyId] [bigint] NULL,
	[UserPassportId] [bigint] NULL,
	[SampleRangeNum] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKSampleAllRespondent] PRIMARY KEY CLUSTERED 
(
	[SamplingAllRespondentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quota]    Script Date: 10/22/2013 18:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quota](
	[QuotaId] [bigint] NOT NULL,
	[SamplingId] [bigint] NULL,
	[TargetSampleCount] [int] NULL,
	[SamplingCount] [int] NULL,
	[MachCount] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKQuota] PRIMARY KEY CLUSTERED 
(
	[QuotaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuotaGroup]    Script Date: 10/22/2013 18:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuotaGroup](
	[QuotaGroupId] [bigint] NOT NULL,
	[QuotaId] [bigint] NULL,
	[QuotaGroupTargetSampleCount] [int] NULL,
	[QuotaGroupTargetPercent] [float] NULL,
	[QuotaGroupAllSampleCount] [int] NULL,
	[QuotaGroupDescription] [nvarchar](512) NULL,
	[QuotaGroupSampleCount] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKQuotaGroup] PRIMARY KEY CLUSTERED 
(
	[QuotaGroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuotaDetail]    Script Date: 10/22/2013 18:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuotaDetail](
	[QuotaDetailId] [bigint] NOT NULL,
	[QuotaId] [bigint] NULL,
	[SamplingId] [bigint] NULL,
	[QuotaDetailDescription] [nvarchar](200) NULL,
	[QuotaTargetSampleCount] [int] NULL,
	[QuotaTargetPercent] [float] NULL,
	[QuotaProfileId] [bigint] NULL,
	[QuotaProfileValue] [int] NULL,
	[QuotaProfileEndValue] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKQuotaDetail] PRIMARY KEY CLUSTERED 
(
	[QuotaDetailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SamplingRespondent]    Script Date: 10/22/2013 18:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SamplingRespondent](
	[SamplingResondentId] [bigint] NOT NULL,
	[SamplingId] [bigint] NULL,
	[UserPassportId] [bigint] NULL,
	[SurveyId] [bigint] NULL,
	[QuotaId] [bigint] NULL,
	[QuotaGroupId] [bigint] NULL,
	[IsMach] [int] NULL,
	[SampleRangeNum] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKMachingRespondent] PRIMARY KEY CLUSTERED 
(
	[SamplingResondentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuotaGroupDetail]    Script Date: 10/22/2013 18:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuotaGroupDetail](
	[QuotaGroupDetailId] [bigint] NOT NULL,
	[QuotaId] [bigint] NULL,
	[QuotaGroupId] [bigint] NULL,
	[QuotaDetailId] [bigint] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKQuotaGroupDetail] PRIMARY KEY CLUSTERED 
(
	[QuotaGroupDetailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [R_176]    Script Date: 10/22/2013 18:06:00 ******/
ALTER TABLE [dbo].[Quota]  WITH CHECK ADD  CONSTRAINT [R_176] FOREIGN KEY([SamplingId])
REFERENCES [dbo].[Sampling] ([SamplingId])
GO
ALTER TABLE [dbo].[Quota] CHECK CONSTRAINT [R_176]
GO
/****** Object:  ForeignKey [R_177]    Script Date: 10/22/2013 18:06:00 ******/
ALTER TABLE [dbo].[QuotaDetail]  WITH CHECK ADD  CONSTRAINT [R_177] FOREIGN KEY([QuotaId])
REFERENCES [dbo].[Quota] ([QuotaId])
GO
ALTER TABLE [dbo].[QuotaDetail] CHECK CONSTRAINT [R_177]
GO
/****** Object:  ForeignKey [R_180]    Script Date: 10/22/2013 18:06:00 ******/
ALTER TABLE [dbo].[QuotaDetail]  WITH CHECK ADD  CONSTRAINT [R_180] FOREIGN KEY([SamplingId])
REFERENCES [dbo].[Sampling] ([SamplingId])
GO
ALTER TABLE [dbo].[QuotaDetail] CHECK CONSTRAINT [R_180]
GO
/****** Object:  ForeignKey [R_181]    Script Date: 10/22/2013 18:06:00 ******/
ALTER TABLE [dbo].[QuotaGroup]  WITH CHECK ADD  CONSTRAINT [R_181] FOREIGN KEY([QuotaId])
REFERENCES [dbo].[Quota] ([QuotaId])
GO
ALTER TABLE [dbo].[QuotaGroup] CHECK CONSTRAINT [R_181]
GO
/****** Object:  ForeignKey [R_182]    Script Date: 10/22/2013 18:06:00 ******/
ALTER TABLE [dbo].[QuotaGroupDetail]  WITH CHECK ADD  CONSTRAINT [R_182] FOREIGN KEY([QuotaGroupId])
REFERENCES [dbo].[QuotaGroup] ([QuotaGroupId])
GO
ALTER TABLE [dbo].[QuotaGroupDetail] CHECK CONSTRAINT [R_182]
GO
/****** Object:  ForeignKey [R_183]    Script Date: 10/22/2013 18:06:00 ******/
ALTER TABLE [dbo].[QuotaGroupDetail]  WITH CHECK ADD  CONSTRAINT [R_183] FOREIGN KEY([QuotaDetailId])
REFERENCES [dbo].[QuotaDetail] ([QuotaDetailId])
GO
ALTER TABLE [dbo].[QuotaGroupDetail] CHECK CONSTRAINT [R_183]
GO
/****** Object:  ForeignKey [R_185]    Script Date: 10/22/2013 18:06:00 ******/
ALTER TABLE [dbo].[QuotaGroupDetail]  WITH CHECK ADD  CONSTRAINT [R_185] FOREIGN KEY([QuotaId])
REFERENCES [dbo].[Quota] ([QuotaId])
GO
ALTER TABLE [dbo].[QuotaGroupDetail] CHECK CONSTRAINT [R_185]
GO
/****** Object:  ForeignKey [R_173]    Script Date: 10/22/2013 18:06:00 ******/
ALTER TABLE [dbo].[Sampling]  WITH CHECK ADD  CONSTRAINT [R_173] FOREIGN KEY([SurveyId])
REFERENCES [dbo].[Survey] ([SurveyId])
GO
ALTER TABLE [dbo].[Sampling] CHECK CONSTRAINT [R_173]
GO
/****** Object:  ForeignKey [R_168]    Script Date: 10/22/2013 18:06:00 ******/
ALTER TABLE [dbo].[SamplingAllRespondent]  WITH NOCHECK ADD  CONSTRAINT [R_168] FOREIGN KEY([SurveyId])
REFERENCES [dbo].[Survey] ([SurveyId])
GO
ALTER TABLE [dbo].[SamplingAllRespondent] CHECK CONSTRAINT [R_168]
GO
/****** Object:  ForeignKey [R_169]    Script Date: 10/22/2013 18:06:00 ******/
ALTER TABLE [dbo].[SamplingAllRespondent]  WITH NOCHECK ADD  CONSTRAINT [R_169] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[SamplingAllRespondent] CHECK CONSTRAINT [R_169]
GO
/****** Object:  ForeignKey [R_174]    Script Date: 10/22/2013 18:06:00 ******/
ALTER TABLE [dbo].[SamplingAllRespondent]  WITH NOCHECK ADD  CONSTRAINT [R_174] FOREIGN KEY([SamplingId])
REFERENCES [dbo].[Sampling] ([SamplingId])
GO
ALTER TABLE [dbo].[SamplingAllRespondent] CHECK CONSTRAINT [R_174]
GO
/****** Object:  ForeignKey [R_170]    Script Date: 10/22/2013 18:06:00 ******/
ALTER TABLE [dbo].[SamplingRespondent]  WITH NOCHECK ADD  CONSTRAINT [R_170] FOREIGN KEY([SurveyId])
REFERENCES [dbo].[Survey] ([SurveyId])
GO
ALTER TABLE [dbo].[SamplingRespondent] CHECK CONSTRAINT [R_170]
GO
/****** Object:  ForeignKey [R_172]    Script Date: 10/22/2013 18:06:00 ******/
ALTER TABLE [dbo].[SamplingRespondent]  WITH NOCHECK ADD  CONSTRAINT [R_172] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[SamplingRespondent] CHECK CONSTRAINT [R_172]
GO
/****** Object:  ForeignKey [R_175]    Script Date: 10/22/2013 18:06:00 ******/
ALTER TABLE [dbo].[SamplingRespondent]  WITH NOCHECK ADD  CONSTRAINT [R_175] FOREIGN KEY([SamplingId])
REFERENCES [dbo].[Sampling] ([SamplingId])
GO
ALTER TABLE [dbo].[SamplingRespondent] CHECK CONSTRAINT [R_175]
GO
/****** Object:  ForeignKey [R_178]    Script Date: 10/22/2013 18:06:00 ******/
ALTER TABLE [dbo].[SamplingRespondent]  WITH NOCHECK ADD  CONSTRAINT [R_178] FOREIGN KEY([QuotaId])
REFERENCES [dbo].[Quota] ([QuotaId])
GO
ALTER TABLE [dbo].[SamplingRespondent] CHECK CONSTRAINT [R_178]
GO
/****** Object:  ForeignKey [R_184]    Script Date: 10/22/2013 18:06:00 ******/
ALTER TABLE [dbo].[SamplingRespondent]  WITH NOCHECK ADD  CONSTRAINT [R_184] FOREIGN KEY([QuotaGroupId])
REFERENCES [dbo].[QuotaGroup] ([QuotaGroupId])
GO
ALTER TABLE [dbo].[SamplingRespondent] CHECK CONSTRAINT [R_184]
GO

---------------------------2013-10-22 End-------------------------------------


---------------------------2014-03-27 Begin-------------------------------------
/****** Object:  Table [dbo].[MessageComment]    Script Date: 03/27/2014 10:15:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MessageComment](
	[MessageCommentId] [bigint] NOT NULL,
	[ShortMessageId] [bigint] NULL,
	[FromUserPassportId] [bigint] NULL,
	[ToUserPassportId] [bigint] NULL,
	[Subject] [nvarchar](250) NULL,
	[Body] [nvarchar](4000) NULL,
	[IsRead] [tinyint] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKMessageComment] PRIMARY KEY CLUSTERED 
(
	[MessageCommentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[MessageComment]  WITH CHECK ADD  CONSTRAINT [R_179] FOREIGN KEY([ShortMessageId])
REFERENCES [dbo].[ShortMessage] ([ShortMessageId])
GO

ALTER TABLE [dbo].[MessageComment] CHECK CONSTRAINT [R_179]
GO



/****** Object:  Table [dbo].[IndexConfig]    Script Date: 02/09/2015 14:42:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[IndexConfig](
	[ConfigId] [bigint] NOT NULL,
	[Type] [int] NULL,
	[Abstract] [nvarchar](4000) NULL,
	[Body] [nvarchar](4000) NULL,
	[UserPassportId] [bigint] NULL,
	[UserName] [nvarchar](64) NULL,
	[IsView] [int] NULL,
	[IsJump] [int] NULL,
	[IsPrivate] [int] NULL,
	[IsReplyView] [int] NULL,
	[Bak1] [nvarchar](50) NULL,
	[Bak2] [nvarchar](100) NULL,
	[Bak3] [nvarchar](200) NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
	[PjId] [bigint] NULL,
 CONSTRAINT [XPKIndexConfig] PRIMARY KEY CLUSTERED 
(
	[ConfigId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[IndexConfig]  WITH CHECK ADD  CONSTRAINT [R_189] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO

ALTER TABLE [dbo].[IndexConfig] CHECK CONSTRAINT [R_189]
GO

ALTER TABLE [dbo].[IndexConfig]  WITH CHECK ADD  CONSTRAINT [XFKIndexConfigPjId] FOREIGN KEY([PjId])
REFERENCES [dbo].[Project] ([PjId])
GO

ALTER TABLE [dbo].[IndexConfig] CHECK CONSTRAINT [XFKIndexConfigPjId]
GO


/****** Object:  Table [dbo].[ConfigComment]    Script Date: 03/27/2014 10:16:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ConfigComment](
	[ConfigCommentId] [bigint] NOT NULL,
	[ConfigId] [bigint] NOT NULL,
	[UserPassportId] [bigint] NULL,
	[Body] [nvarchar](4000) NULL,
	[UserName] [nvarchar](64) NULL,
	[ReplyId] [bigint] NULL,
	[ReplyUserPassportId] [bigint] NULL,
	[ReplyUserName] [nvarchar](64) NULL,
	[ReplyRealName] [nvarchar](20) NULL,
	[IsDelete] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKConfigCom] PRIMARY KEY CLUSTERED 
(
	[ConfigCommentId] ASC,
	[ConfigId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ConfigComment]  WITH CHECK ADD  CONSTRAINT [R_187] FOREIGN KEY([ConfigId])
REFERENCES [dbo].[IndexConfig] ([ConfigId])
GO

ALTER TABLE [dbo].[ConfigComment] CHECK CONSTRAINT [R_187]
GO

ALTER TABLE [dbo].[ConfigComment]  WITH CHECK ADD  CONSTRAINT [R_188] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO

ALTER TABLE [dbo].[ConfigComment] CHECK CONSTRAINT [R_188]
GO


/****** Object:  Table [dbo].[UserProfileTimeSpan]    Script Date: 03/27/2014 10:16:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[UserProfileTimeSpan](
	[UserProfileTimeSpanId] [bigint] NOT NULL,
	[ProfileName] [nvarchar](50) NULL,
	[ProfileDescription] [varchar](250) NULL,
	[AllowModifyDays] [int] NULL,
	[AllowModifyTimes] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKUserProfileTimeSpan] PRIMARY KEY CLUSTERED 
(
	[UserProfileTimeSpanId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


/****** Object:  Table [dbo].[UserProfileModifyRecord]    Script Date: 03/27/2014 10:16:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserProfileModifyRecord](
	[RecordId] [bigint] NOT NULL,
	[UserProfileTimeSpanId] [bigint] NULL,
	[UserPassportId] [bigint] NULL,
	[ProfileName] [nvarchar](50) NULL,
	[OldValue] [nvarchar](300) NULL,
	[NewValue] [nvarchar](300) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKUserProfileModifyRecord] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[UserProfileModifyRecord]  WITH NOCHECK ADD  CONSTRAINT [R_167] FOREIGN KEY([UserProfileTimeSpanId])
REFERENCES [dbo].[UserProfileTimeSpan] ([UserProfileTimeSpanId])
GO

ALTER TABLE [dbo].[UserProfileModifyRecord] CHECK CONSTRAINT [R_167]
GO

ALTER TABLE [dbo].[UserProfileModifyRecord]  WITH NOCHECK ADD  CONSTRAINT [R_967] FOREIGN KEY([UserProfileTimeSpanId])
REFERENCES [dbo].[UserProfileTimeSpan] ([UserProfileTimeSpanId])
GO

ALTER TABLE [dbo].[UserProfileModifyRecord] CHECK CONSTRAINT [R_967]
GO

ALTER TABLE [dbo].[UserProfileModifyRecord]  WITH NOCHECK ADD  CONSTRAINT [R_968] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO

ALTER TABLE [dbo].[UserProfileModifyRecord] CHECK CONSTRAINT [R_968]
GO


/****** Object:  Table [dbo].[UserDownLoadTask]    Script Date: 03/27/2014 10:18:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[UserDownLoadTask](
	[TaskId] [bigint] NOT NULL,
	[UserPassportId] [bigint] NULL,
	[TaskType] [int] NULL,
	[TaskSql] [varchar](2048) NULL,
	[Status] [int] NULL,
	[Result] [nvarchar](512) NULL,
	[ErrorMsg] [nvarchar](1024) NULL,
	[ProcessingTime] [datetime] NULL,
	[DownLoadTime] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKUserDownLoadTask] PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[UserDownLoadTask]  WITH CHECK ADD  CONSTRAINT [R_679] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO

ALTER TABLE [dbo].[UserDownLoadTask] CHECK CONSTRAINT [R_679]
GO


---------------------------2014-03-27 End-------------------------------------


---------------------------2014-07-03 Begin-------------------------------------
/****** Object:  Table [dbo].[ProfileLabel]    Script Date: 06/27/2014 17:44:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProfileLabel](
	[ProfileLabelId] [bigint] NOT NULL,
	[ProfileId] [bigint] NULL,
	[ProfileEnumId] [bigint] NULL,
	[LC] [int] NULL,
	[Label] [nvarchar](100) NULL,
	[Description] [nvarchar](100) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_ProfileLabel] PRIMARY KEY CLUSTERED 
(
	[ProfileLabelId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[HeatMap]    Script Date: 07/01/2014 14:26:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HeatMap](
	[HeatMapId] [bigint] NOT NULL,
	[PjId] [bigint] NULL,
	[UserPassportId] [bigint] NULL,
	[Title] [nvarchar](250) NULL,
	[Body] [nvarchar](4000) NULL,
	[ImgSrc] [varchar](50) NULL,
	[TotalReply] [int] NULL,
	[OrderId] [int] NULL,
	[CommentTimes] [int] NULL,
	[IsModify] [int] NULL,
	[IsPrivate] [int] NULL,
	[IsRequire] [int] NULL,
	[IsMustComment] [int] NULL,
	[IsDelete] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKHeatMap] PRIMARY KEY CLUSTERED 
(
	[HeatMapId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HeatMapOption]    Script Date: 07/01/2014 14:26:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HeatMapOption](
	[HeatMapOptionId] [bigint] NOT NULL,
	[HeatMapId] [bigint] NULL,
	[UserPassportId] [bigint] NULL,
	[OptionValue] [int] NULL,
	[OptionName] [nvarchar](100) NULL,
	[OptionImgSrc] [varchar](50) NULL,
	[GradientImgSrc] [varchar](50) NULL,
	[IsDelete] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKHeatMapOption] PRIMARY KEY CLUSTERED 
(
	[HeatMapOptionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HeatMapComment]    Script Date: 07/01/2014 14:26:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeatMapComment](
	[HeatMapCommentId] [bigint] NOT NULL,
	[HeatMapId] [bigint] NULL,
	[HeatMapOptionId] [bigint] NULL,
	[UserPassportId] [bigint] NULL,
	[CoordinateX] [decimal](6, 2) NULL,
	[CoordinateY] [decimal](6, 2) NULL,
	[Body] [nvarchar](4000) NULL,
	[IsDelete] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKHeatMapComment] PRIMARY KEY CLUSTERED 
(
	[HeatMapCommentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [R_158]    Script Date: 07/01/2014 14:26:34 ******/
ALTER TABLE [dbo].[HeatMap]  WITH CHECK ADD  CONSTRAINT [R_158] FOREIGN KEY([PjId])
REFERENCES [dbo].[Project] ([PjId])
GO
ALTER TABLE [dbo].[HeatMap] CHECK CONSTRAINT [R_158]
GO
/****** Object:  ForeignKey [R_159]    Script Date: 07/01/2014 14:26:34 ******/
ALTER TABLE [dbo].[HeatMap]  WITH CHECK ADD  CONSTRAINT [R_159] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[HeatMap] CHECK CONSTRAINT [R_159]
GO
/****** Object:  ForeignKey [R_162]    Script Date: 07/01/2014 14:26:34 ******/
ALTER TABLE [dbo].[HeatMapComment]  WITH CHECK ADD  CONSTRAINT [R_162] FOREIGN KEY([HeatMapId])
REFERENCES [dbo].[HeatMap] ([HeatMapId])
GO
ALTER TABLE [dbo].[HeatMapComment] CHECK CONSTRAINT [R_162]
GO
/****** Object:  ForeignKey [R_163]    Script Date: 07/01/2014 14:26:34 ******/
ALTER TABLE [dbo].[HeatMapComment]  WITH CHECK ADD  CONSTRAINT [R_163] FOREIGN KEY([HeatMapOptionId])
REFERENCES [dbo].[HeatMapOption] ([HeatMapOptionId])
GO
ALTER TABLE [dbo].[HeatMapComment] CHECK CONSTRAINT [R_163]
GO
/****** Object:  ForeignKey [R_164]    Script Date: 07/01/2014 14:26:34 ******/
ALTER TABLE [dbo].[HeatMapComment]  WITH CHECK ADD  CONSTRAINT [R_164] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[HeatMapComment] CHECK CONSTRAINT [R_164]
GO
/****** Object:  ForeignKey [R_160]    Script Date: 07/01/2014 14:26:34 ******/
ALTER TABLE [dbo].[HeatMapOption]  WITH CHECK ADD  CONSTRAINT [R_160] FOREIGN KEY([HeatMapId])
REFERENCES [dbo].[HeatMap] ([HeatMapId])
GO
ALTER TABLE [dbo].[HeatMapOption] CHECK CONSTRAINT [R_160]
GO
/****** Object:  ForeignKey [R_161]    Script Date: 07/01/2014 14:26:34 ******/
ALTER TABLE [dbo].[HeatMapOption]  WITH CHECK ADD  CONSTRAINT [R_161] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[HeatMapOption] CHECK CONSTRAINT [R_161]
GO
/****** Object:  ForeignKey [R_171]    Script Date: 07/01/2014 14:26:34 ******/
ALTER TABLE [dbo].[HeatMapOption]  WITH CHECK ADD  CONSTRAINT [R_171] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO
ALTER TABLE [dbo].[HeatMapOption] CHECK CONSTRAINT [R_171]
GO


---------------------------2014-07-03 End-------------------------------------


---------------------------2014-08-21 Begin-------------------------------------
/****** Object:  Table [dbo].[Message]    Script Date: 07/17/2014 15:33:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Message](
	[MessageId] [bigint] NOT NULL,
	[UserPassportId] [bigint] NOT NULL,
	[BatchId] [bigint] NULL,
	[Type] [int] NULL,
	[Subject] [nvarchar](200) NULL,
	[Body] [nvarchar](1000) NULL,
	[IsSend] [int] NULL,
	[IsRead] [int] NULL,
	[IsDelete] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [XPKPUSHMessage] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Message]  WITH NOCHECK ADD  CONSTRAINT [R_193] FOREIGN KEY([UserPassportId])
REFERENCES [dbo].[UserPassport] ([UserPassportId])
GO

ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [R_193]
GO

---------------------------2014-08-2 End-------------------------------------

/*存储过程 */

GO


/****** Object:  StoredProcedure [dbo].[selectUserOwnUserSp]    Script Date: 05/13/2013 18:03:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[selectUserOwnUserSp]
(
	@UserPassportId bigint,
	@CommunityId int,
	@Status int
)
as 
	declare @uid bigint,@utype int,@uincpType int,@ustatus int
begin
    -- 验证部分
	if(@UserPassportId < 0 or @UserPassportId is null)
		return;
	if(@CommunityId < 0 or @CommunityId is null)
		return;
	if(@Status is null)
		return;
	set @uid = (select UserPassportId from UserPassport where UserPassportId = @UserPassportId)			
	if(@uid is null)
		return;
	set @ustatus = (select [Status] from UserPassport where UserPassportId = @UserPassportId)	
	if(@ustatus = -2)
		return;	
	
	-- 正式执行部分
	set @utype = (select UserType from UserPassport where UserPassportId = @UserPassportId)	
	if(@utype >= 4)--系统和社区管理员
		begin
		if(@Status <> -2)
			begin
				SELECT UserPassportId,PersonalId,UserName,RealName,[Password],PasswordFormat,PasswordQuestion,PasswordAnswer,Email,Mobile,Tel,Gender,Birthday,Age,OccupationId,PersonalIncome,FamilyIncome,NationalityId,ProvinceId,CityId,[Address],PostCode,OtherSpecify1,OtherSpecify2,OtherSpecify3,OtherSpecify4,ImageIconId,ImageSrc,FromPlace,Kudos,KudosWeight,UserType,LanguageCode,DefaultTheme,CommunityId,IsProjectUser,Flag,[Status],LoginCount,LastLogin,LastUpdate,LastIp,LastHostName,LastUserAgent,DateCreated,TimeZone,Point,Education,MailValidated,MobileValidated,Cash,Credit 
				FROM dbo.UserPassport 
				where CommunityId = @CommunityId and UserType <= @utype and [status] <> -2
			end	
		else
			begin	
				SELECT UserPassportId,PersonalId,UserName,RealName,[Password],PasswordFormat,PasswordQuestion,PasswordAnswer,Email,Mobile,Tel,Gender,Birthday,Age,OccupationId,PersonalIncome,FamilyIncome,NationalityId,ProvinceId,CityId,[Address],PostCode,OtherSpecify1,OtherSpecify2,OtherSpecify3,OtherSpecify4,ImageIconId,ImageSrc,FromPlace,Kudos,KudosWeight,UserType,LanguageCode,DefaultTheme,CommunityId,IsProjectUser,Flag,[Status],LoginCount,LastLogin,LastUpdate,LastIp,LastHostName,LastUserAgent,DateCreated,TimeZone,Point,Education,MailValidated,MobileValidated,Cash,Credit 
				FROM dbo.UserPassport
				where CommunityId = @CommunityId and UserType <= @utype and [status] = @Status		
			end
		end
	else -- 项目管理员
		begin
			if(@Status <> -2)
			begin
				SELECT distinct u.UserPassportId,u.PersonalId,u.UserName,u.RealName,u.[Password],u.PasswordFormat,u.PasswordQuestion,u.PasswordAnswer,u.Email,u.Mobile,u.Tel,u.Gender,u.Birthday,u.Age,u.OccupationId,u.PersonalIncome,u.FamilyIncome,u.NationalityId,u.ProvinceId,u.CityId,u.[Address],u.PostCode,u.OtherSpecify1,u.OtherSpecify2,u.OtherSpecify3,u.OtherSpecify4,u.ImageIconId,u.ImageSrc,u.FromPlace,u.Kudos,u.KudosWeight,u.UserType,u.LanguageCode,u.DefaultTheme,u.CommunityId,u.IsProjectUser,u.Flag,u.[Status],u.LoginCount,u.LastLogin,u.LastUpdate,u.LastIp,u.LastHostName,u.LastUserAgent,u.DateCreated,u.TimeZone,u.Point,u.Education,u.MailValidated,u.MobileValidated,u.Cash,u.Credit 
				FROM dbo.UserPassport u inner join UserInCommunityProject uincp on u.UserPassportId = uincp.UserPassportId
				where u.CommunityId = @CommunityId and u.UserType <= @utype and [status] <> -2
				and PjId in (select distinct PjId from UserInCommunityProject where CommunityId = @CommunityId and UserPassportId = @UserPassportId)
			end
		else
			begin
				SELECT distinct u.UserPassportId,u.PersonalId,u.UserName,u.RealName,u.[Password],u.PasswordFormat,u.PasswordQuestion,u.PasswordAnswer,u.Email,u.Mobile,u.Tel,u.Gender,u.Birthday,u.Age,u.OccupationId,u.PersonalIncome,u.FamilyIncome,u.NationalityId,u.ProvinceId,u.CityId,u.[Address],u.PostCode,u.OtherSpecify1,u.OtherSpecify2,u.OtherSpecify3,u.OtherSpecify4,u.ImageIconId,u.ImageSrc,u.FromPlace,u.Kudos,u.KudosWeight,u.UserType,u.LanguageCode,u.DefaultTheme,u.CommunityId,u.IsProjectUser,u.Flag,u.[Status],u.LoginCount,u.LastLogin,u.LastUpdate,u.LastIp,u.LastHostName,u.LastUserAgent,u.DateCreated,u.TimeZone,u.Point,u.Education,u.MailValidated,u.MobileValidated,u.Cash,u.Credit 
				FROM dbo.UserPassport u inner join UserInCommunityProject uincp on u.UserPassportId = uincp.UserPassportId
				where u.CommunityId = @CommunityId and u.UserType <= @utype and [status] = @Status
				and PjId in (select distinct PjId from UserInCommunityProject where CommunityId = @CommunityId and UserPassportId = @UserPassportId)
			end
		end
end


GO



/****** Object:  StoredProcedure [dbo].[Stat_Chat_Logic]    Script Date: 06/11/2012 13:34:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Stat_Chat_Logic]
as
begin
	-- status 1正常 ，-1已删除
	-- flag 1 插入基本数据 2 插入了计算数据 3 数据插入已完成
	-- 13 开头是聊天室
	-- 1301 向聊天室统计表中插入基本数据完成
	-- 1302 向聊天室统计表中插入每个聊天室的总用户数
	-- 1303 向聊天室统计表中插入每个聊天室的总发言人数
	-- 1304 向聊天室统计表中插入每个聊天室的总的聊天记录数
	-- 1305 向聊天室统计表中插入每个聊天室的总私聊记录数
	-- 1306 向聊天室统计表中插入计算数据完成
	-- 1307 向聊天室统计表中插入全部数据已完成
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
	-- #1 插入基本数据
	insert dbo.Stat_Chat
	(
		StatId,
		CommunityId,
		ChatRoomId,
		RoomName,
		[Status],
		Flag,
		LastUpdate,
		DateCreated
	)
	select 
		NEWID(),
		cr.CommunityId,
		cr.ChatRoomId,
		cr.RoomName,
		1,
		1,
		GETDATE(),
		GETDATE()
	from dbo.ChatRoom cr
	where cr.ChatRoomId not in(select ChatRoomId from Stat_Chat)
	
	-- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1301--向聊天室统计表中插入基本数据完成',
		GETDATE()
	)
	
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
	-- #2 插入计算数据
	
	-- 2.2.1 插入聊天室的总用户数
	update dbo.Stat_Chat
	set LastUpdate = GETDATE(),
	TotalUserCount = 
	case (select IsPrivate from dbo.ChatRoom where ChatRoomId = Stat_Chat.ChatRoomId)
	when 0 -- 不是私有聊天室，那么取项目中所有的用户
		then(select count(distinct UserPassportId) from UserInCommunityProject where CommunityId = Stat_Chat.CommunityId)		
	when 1 -- 是私有聊天室，那么去聊天室的用户表中取得用户
		then (select COUNT(*) from dbo.ChatUser where ChatRoomId = Stat_Chat.ChatRoomId)
	end

	-- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1302--向聊天室统计表中插入每个聊天室的总用户数',
		GETDATE()
	)
-------------------------------------------------------------------------------------------------------	
	-- 2.2.2 插入聊天室内的总发言人数
	update dbo.Stat_Chat
	set LastUpdate = GETDATE(),
	TotalSpeakUserCount = 
	(
		select count(distinct FromUserPassportId)
		from dbo.ChatLog
		where ChatRoomId = Stat_Chat.ChatRoomId	
	)
	-- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1303--向聊天室统计表中插入每个聊天室的总发言人数',
		GETDATE()
	)
-------------------------------------------------------------------------------------------------------	
	-- 2.2.3 插入每个聊天室总的聊天记录数
	update dbo.Stat_Chat
	set LastUpdate = GETDATE(),
	TotalRecCount = 
	(
		select count(*)
		from dbo.ChatLog
		where ChatRoomId = Stat_Chat.ChatRoomId	
	)
	-- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1304--向聊天室统计表中插入每个聊天室的总的聊天记录数',
		GETDATE()
	)
-------------------------------------------------------------------------------------------------------	
	-- 2.2.4 插入每个聊天室总私聊记录数
	update dbo.Stat_Chat
	set LastUpdate = GETDATE(),
	Flag = 2,
	TotalPrivateRecCount = 
	(
		select count(*)
		from dbo.ChatLog
		where ChatRoomId = Stat_Chat.ChatRoomId
		and MessageType = 2 -- 2 为私聊	
	)
	-- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1305--向聊天室统计表中插入每个聊天室的总私聊记录数',
		GETDATE()
	)
-------------------------------------------------------------------------------------------------------
	-- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1306--向聊天室统计表中插入计算数据完成',
		GETDATE()
	)	
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
	-- #3 数据插入已完成
	update Stat_Chat
	set Flag = 3,
	LastUpdate = GETDATE()
	
	-- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1307--向聊天室统计表中插入全部数据已完成',
		GETDATE()
	)		
end
GO
/****** Object:  StoredProcedure [dbo].[stat_User_Logic]    Script Date: 06/11/2012 13:34:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[stat_User_Logic]
as 
begin
	-- status 1 正常 -1 已删除
	-- flag 1 插入基本数据 2 插入计算数据 3 全部插入已完成
	
	--11 开头是用户
	--1101 在用户统计表里插入了基本数据
	--1102 在用户统计表里修改了最后回复时间
	--1103 在用户统计表里修改了总共回复次数
	--1104 在用户统计表里修改了没有参与话题的个数
	--1105 在用户统计表里修改了用户话题的总个数
	--1106 在用户统计表里全部数据插入完成

------------------------------------------------------------------------------------
------------------------------------------------------------------------------------	
	--#1 取得基本数据插入到stat_user表中
insert dbo.Stat_User
(
	StatId,
	CommunityId,
	PjId,
	UserPassportId,
	UserName,
	RealName,
	Email,
	LoginCount,
	LastLogin,
	[Status],
	Flag,
	LastUpdate,
	DateCreated
)
select
	statid =  NEWID(),	
	ssuser_in_cp.CommunityId,
	ssuser_in_cp.PjId,
	ssuser.UserPassportId,
	ssuser.UserName,
	ssuser.RealName,
	ssuser.Email,
	ssuser.LoginCount,
	ssuser.LastLogin,
	[Status] = 1,
	Flag = 1,
	lastUpdate = GETDATE(),
	datacreated = GETDATE()  
from UserPassport as ssuser left join UserInCommunityProject as ssuser_in_cp 
on ssuser.UserPassportId = ssuser_in_cp.UserPassportId 
where ssuser_in_cp.PjId is not null -- 该用户项目号必须不为null(因为即使是社区用户项目号也是0，不是null)
and ssuser_in_cp.PjId > 0 -- 现在只统计项目的用户信息，所以项目号必须大于0
and ssuser.Flag <> -2 -- 用户的状态不是删除的
and ssuser.UserPassportId not in (-- 如果该用户已做过了数据的统计，那么就是修改一些计算字段就可以了，就不做插入操作了
select UserPassportId from  dbo.Stat_User 
where CommunityId = ssuser_in_cp.CommunityId 
and PjId = ssuser_in_cp.PjId
and UserPassportId = ssuser.UserPassportId) -- 如果stat_user表中已有数据那么就不插入了


-- 同步某些用户参数（登录次数,最后登录时间）
update dbo.Stat_User
set LoginCount = 
(select u.LoginCount from UserPassport as u left join UserInCommunityProject as u_in_cp 
on u.UserPassportId = u_in_cp.UserPassportId
where u_in_cp.PjId is not null 
and u.Flag <> -2 
and u.UserPassportId = Stat_User.UserPassportId
and u_in_cp.PjId = Stat_User.PjId
),
LastLogin = 
(select u.LastLogin from UserPassport as u left join UserInCommunityProject as u_in_cp 
on u.UserPassportId = u_in_cp.UserPassportId
where u_in_cp.PjId is not null and u.Flag <> -2 
and u.UserPassportId = Stat_User.UserPassportId 
and u_in_cp.PjId = Stat_User.PjId
),
LastUpdate = GETDATE()

  -- 记录日志
  insert into dbo.Stat_Log (LogId,Content,DateCreated)
  values (NEWID(),'1101--在用户统计表里插入了基本数据',GETDATE())
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
-- #2 根据已插入的基本数据在计算出stat_user表中的其他字段的值
	-- #2.1 计算最后回复时间		
	   update stat_user set LastComment = 
	   (
		   select top(1) DateCreated from dbo.Comment 
		   where PjId =stat_user.PjId and UserPassportId = stat_user.UserPassportId
		   order by DateCreated desc
	   ),
	   LastUpdate = GETDATE()-- 修改更新时间
	     -- 记录日志
		  insert into dbo.Stat_Log (LogId,Content,DateCreated)
		  values (NEWID(),'1102--在用户统计表里修改了最后回复时间',GETDATE())
------------------------------------------------------------------------------------		  	   
	-- #2.2 计算总共回复次数
	   update Stat_User set TotalComment = 
	   (
			select COUNT(CommentId) from dbo.Comment
			where PjId = stat_user.PjId and UserPassportId = stat_user.UserPassportId
	   ),
	   LastUpdate = GETDATE()-- 修改更新时间
	   -- 记录日志
		  insert into dbo.Stat_Log (LogId,Content,DateCreated)
		  values (NEWID(),'1103--在用户统计表里修改了总共回复次数',GETDATE())
-------------------------------------------------------------------------------------		  
	-- #2.3 计算没有参与的话题数
	-- 分为 2 种情况：
	-- 1，用户所在的项目没有划分了用户权限（要去大排序表里找内容）
	-- 2，用户所在的项目划分了用户权限（要去用户详情表里找内容）
	update dbo.Stat_User
	set LastUpdate = GETDATE(),-- 修改更新时间
	NullParticipateCount = 
	(case when  p.IsUserInProjectDetail = 1 then -- 2，如果项目划分了权限就去详情表里查看数据
	(select count(u_in_pd.RefId) from UserInProjectDetail u_in_pd 
	 where u_in_pd.PjId = p.PjId 
	 and u_in_pd.UserPassportId = u.UserPassportId
	 and u_in_pd.RefType = 1
	 and (select count(CommentId) from dbo.Comment comm where
			comm.PjId = p.PjId
			and comm.UserPassportId = u.UserPassportId
			and comm.TopicId = u_in_pd.RefId
		 ) = 0-- 在回复表为0
	)
	else -- 1，没有划分权限就去大排序表里取数据
	(select count(p_o.RefId) from ProjectOrder p_o 
	 where p_o.PjId = p.PjId 	
	 and p_o.RefType = 1
	 and (select count(CommentId) from dbo.Comment comm where 
		  comm.PjId = p.PjId 
		  and comm.UserPassportId = u.UserPassportId		  
		  and comm.TopicId = p_o.RefId
		  ) = 0-- 在回复表为0
	 ) end)
	 from dbo.Project p ,dbo.Stat_User u
	 where p.PjId = u.PjId 
		-- 记录日志
		  insert into dbo.Stat_Log (LogId,Content,DateCreated)
		  values (NEWID(),'1104--在用户统计表里修改了没有参与话题的个数',GETDATE())
------------------------------------------------------------------------------------		  		
	-- #2.4 计算用户在项目中的全部话题数
	-- 同上也分为两种情况
	update dbo.Stat_User
	set LastUpdate = GETDATE(),-- 修改更新时间
	TotalTopic = 
	(case when  p.IsUserInProjectDetail = 1 then -- 1，如果项目划分了权限就去详情表里查看数据
	(select count(u_in_pd.RefId) from UserInProjectDetail u_in_pd 
	 where u_in_pd.PjId = p.PjId 
	 and u_in_pd.UserPassportId = u.UserPassportId
	 and u_in_pd.RefType = 1	
	)
	else -- 2，没有划分权限就去大排序表里取数据
	(select count(p_o.RefId) from ProjectOrder p_o 
	 where p_o.PjId = p.PjId 	
	 and p_o.RefType = 1	 
	 ) end)
	 from dbo.Project p ,dbo.Stat_User u
	 where p.PjId = u.PjId
	 -- 更新操作标志位为2
	 update dbo.Stat_User
	 set Flag = 2
	 -- 记录日志
		  insert into dbo.Stat_Log (LogId,Content,DateCreated)
		  values (NEWID(),'1105--在用户统计表里修改了用户话题的总个数',GETDATE())
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
	-- #3 修改操作标志位为3，全部插入已完成
	 update dbo.Stat_User
	 set Flag = 3,
	 LastUpdate = GETDATE()
	 -- 记录日志
		  insert into dbo.Stat_Log (LogId,Content,DateCreated)
		  values (NEWID(),'1106--在用户统计表里全部数据插入完成',GETDATE())		  	       
end
GO
/****** Object:  StoredProcedure [dbo].[Stat_Chat_Detail_User_Logic]    Script Date: 06/11/2012 13:34:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Stat_Chat_Detail_User_Logic]
as 
begin
	-- status 1正常 ，-1已删除
	-- flag 1 插入基本数据 2 插入了计算数据 3 数据插入已完成
	-- 15 开头是用户参与聊天
	-- 1501 向用户参与聊天室情况统计表中插入基本数据完成
	-- 1502 向用户参与聊天室情况统计表中插入该用户在该聊天室内总计发言数完成
	-- 1503 向用户参与聊天室情况统计表中插入用户在该聊天室内总计私聊数完成
	-- 1504 向用户参与聊天室情况统计表中插入插入了计算数据完成
	-- 1505 向用户参与聊天室情况统计表中插入全部数据已完成 
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------	
	
	-- #1 插入基本数据
	-- #1.1 前插入房间私有时的数据
	insert dbo.Stat_Chat_Detail_User
	(
		StatId,
		UserPassportId,
		ChatRoomId,
		UserName,
		RealName,
		[Status],
		Flag,
		LastUpdate,
		DateCreated
	)
	select 
		 sc.StatId,
		 cu.UserPassportId,
		 cr.ChatRoomId,
		 u.UserName,
		 u.RealName,
		 1,
		 1,
		 GETDATE(),
		 GETDATE()
	from dbo.ChatUser cu 
	left join dbo.Stat_Chat sc on cu.ChatRoomId = sc.ChatRoomId 
	left join dbo.ChatRoom cr on cu.ChatRoomId = cr.ChatRoomId
	inner join dbo.UserPassport u on cu.UserPassportId = u.UserPassportId		
	where cr.IsPrivate = 1
	and cu.UserPassportId not in (select UserPassportId from Stat_Chat_Detail_User where ChatRoomId = cr.ChatRoomId)
	
	-- 再插入房间公开时的数据(用户数据去聊天记录里取)
	insert dbo.Stat_Chat_Detail_User
	(
		StatId,
		UserPassportId,
		ChatRoomId,
		UserName,
		RealName,
		[Status],
		Flag,
		LastUpdate,
		DateCreated
	)
	select 
		 sc.StatId,
		 cl.FromUserPassportId,
		 cr.ChatRoomId,
		 u.UserName,
		 u.RealName,
		 1,
		 1,
		 GETDATE(),
		 GETDATE()
	from (select distinct FromUserPassportId,ChatRoomId from dbo.ChatLog) cl 
	left join dbo.Stat_Chat sc on cl.ChatRoomId = sc.ChatRoomId 
	left join dbo.ChatRoom cr on cl.ChatRoomId = cr.ChatRoomId
	inner join dbo.UserPassport u on cl.FromUserPassportId = u.UserPassportId		
	where cr.IsPrivate = 0
	and cl.FromUserPassportId not in (select UserPassportId from Stat_Chat_Detail_User where ChatRoomId = cr.ChatRoomId)
	-- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1501--向用户参与聊天室情况统计表中插入基本数据完成',
		GETDATE()
	)
		
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
	-- #2 插入了计算数据
	-- 2.2.1 插入该用户在该聊天室内总计发言数
	update dbo.Stat_Chat_Detail_User
	set LastUpdate = GETDATE(),
	ChatCount = 	
	(
		select COUNT(*) 
		from  dbo.ChatLog
		where ChatRoomId = Stat_Chat_Detail_User.ChatRoomId
		and FromUserPassportId = Stat_Chat_Detail_User.UserPassportId
	)
	-- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1502--向用户参与聊天室情况统计表中插入该用户在该聊天室内总计发言数完成',
		GETDATE()
	)
-------------------------------------------------------------------------------------------------------
	-- 2.2.2 插入该用户在该聊天室内总计私聊数
		update dbo.Stat_Chat_Detail_User
	set LastUpdate = GETDATE(),
	Flag = 2,
	PrivateCount = 	
	(
		select COUNT(*) 
		from  dbo.ChatLog
		where ChatRoomId = Stat_Chat_Detail_User.ChatRoomId
		and FromUserPassportId = Stat_Chat_Detail_User.UserPassportId
		and MessageType = 2 -- 私聊
	)
	-- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1503--向用户参与聊天室情况统计表中插入用户在该聊天室内总计私聊数完成',
		GETDATE()
	)
-------------------------------------------------------------------------------------------------------
	-- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1504--向用户参与聊天室情况统计表中插入插入了计算数据完成',
		GETDATE()
	)	
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------	
	-- #3 数据插入已完成
	update dbo.Stat_Chat_Detail_User
	set LastUpdate = GETDATE(),
	Flag = 3
	
	-- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1505--向用户参与聊天室情况统计表中插入全部数据已完成',
		GETDATE()
	)	
end
GO
/****** Object:  StoredProcedure [dbo].[deleteHomeworkSp]    Script Date: 06/11/2012 13:34:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deleteHomeworkSp]
(
	@hwid bigint
)
as
begin

	-- 图片库
	delete from ImageLibrary where RefId in (select BlogId from Blog where HwId = @hwid)
	delete from ImageLibrary where RefId in (select BlogCommentId from BlogComment where BlogId in (select BlogId from Blog where HwId = @hwid))
	-- 用户加分
	delete from UserInKudo where RefId in (select BlogCommentId from BlogComment where BlogId in (select BlogId from Blog where HwId = @hwid)) and RefType = 51
	delete from UserInKudo where RefId in (select BlogId from Blog where HwId = @hwid) and RefType = 5
	-- 加分
	delete from Kudo where RefId in (select BlogCommentId from BlogComment where BlogId in (select BlogId from Blog where HwId = @hwid)) and RefType = 51
	delete from Kudo where RefId in (select BlogId from Blog where HwId = @hwid) and RefType = 5
	-- 资源
	delete from UploadResource where RefId = @hwid and RefType = 7
	-- 博客回复
	delete from BlogComment where BlogId in (select BlogId from Blog where HwId = @hwid)
	-- 博客
	delete from Blog where HwId = @hwid
	-- 话题组关系
	delete from SectionRelated where ChildId = @hwid and ChildType = 3	
	-- 划分权限关系
	delete from UserInProjectDetail where RefId = @hwid and RefType = 4
	-- 大排序用户参与记录
	delete from UserInProjectOrder where RefId = @hwid and RefType = 4
	-- 项目内容
	delete from ProjectOrder where RefId = @hwid and RefType = 4	
	--CategoryRelated
	delete from CategoryRelated where ChildId=@hwid and ChildType=2
	-- HomeWork
	delete from HomeWork where HwId = @hwid
end
GO
/****** Object:  StoredProcedure [dbo].[deleteCoCreationSp]    Script Date: 06/11/2012 13:34:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deleteCoCreationSp]
(
	@CoCreationId bigint
)
as 	
begin    
		-- 图片库
		delete from ImageLibrary where RefId = @CoCreationId
		delete from ImageLibrary where RefId in (select CoCreationDataId from CoCreationData where CoCreationId = @CoCreationId)
		delete from ImageLibrary where RefId in (select CoCommentId from CoComment where CoCreationDataId in (select CoCreationDataId from CoCreationData where CoCreationId = @CoCreationId))

		--自己设计创意的创意内容的评论的加分
		delete from UserInKudo where RefId in (select CoCommentId from CoComment where CoCreationDataId in (select CoCreationDataId from CoCreationData where CoCreationId = @CoCreationId)) and RefType = 22
		
		delete from Kudo where RefId in (select CoCommentId from CoComment where CoCreationDataId in (select CoCreationDataId from CoCreationData where CoCreationId = @CoCreationId)) and RefType = 22		
		
		--创意的创意内容的评分
		delete from UserInKudo where RefId in (select CoCreationDataId from CoCreationData where CoCreationId = @CoCreationId) and RefType = 21							 
		
		delete from Kudo where RefId in (select CoCreationDataId from CoCreationData where CoCreationId = @CoCreationId) and RefType = 21
	
		--自己设计创意的评分
		delete from UserInKudo where RefId = @CoCreationId and RefType = 2
	
		delete from Kudo where RefId = @CoCreationId and RefType = 2
								
		-- 创意内容评论		
		delete from CoComment where CoCreationDataId in (select CoCreationDataId from CoCreationData where CoCreationId = @CoCreationId)
															
		-- 创意内容		
		delete from CoCreationData where CoCreationId = @CoCreationId
		
		-- 创意层级元素	
		delete from CoCreationElement where CoCreationId = @CoCreationId
								
		-- 创意的层级
		delete from CoCreationLayer where CoCreationId = @CoCreationId
		
		-- 参与项目内容记录
		delete from UserInProjectOrder where RefId =@CoCreationId and RefType = 2
	
		-- 分配项目内容记录
		delete from UserInProjectDetail where RefId = @CoCreationId and RefType = 2
		
		-- 项目内容（大排序表）
		delete from ProjectOrder where RefId = @CoCreationId and RefType = 2
		--CategoryRelated
		delete from CategoryRelated where ChildId=@CoCreationId and ChildType=4
	-- 创意本身
		-- 自己设计的创意
		delete from CoCreation where CoCreationId = @CoCreationId		
	end	
GO
/****** Object:  StoredProcedure [dbo].[deleteSurveyQuestionSp]    Script Date: 06/11/2012 13:34:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deleteSurveyQuestionSp]
(
	@SurveyQuestionId bigint
)
as 
	declare @maxOrderid int,@minOrderid int,@currentOrderid int
begin  
-- 当前问题的答案
delete from SurveyData where SurveyQuestionId = @SurveyQuestionId

-- 选贤资源
delete from SurveyResource where RefId in (select SurveyOptionId from SurveyOption where SurveyQuestionId = @SurveyQuestionId) and RefType = 3

-- 子题的资源
delete from SurveyResource where RefId in (select SurveySubId from SurveySub where SurveyQuestionId = @SurveyQuestionId) and RefType = 2

-- 问题的资源
delete from SurveyResource where RefId = @SurveyQuestionId and RefType = 1

--SurveyOutQuestionProperty
delete from SurveyOutQuestionProperty where SurveyQuestionId = @SurveyQuestionId

-- 问题子题
delete from SurveySub where SurveyQuestionId = @SurveyQuestionId			

-- 问题选项
delete from SurveyOption where SurveyQuestionId = @SurveyQuestionId						

set @maxOrderid = (select max(orderId)from SurveyQuestion where PjId = (select PjId from SurveyQuestion where SurveyQuestionId = @SurveyQuestionId))
set @minOrderid = (select min(orderId)from SurveyQuestion where PjId = (select PjId from SurveyQuestion where SurveyQuestionId = @SurveyQuestionId))
set @currentOrderid = (select orderId from SurveyQuestion where SurveyQuestionId = @SurveyQuestionId)
if(@currentOrderid >= @minOrderid and @currentOrderid <= @maxOrderid)
begin
	if(@currentOrderid < @maxOrderid)
	begin
		update SurveyQuestion set OrderId = (OrderId-1) where OrderId > @currentOrderid and PjId = (select PjId from SurveyQuestion where SurveyQuestionId = @SurveyQuestionId)
	end
end
-- 问题本身
delete from SurveyQuestion where SurveyQuestionId = @SurveyQuestionId

end
GO
/****** Object:  StoredProcedure [dbo].[stat_Topic_Logic]    Script Date: 06/11/2012 13:34:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[stat_Topic_Logic]
as
begin
	-- status 1正常 ，-1已删除
	-- flag 1 插入基本数据 2 插入了计算数据 3 数据插入已完成
	-- 12 开头是话题
	-- 1201 向话题统计表插入基本数据
	-- 1202 向话题统计表插入参与该话题的总用户数
	-- 1203 向话题统计表插入该话题所在项目的已完成项目内容用户数
	-- 1204 向话题统计表插入该话题所在项目的总用户数
	-- 1205 向话题统计表插入数据完成
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
	-- #1 取得基本数据插入到stat_Topic表中
	insert dbo.Stat_Topic
	(
		StatId,
		CommunityId,
		PjId,
		TopicId,
		[Subject],
		TotalView,
		TotalReply,
		[Status],
		Flag,
		LastUpdate,
		DateCreated
	)
	select 
	NEWID(),
	(select CommunityId from dbo.Project where PjId = Topic.PjId),
	PjId,
	TopicId,
	[Subject],
	TotalView,
	TotalReply,
	1,
	1,
	GETDATE(),
	GETDATE()
	from dbo.Topic 
	where TopicId not in (select TopicId from dbo.Stat_Topic)
	
	-- 因为话题的一些基本数据也会有变化，所以要每次同步这些变化数据	
	update dbo.Stat_Topic
	set TotalView = (select TotalView from Topic where TopicId = Stat_Topic.TopicId),
	TotalReply = (select TotalReply from Topic where TopicId = Stat_Topic.TopicId)
	
	-- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1201--向话题统计表插入基本数据',
		GETDATE()
	)
	
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
	-- #2 向stat_Topic表中插入计算数据
	-- 2.1 插入参与该话题的总用户数
	update dbo.Stat_Topic
	set LastUpdate = GETDATE(),
	TotalUserCount = 
	(select COUNT(distinct c.UserPassportId)
	from dbo.Topic t,dbo.Comment c
	where t.TopicId = c.TopicId  
	and t.TopicId = Stat_Topic.TopicId)
	
	-- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1202--向话题统计表插入参与该话题的总用户数',
		GETDATE()
	)
------------------------------------------------------------------------------------------
	-- 2.2 插入完成项目的总用户数
		-- 2.2.1 创建零时表用来存放数据
		
		-- 零时表1 保存了每个项目下的用户和每个用户在这个项目下所包含的内容
		create table #UserCompleteProject 
		(		
			pjid bigint,
			userid bigint,
			completecount int,
			totalCount int
		)
		insert #UserCompleteProject
		(		
			pjid,
			userid,
			completecount,
			totalCount
		)
		select distinct	
		p.PjId,
		u_in_cp.UserPassportId,
		0,
		case 
		when p.IsUserInProjectDetail = 0
			then(select COUNT(*) from dbo.ProjectOrder where PjId = p.pjid)
		else (select COUNT(*) from dbo.UserInProjectDetail where PjId = p.pjid and UserPassportId = u_in_cp.UserPassportId and HasRead = 1)
		end 	
		from dbo.Stat_Topic s,dbo.Project p,dbo.UserInCommunityProject u_in_cp
		where s.PjId = p.PjId and p.PjId = u_in_cp.PjId 
		
		
		-- 零时表2 记录了每个用户在每个项目中拥有的内容详细情况
		create table #userInProjectDe
		(
			pjid bigint,
			userid bigint,
			refid bigint,
			reftype int,
			iscomplete int -- 0 没有完成，1 已经完成
		)
		
		insert #userInProjectDe
		(
			pjid,
			userid,
			refid,
			reftype,
			iscomplete
		)
		select ucp.pjid,ucp.userid,
		case (select IsUserInProjectDetail from dbo.Project where PjId = ucp.pjid)
		when 0 then(select refid from dbo.ProjectOrder where pjid = ucp.pjid and RefId = po.RefId)
		else(select refid from dbo.UserInProjectDetail where pjid = ucp.pjid and UserPassportId = ucp.userid and RefId = po.RefId)
		end as 'refid',
		case (select IsUserInProjectDetail from dbo.Project where PjId = ucp.pjid)
		when 0 then(select RefType from dbo.ProjectOrder where pjid = ucp.pjid and RefId = po.RefId)
		else(select RefType from dbo.UserInProjectDetail where pjid = ucp.pjid and UserPassportId = ucp.userid and RefId = po.RefId)
		end as 'refType',
		0
		from #UserCompleteProject ucp,ProjectOrder po
		where ucp.pjid = po.PjId
		
		-- 2.2.2 删除多余的行
		delete from #userInProjectDe where refid is null and reftype is null 
		
		-- 2.2.3 更新#userInProjectDe表中用户是否做过的字段
		update #userInProjectDe
		set iscomplete = 
		case (select IsByOrder from Project where pjid= #userInProjectDe.pjid)
		when 0 then -- 不按照大排序
		(
			case reftype 
				when 1 -- Topic
					then (
						case( select COUNT(*) from dbo.Comment
						where pjid = #userInProjectDe.pjid
						and UserPassportId = #userInProjectDe.userid
						and TopicId = #userInProjectDe.refid
						)
						when 0
							then 0
						else 1
						end	
					)
				when 2 -- CoCreation
					then (
							case( select COUNT(*) from dbo.CoCreationData
							where UserPassportId = #userInProjectDe.userid
							and CoCreationId = #userInProjectDe.refid
							)
							when 0
								then 0
							else 1
							end	
						 )
				when 3 -- survey
					then (
							case( select COUNT(*) from dbo.SurveyData
							where pjid = #userInProjectDe.pjid
							and UserPassportId = #userInProjectDe.userid
							and SurveyQuestionId = #userInProjectDe.refid
							)
							when 0
								then 0
							else 1
							end	
						 )
			end			
		)
		else -- 按照大排序
		(
			case 
			(select COUNT(*) from UserInProjectOrder
			where pjid = #userInProjectDe.pjid
			and UserPassportId = #userInProjectDe.userid
			and refid = #userInProjectDe.refid
			and reftype = #userInProjectDe.reftype)
				when 0
					then 0
				else 1
			end
		)
		end
		
		-- 2.2.4 更新#UserCompleteProject 表中用户完成个数字段
		update #UserCompleteProject
		set completecount =
		(select COUNT(*) from #userInProjectDe
		where pjid = #UserCompleteProject.pjid
		and userid = #UserCompleteProject.userid
		and iscomplete = 1
		)
		
		--2.2.5 更新dbo.Stat_Topic表中已完成用户的个数
		update Stat_Topic 
		set TotalCompProjUserCount = 
		(select COUNT(*) from #UserCompleteProject
		where pjid = Stat_Topic.PjId
		and completecount = totalCount)
		
		-- 2.2.6 清除零时表
		drop table #UserCompleteProject				
		drop table #userInProjectDe
		
	-- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1203--向话题统计表插入该话题所在项目的已完成项目内容用户数',
		GETDATE()
	)
------------------------------------------------------------------------------------------
	-- 2.3 插入话题所在项目的用户总数
	update 	dbo.Stat_Topic
	set LastUpdate = GETDATE(),
	Flag = 2,
	TotalProjUserCount = 
	(
		select COUNT(*) from dbo.UserInCommunityProject
		where PjId = Stat_Topic.PjId
	)	
	-- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1204--向话题统计表插入该话题所在项目的总用户数',
		GETDATE()
	)	
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
	-- #3 插入数据完成
	update Stat_Topic 
	set Flag = 3
	
	-- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1205--向话题统计表插入数据完成',
		GETDATE()
	)
	
end
GO
/****** Object:  StoredProcedure [dbo].[Stat_Topic_Detail_User_logic]    Script Date: 06/11/2012 13:34:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Stat_Topic_Detail_User_logic]
as 
begin
	-- Status 1 正常 -1 已删除
	-- flag 1 插入基本数据完成 2 插入计算数据完成 3 数据全部插入完成
	-- 14 开头是用户参与话题
	-- 1401 向用户参与话题的统计表中插入基本数据完成
	-- 1402 向用户参与话题的统计表中插入用户在该话题中总计评论次数
	-- 1403 向用户参与话题的统计表中插入数据全部完成
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
	-- #1 插入基本数据
	insert dbo.Stat_Topic_Detail_User
	(
		StatId,
		UserPassportId,
		TopicId,
		UserName,
		RealName,
		[Status],
		Flag,
		LastUpdate,
		DateCreated
	)
	select 
		st.StatId,
		u.UserPassportId,
		st.TopicId,
		u.UserName,
		u.RealName,
		1,
		1,
		GETDATE(),
		GETDATE() 
		-- 关于用户的选取上,思来想去应该是统计每个话题所在项目的用户
	from UserPassport u,dbo.Stat_Topic st	
	where u.UserPassportId in (select UserPassportId from UserInCommunityProject where PjId = st.PjId)
	--  加这个条件的目地就是控制 如果话题所在的项目的某个用户已做过了数据统计那么就不在插入数据了
	-- 这样就防止了数据的重复，同时又保证了如果项目新加了一个人那么这个人的数据可以插入统计表		
	and u.UserPassportId not in (select UserPassportId from Stat_Topic_Detail_User where TopicId = st.TopicId)
	
	-- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1401--向用户参与话题的统计表中插入基本数据完成',
		GETDATE()
	)
	
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
	-- #2 插入计算数据
	-- 2.2.1 插入用户
	update dbo.Stat_Topic_Detail_User
	set Flag = 2,
	LastUpdate = GETDATE(),	
	 CommentCount =
	(select COUNT(*)
	from Comment
	where TopicId = Stat_Topic_Detail_User.TopicId
	and UserPassportId = Stat_Topic_Detail_User.UserPassportId
	)
	-- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1402--向用户参与话题的统计表中插入用户在该话题中总计评论次数',
		GETDATE()
	)
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
	-- #3 数据全部插入完
	update dbo.Stat_Topic_Detail_User
	set Flag = 3,
	LastUpdate = GETDATE()
	
    -- 记录日志
	insert into dbo.Stat_Log
	(
		LogId,
		Content,
		DateCreated
	)
	values
	(
		NEWID(),
		'1403--向用户参与话题的统计表中插入数据全部完成',
		GETDATE()
	)	
end
GO
/****** Object:  StoredProcedure [dbo].[deleteUserSp]    Script Date: 06/11/2012 13:34:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deleteUserSp]
(
	@UserPassportId bigint
)
as 
	declare @status int,@uid bigint
	set @status = 0--默认删除完成
begin    
	if(@UserPassportId is null or @UserPassportId < 0)
	begin
		set @status = -1;				
	end	
	else
		begin
		set @uid =(select UserPassportId from dbo.UserPassport where UserPassportId =@UserPassportId)
		if(@uid is null)
		     return -1901
			begin try
				begin tran deuser
				--	执行删除用户
					--博客
						-- 加分
							-- 博客评论加分					
							delete from UserInKudo where RefId in (select BlogCommentId from BlogComment where BlogId in (select BlogId from Blog where UserPassportId = @UserPassportId)) and RefType = 51
							if(@@ERROR <> 0)
								set @status = -101;
							delete from Kudo where RefId in (select BlogCommentId from BlogComment where BlogId in (select BlogId from Blog where UserPassportId = @UserPassportId)) and RefType = 51
							if(@@ERROR <> 0)
								set @status = -102;
							-- 博客加分
							delete from UserInKudo where RefId in (select BlogId from Blog where UserPassportId = @UserPassportId) and RefType = 5
							if(@@ERROR <> 0)
								set @status = -103;
							delete from Kudo where RefId in (select BlogId from Blog where UserPassportId = @UserPassportId) and RefType = 5
							if(@@ERROR <> 0)
								set @status = -104; 						
							-- 回复别的博客加的分(这要注意这不是全部删除，而是把要删除的人的评分删除掉，而回复的评分减去删除人的评分分值)
							update Kudo  set KudosValue = (Kudo.KudosValue - (select SUM(GivenKudos) from UserInKudo uk where uk.RefId = Kudo.RefId and uk.UserPassportId = @UserPassportId)) where RefType = 51 
							if(@@ERROR <> 0)
								set @status = -105;
							delete from UserInKudo where RefId in (select BlogCommentId from BlogComment where UserPassportId = @UserPassportId) and UserPassportId = @UserPassportId and RefType = 51							
							if(@@ERROR <> 0)
								set @status = -106;
							-- 用户的所有加分(这要注意这不是全部删除，而是把要删除的人的评分删除掉，而回复的评分减去删除人的评分分值)
							update Kudo  set KudosValue = (Kudo.KudosValue - (select SUM(GivenKudos) from UserInKudo uk where uk.RefId = Kudo.RefId and uk.UserPassportId = @UserPassportId))
							if(@@ERROR <> 0)
								set @status = -105;
							--用户的所有加分
							delete from UserInKudo where UserPassportId=@UserPassportId
							if(@@ERROR <> 0)
								set @status = -112;
								
						-- 资源
							-- 回复资源
							delete from UploadResource where RefId in (select BlogCommentId from BlogComment where BlogId in (select BlogId from Blog where UserPassportId = @UserPassportId)) and RefType = 6
							if(@@ERROR <> 0)
								set @status = -107;
							-- 回复别人博客的资源
							delete from UploadResource where RefId in (select BlogCommentId from BlogComment where UserPassportId = @UserPassportId) and RefType = 6
							if(@@ERROR <> 0)
								set @status = -108;
							-- 博客资源
							delete from UploadResource where RefId in (select BlogId from Blog where UserPassportId = @UserPassportId) and RefType = 5								
							if(@@ERROR <> 0)
								set @status = -109;
						-- 回复
							--创建博客的回复
							delete from BlogComment where BlogId in (select BlogId from Blog where UserPassportId = @UserPassportId)
							if(@@ERROR <> 0)
								set @status = -110;
							--回复别人博客的回复
							delete from BlogComment where UserPassportId = @UserPassportId
						-- 本身
							-- 创建的博客
							delete from Blog where UserPassportId =  @UserPassportId
							if(@@ERROR <> 0)
								set @status = -111;
					-- 论坛
						-- 加分
							--创建论坛的评论加的分
							delete from UserInKudo where RefId in (select PostId from Post where ThreadId in (select ThreadId from Thread where UserPassportId = @UserPassportId)) and RefType = 41
							if(@@ERROR <> 0)
								set @status = -201;
							delete from Kudo where RefId in (select PostId from Post where ThreadId in (select ThreadId from Thread where UserPassportId = @UserPassportId)) and RefType = 41
							if(@@ERROR <> 0)
								set @status = -202;
							--创建的论坛加的分
							delete from UserInKudo where RefId in (select ThreadId from Thread where UserPassportId = @UserPassportId) and RefType = 4
							if(@@ERROR <> 0)
								set @status = -203;
							delete from Kudo where RefId in (select ThreadId from Thread where UserPassportId = @UserPassportId)  and RefType = 4
							if(@@ERROR <> 0)
								set @status = -204;
							--评论别人的论坛加的分
							update Kudo set KudosValue = (select SUM(uk.GivenKudos) from UserInKudo uk where uk.RefId = Kudo.RefId and uk.UserPassportId = @UserPassportId and uk.RefType = 41) where RefType = 41
							if(@@ERROR <> 0)
								set @status = -205;
							delete from UserInKudo where RefId in (select PostId from Post where UserPassportId = @UserPassportId) and UserPassportid = @UserPassportId and RefType = 41
							if(@@ERROR <> 0)
								set @status = -206;
						-- 资源
							-- 创建的论坛回复的资源
							delete from UploadResource where RefId in (select PostId from Post where ThreadId in (select ThreadId from Thread where UserPassportId = @UserPassportId)) and RefType = 4
							if(@@ERROR <> 0)
								set @status = -207;
							-- 回复别人论坛的资源
							delete from UploadResource where RefId in (select PostId from Post where UserPassportId = @UserPassportId) and RefType = 4
							if(@@ERROR <> 0)
								set @status = -208;
							-- 创建论坛的资源
							delete from UploadResource where RefId in (select ThreadId from Thread where UserPassportId = @UserPassportId) and RefType = 3												
							if(@@ERROR <> 0)
								set @status = -209;
						-- 回复
							-- 删除创建的论坛的回复
							delete from Post where Threadid in (select ThreadId from Thread where UserPassportId = @UserPassportId)
							if(@@ERROR <> 0)
								set @status = -210;
							-- 删除回复别人论坛的回复
							delete from Post where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -211;
						-- 本身
							-- 创建的论坛
							delete from Thread where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -212;
					-- 分享
						-- 加分
							-- 创建话题的回复加的分
							delete from UserInKudo where RefId in (select CommentId from Comment where TopicId in (select TopicId from Topic where UserPassportId = @UserPassportId)) and RefType = 11
							if(@@ERROR <> 0)
								set @status = -301;
							delete from Kudo where RefId in (select CommentId from Comment where TopicId in (select TopicId from Topic where UserPassportId = @UserPassportId)) and RefType = 11
							if(@@ERROR <> 0)
								set @status = -302;
							-- 回复别人的话题的回复加的分
							update Kudo set KudosValue = (KudosValue - (select SUM(uk.GivenKudos) from UserInKudo uk where uk.RefId = Kudo.RefId and uk.UserPassportId = @UserPassportId and uk.RefType = 11)) where Kudo.RefType =11
							if(@@ERROR <> 0)
								set @status = -303;
							delete from UserInKudo where RefId in (select CommentId from Comment where UserPassportId = @UserPassportId) and UserPassportId = @UserPassportId and RefType = 11
							if(@@ERROR <> 0)
								set @status = -303;
							-- 创建的话题被加的分
							delete from UserInKudo where RefId in (select TopicId from Topic where UserPassportId = @UserPassportId) and RefType = 1
							if(@@ERROR <> 0)
								set @status = -304;
							delete from Kudo where RefId in (select TopicId from Topic where UserPassportId = @UserPassportId) and RefType = 1
							if(@@ERROR <> 0)
								set @status = -305;
						-- 资源
							-- 创建话题的回复的资源
							delete from UploadResource where RefId in (select CommentId from Comment where TopicId in (select TopicId from Topic where UserPassportId = @UserPassportId)) and RefType = 2							
							if(@@ERROR <> 0)
								set @status = -306;
							-- 回复别人的话题的回复的资源
							delete from UploadResource where RefId in (select CommentId from Comment where UserPassportId = @UserPassportId) and RefType = 2
							if(@@ERROR <> 0)
								set @status = -307;
							-- 创建话题的资源
							delete from UploadResource where RefId in (select TopicId from Topic where UserPassportId = @UserPassportId) and RefType = 1							
							if(@@ERROR <> 0)
								set @status = -308;
						-- 统计
							-- 用户参与话题统计
								-- 用户创建的话题的用户参与统计
								delete from Stat_Topic_Detail_User where TopicId in (select TopicId from Topic where UserPassportId = @UserPassportId)
								if(@@ERROR <> 0)
								set @status = -309;
								-- 用户参与别的话题的统计
								delete from Stat_Topic_Detail_User where UserPassportId = @UserPassportId
								if(@@ERROR <> 0)
								set @status = -310;
							-- 话题统计	
							delete from Stat_Topic where TopicId in (select TopicId from Topic where UserPassportId = @UserPassportId)
							if(@@ERROR <> 0)
								set @status = -311;							
						-- 项目内容
							-- 首先调整序号（大排序）
								declare @refid bigint,@pjid bigint,@maxOederid int,@orderid int -- 定义要删除的话题的序号
								set @refid = 0-- 赋初始值							
															
								-- 定义读取用户创建的话题的游标
								declare getRefId cursor for select topicid from topic where UserPassportId = @UserPassportId
								open getRefId
								
								fetch next from getRefId into @refid							
								while(@@FETCH_STATUS = 0 and @refid > 0)-- 取得的话题号大于0并且读取状态正常
								begin
									--取得最大序号
									set @pjid = (select pjid from Topic where TopicId = @refid)
									set @maxOederid = (select Top(1)RefOrderId from ProjectOrder where PjId = @pjid order by RefOrderId desc)
									set @orderid = (select RefOrderId from ProjectOrder where RefId = @refid)
									if(@orderid = 1)-- 序号正好是第一个
									begin 	
										update UserInProjectOrder set RefOrderId = (RefOrderId -1) where PjId = @pjid
										update ProjectOrder set RefOrderId = (RefOrderId -1) where PjId = @pjid
									end    
									else if(@orderid < @maxOederid and @orderid > 1)-- 中间									
									begin
										update UserInProjectOrder set RefOrderId = (RefOrderId-1)where PjId = @pjid and RefOrderId > @orderid
										update ProjectOrder set RefOrderId = (RefOrderId-1)where PjId = @pjid and RefOrderId > @orderid
									end
									fetch next from getRefId into @refid																																																	
								end	
								close getRefId
								deallocate getRefId
							-- 用户参与该用户创建的话题的记录
							delete from UserInProjectOrder where RefId in (select TopicId from Topic where UserPassportId = @UserPassportId) and RefType = 1
							if(@@ERROR <> 0)
								set @status = -312;
							-- 用户分配该用户创建的话题记录
							delete from UserInProjectDetail where RefId in (select TopicId from Topic where UserPassportId = @UserPassportId) and RefType = 1
							if(@@ERROR <> 0)
								set @status = -313;
							-- 项目内容																																	
							delete from ProjectOrder where RefId in (select TopicId from Topic where UserPassportId = @UserPassportId) and RefType = 1																						  																			
							if(@@ERROR <> 0)
								set @status = -314;
						-- 回复
							-- 创建话题的回复
							delete from Comment where TopicId in (select TopicId from Topic where UserPassportId = @UserPassportId)
							if(@@ERROR <> 0)
								set @status = -315;
							delete from Comment where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -316;
						-- 本身	
							--创建的话题
							delete from Topic where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -317;	
					-- 创意
						-- 加分
							--自己设计创意的创意内容的评论的加分
							delete from UserInKudo where RefId in (select CoCommentId from CoComment where CoCreationDataId in (select CoCreationDataId from CoCreationData where CoCreationId in (select CoCreationId from CoCreation where UserPassportId = @UserPassportId))) and RefType = 22
							if(@@ERROR <> 0)
								set @status = -401;
							delete from Kudo where RefId in (select CoCommentId from CoComment where CoCreationDataId in (select CoCreationDataId from CoCreationData where CoCreationId in (select CoCreationId from CoCreation where UserPassportId = @UserPassportId))) and RefType = 22		
							if(@@ERROR <> 0)
								set @status = -402;
							--自己设计创意的创意内容的评分
							delete from UserInKudo where RefId in (select CoCreationDataId from CoCreationData where CoCreationId in (select CoCreationId from CoCreation where UserPassportId = @UserPassportId)) and RefType = 21							 
							if(@@ERROR <> 0)
								set @status = -403;
							delete from Kudo where RefId in (select CoCreationDataId from CoCreationData where CoCreationId in (select CoCreationId from CoCreation where UserPassportId = @UserPassportId)) and RefType = 21
							if(@@ERROR <> 0)
								set @status = -404;	
							--自己设计创意的评分
							delete from UserInKudo where RefId in (select CoCreationId from CoCreation where UserPassportId = @UserPassportId) and RefType = 2
							if(@@ERROR <> 0)
								set @status = -405;	
							delete from Kudo where RefId in (select CoCreationId from CoCreation where UserPassportId = @UserPassportId) and RefType = 2
							if(@@ERROR <> 0)
								set @status = -406;	
							--别人设计创意自己制作内容的评论的加分
							delete from UserInKudo where RefId in (select CoCommentId from CoComment where CoCreationDataId in (select CoCreationDataId from CoCreationData where UserPassportId = @UserPassportId)) and RefType = 22
							if(@@ERROR <> 0)
								set @status = -407;
							delete from Kudo where RefId in (select CoCommentId from CoComment where CoCreationDataId in (select CoCreationDataId from CoCreationData where UserPassportId = @UserPassportId)) and RefType = 22		
							if(@@ERROR <> 0)
								set @status = -408;
							--别人设计创意自己制作的内容的评分
							delete from UserInKudo where RefId in (select CoCreationDataId from CoCreationData where UserPassportId = @UserPassportId) and RefType = 21
							if(@@ERROR <> 0)
								set @status = -409;
							delete from Kudo where RefId in (select CoCreationDataId from CoCreationData where UserPassportId = @UserPassportId) and RefType = 21	
							if(@@ERROR <> 0)
								set @status = -410;
							--别人设计创意别人别人制作自己评论的加分
							delete from UserInKudo where RefId in (select CoCommentId from CoComment where UserPassportId = @UserPassportId) and RefType = 22
							if(@@ERROR <> 0)
								set @status = -411;
							delete from Kudo where RefId in (select CoCommentId from CoComment where UserPassportId = @UserPassportId) and RefType = 22	
							if(@@ERROR <> 0)
								set @status = -412;
							--别人的设计的创意别人制作的内容的别人的评论自己加的分
							update Kudo set KudosValue = (KudosValue-(select SUM(UserInKudo.GivenKudos)from UserInKudo where UserInKudo.RefId = Kudo.RefId and UserPassportId = @UserPassportId and RefType = 22)) where RefType = 22
							delete from UserInKudo where UserPassportId = @UserPassportId and RefType = 22
							if(@@ERROR <> 0)
								set @status = -413;
								
							update Kudo set KudosValue = (KudosValue - (select  SUM(uk.GivenKudos) from UserInKudo uk where uk.RefId = Kudo.RefId and uk.UserPassportId = @UserPassportId and uk.RefType = 21)) where RefType = 21
							delete from UserInKudo where UserPassportId = @UserPassportId and RefType = 21
							if(@@ERROR <> 0)
								set @status = -414;
								
							update Kudo set KudosValue = (KudosValue - (select SUM(uk.GivenKudos) from UserInKudo uk where uk.refid = Kudo.refid and uk.UserPassportId = @UserPassportId and reftype = 2)) where reftype = 2
							delete from UserInKudo where UserPassportId = @UserPassportId and RefType = 2	
							if(@@ERROR <> 0)
								set @status = -415;						
						-- 创意内容评论
							-- 自己创建的创意的制作内容的评论
							delete from CoComment where CoCreationDataId in (select CoCreationDataId from CoCreationData where CoCreationId in (select CoCreationid from CoCreation where UserPassportId = @UserPassportId))
							if(@@ERROR <> 0)
								set @status = -416;			
							-- 别人创建的创意自己制作的内容的评论
							delete from CoComment where CoCreationDataId in (select CoCreationDataId from CoCreationData where UserPassportId = @UserPassportId)
							if(@@ERROR <> 0)
								set @status = -417;			
							-- 别人创建的创意别人制作的内容自己的评论
							delete from CoComment where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -418;			
						-- 创意内容
							-- 自己设计的创意的自己制作的创意内容
							delete from CoCreationData where CoCreationId in (select CoCreationId from CoCreation where UserPassportId = @UserPassportId)
							if(@@ERROR <> 0)
								set @status = -419;
							-- 别人设计的创意自己制作的创意内容
							delete from CoCreationData where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -420;
						-- 创意层级元素
							-- 自己设计的创意的层级元素
							delete from CoCreationElement where CoCreationId in (select CoCreationId from CoCreation where UserPassportId = @UserPassportId)
							if(@@ERROR <> 0)
								set @status = -421;								
						-- 创意层级
							-- 自己设计的创意的层级
							delete from CoCreationLayer where CoCreationId in (select CoCreationId from CoCreation where UserPassportId = @UserPassportId)
							if(@@ERROR <> 0)
								set @status = -422;
							-- 参与别人的创意的数据的层级
							delete from CoCreationLayer where UserPassportId = @UserPassportId;	
						-- 项目内容
							-- 首先调整序号（大排序）
								declare @co_refid bigint,@co_pjid bigint,@co_maxOederid int,@co_orderid int -- 定义要删除的话题的序号
								set @co_refid = 0-- 赋初始值							
															
								-- 定义读取用户创建的话题的游标
								declare co_getRefId cursor for select CoCreationId from CoCreation where UserPassportId = @UserPassportId
								open co_getRefId
								fetch next from co_getRefId into @co_refid							
								while(@@FETCH_STATUS = 0 and @co_refid > 0)-- 取得的话题号大于0并且读取状态正常
								begin
									--取得最大序号
									set @co_pjid = (select pjid from Topic where TopicId = @co_refid)
									set @co_maxOederid = (select Top(1)RefOrderId from ProjectOrder where PjId = @co_pjid order by RefOrderId desc)
									set @co_orderid = (select RefOrderId from ProjectOrder where RefId = @co_refid)
									if(@co_orderid = 1)-- 序号正好是第一个
									begin 	
										update UserInProjectOrder set RefOrderId = (RefOrderId -1) where PjId = @co_pjid
										update ProjectOrder set RefOrderId = (RefOrderId -1) where PjId = @co_pjid
									end    
									else if(@co_orderid < @co_maxOederid and @co_orderid > 1)-- 中间									
									begin
										update UserInProjectOrder set RefOrderId = (RefOrderId-1)where PjId = @co_pjid and RefOrderId > @co_orderid
										update ProjectOrder set RefOrderId = (RefOrderId-1)where PjId = @co_pjid and RefOrderId > @co_orderid
									end
									fetch next from co_getRefId into @co_refid																																																	
								end
								close co_getRefId
								deallocate co_getRefId
							-- 参与项目内容记录
							delete from UserInProjectOrder where RefId in(select CoCreationId from CoCreation where UserPassportId = @UserPassportId) and RefType = 2
							if(@@ERROR <> 0)
								set @status = -423;
							-- 分配项目内容记录
							delete from UserInProjectDetail where RefId In(select CoCreationId from CoCreation where UserPassportId = @UserPassportId)and RefType = 2
							if(@@ERROR <> 0)
								set @status = -424;
							-- 项目内容（大排序表）
							delete from ProjectOrder where RefId in (select CoCreationId from CoCreation where UserPassportId = @UserPassportId)and RefType = 2
							if(@@ERROR <> 0)
								set @status = -425;
						-- 创意本身
							-- 自己设计的创意
							delete from CoCreation where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -426;
					-- 答题
						-- 问题答案
							-- 自己创建的问题的答案
							delete from SurveyData where SurveyQuestionId in (select SurveyQuestionId from SurveyQuestion where UserPassportId = @UserPassportId)
							if(@@ERROR <> 0)
								set @status = -501;
							-- 回答别人创建问题的答案
							delete from SurveyData where UserPassportId = @UserPassportId 
							if(@@ERROR <> 0)
								set @status = -502;
						-- 问题资源
							-- 该用户创建问题的所有选项资源
							delete from SurveyResource where RefId in (select SurveyOptionId from SurveyOption where SurveyQuestionId in (select SurveyQuestionId from SurveyQuestion where UserPassportId = @UserPassportId)) and RefType = 3
							if(@@ERROR <> 0)
								set @status = -503;
							-- 该用户创建问题的所有子题的资源
							delete from SurveyResource where RefId in (select SurveySubId from SurveySub where SurveyQuestionId in (select SurveyQuestionId from SurveyQuestion where UserPassportId = @UserPassportId)) and RefType = 2
							if(@@ERROR <> 0)
								set @status = -504;
							-- 该用户创建的问题的资源
							delete from SurveyResource where RefId in (select SurveyQuestionId from SurveyQuestion where UserPassportId = @UserPassportId) and RefType = 1
							if(@@ERROR <> 0)
								set @status = -505;						
						-- 问题子题
							-- 该用户创建的问题的所有子题
							delete from SurveySub where SurveyQuestionId in (select SurveyQuestionId from SurveyQuestion where UserPassportId = @UserPassportId)						
							if(@@ERROR <> 0)
								set @status = -506;
						-- 问题选项
							-- 该用户创建问题的所有选项
							delete from SurveyOption where SurveyQuestionId in (select SurveyQuestionId from SurveyQuestion where UserPassportId = @UserPassportId)						
							if(@@ERROR <> 0)
								set @status = -507;
						-- 项目内容记录
							-- 调整大排序的序号
								declare @sur_refid bigint,@sur_pjid bigint,@sur_maxOederid int,@sur_orderid int -- 定义要删除的话题的序号
								set @sur_refid = 0-- 赋初始值							
															
								-- 定义读取用户创建的话题的游标
								declare sur_getRefId cursor for select SurveyQuestionId from SurveyQuestion where UserPassportId = @UserPassportId
								open sur_getRefId
								fetch next from sur_getRefId into @sur_refid							
								while(@@FETCH_STATUS = 0 and @sur_refid > 0)-- 取得的话题号大于0并且读取状态正常
								begin
									--取得最大序号
									set @sur_pjid = (select pjid from SurveyQuestion where SurveyQuestionId = @sur_refid)
									set @sur_maxOederid = (select Top(1)RefOrderId from ProjectOrder where PjId = @sur_pjid order by RefOrderId desc)
									set @sur_orderid = (select RefOrderId from ProjectOrder where RefId = @sur_refid)
									if(@sur_orderid = 1)-- 序号正好是第一个
									begin 	
										update UserInProjectOrder set RefOrderId = (RefOrderId -1) where PjId = @sur_pjid
										update ProjectOrder set RefOrderId = (RefOrderId -1) where PjId = @sur_pjid
									end    
									else if(@sur_orderid < @sur_maxOederid and @sur_orderid > 1)-- 中间									
									begin
										update UserInProjectOrder set RefOrderId = (RefOrderId-1)where PjId = @sur_pjid and RefOrderId > @sur_orderid
										update ProjectOrder set RefOrderId = (RefOrderId-1)where PjId = @sur_pjid and RefOrderId > @sur_orderid
									end
									fetch next from sur_getRefId into @sur_refid																																																	
								end
								close sur_getRefId
								deallocate sur_getRefId
							-- 参与项目内容记录
							delete from UserInProjectOrder where RefId in (select SurveyQuestionId from SurveyQuestion where UserPassportId = @UserPassportId) and RefType = 3
							if(@@ERROR <> 0)
								set @status = -508;
							-- 分配项目内容记录
							delete from UserInProjectDetail where RefId in (select SurveyQuestionId from SurveyQuestion where UserPassportId = @UserPassportId) and RefType = 3
							if(@@ERROR <> 0)
								set @status = -509;
							-- 项目内容	
							delete from ProjectOrder where RefId in (select SurveyQuestionId from SurveyQuestion where UserPassportId = @UserPassportId) and RefType = 3						
							if(@@ERROR <> 0)
								set @status = -510;
											
						-- 问题本身
							-- 删除该用户创建的所有问题
							delete from SurveyQuestion where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -511;
					-- 聊天室
						-- 聊天室的同步日志
							-- 删除用户创建聊天室的同步日志表记录
							delete from ChatSyncLog where ChatRoomId in (select ChatRoomId from ChatRoom where UserPassportId = @UserPassportId)							
							if(@@ERROR <> 0)
								set @status = -601;
							-- 自己参与聊天的同步日志信息
							delete from ChatSyncLog where UserPassportId = @UserPassportId;	
						-- 聊天室同步文件及画笔信息
							-- 删除该用户创建的聊天室的同步文件和画笔记录
							delete from ChatSync where ChatRoomId in (select ChatRoomId from ChatRoom where UserPassportId = @UserPassportId)							
							if(@@ERROR <> 0)
								set @status = -602;
							-- 自己参与聊天的画笔和文件信息
							delete from ChatSync where UserPassportId = @UserPassportId;	
						-- 聊天室的聊天记录
							-- 删除该用户创建的聊天室的聊天室记录
							delete from ChatLog where ChatRoomId in (select ChatRoomId from ChatRoom where UserPassportId = @UserPassportId)
							if(@@ERROR <> 0)
								set @status = -603;
							-- 删除该用户参与别人创建的聊天室的聊天记录
							delete from ChatLog where FromUserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -604;							
						-- 聊天室的文件
							-- 删除该用户创建的聊天室的文件记录
							delete from ChatFile where ChatRoomId in (select ChatRoomId from ChatRoom where UserPassportId = @UserPassportId)
							if(@@ERROR <> 0)
								set @status = -605;
							-- 删除该用户上传的聊天室文件
							delete from ChatFile where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -606;
						-- 聊天室的用户
							-- 删除该用户创建的聊天室的用户
							delete from ChatUser where ChatRoomId in (select ChatRoomId from ChatRoom where UserPassportId = @UserPassportId)
							if(@@ERROR <> 0)
								set @status = -607;
							-- 删除该用户在某个聊天室的用户记录
							delete from ChatUser where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -6071;
						-- 聊天室的统计
							-- 用户参与聊天室统计
								-- 用户创建的聊天室的用户参与统计
								delete from Stat_Chat_Detail_User where ChatRoomId in (select ChatRoomId from ChatRoom where UserPassportId = @UserPassportId)
								if(@@ERROR <> 0)
								set @status = -608;
								-- 用户参与别人创建的聊天室的用户参与统计
								delete from Stat_Chat_Detail_User where UserPassportId = @UserPassportId
								if(@@ERROR <> 0)
								set @status = -609;
							-- 聊天室统计
							delete from Stat_Chat where ChatRoomId in (select ChatRoomId from ChatRoom where UserPassportId = @UserPassportId)							
							if(@@ERROR <> 0)
								set @status = -610;
						-- 聊天室本身
							-- 删除该用户创建的聊天室
							delete from ChatRoom where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -611;
					-- 投票
						-- 投票答案																					
							delete from PollData where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -701;						
					-- 用户在项目信息
						-- 该用户参与项目内容记录
						delete from UserInProjectOrder where UserPassportId = @UserPassportId
						if(@@ERROR <> 0)
								set @status = -801;						
						-- 该用户被分配项目内容记录
						delete from UserInProjectDetail where UserPassportId = @UserPassportId
						if(@@ERROR <> 0)
								set @status = -802;
						-- 该用户拥有项目信息
						delete from UserInCommunityProject where UserPassportId = @UserPassportId
						if(@@ERROR <> 0)
								set @status = -803;
					-- 用户参与统计信息
					delete from Stat_User where UserPassportId = @UserPassportId
					if(@@ERROR <> 0)
							set @status = -901;
					-- 用户拥有项目信息
					delete from UserInCommunityProject where UserPassportId = @UserPassportId
					if(@@ERROR <> 0)
							set @status = -9001;		
					-- 项目（上边删除的是该用户创建的东西，现在是以项目号走的是该用户创建的项目下的内容，有可能是别人创建的项目内容但要删除）
						declare @p_pjid bigint -- 项目号
						set @p_pjid = 0;
						declare user_create_project cursor for select pjid from project where UserPassportId = @UserPassportId--读取用户创建的项目的游标						
						open user_create_project
						fetch next from user_create_project into @p_pjid					
						while(@@FETCH_STATUS = 0 and @p_pjid > 0)
						begin											
						-- 项目话题删除
							-- 加分
								-- 回复加的分								
								delete from UserInKudo where RefId in (select CommentId from Comment where TopicId in (select TopicId from Topic where PjId = @p_pjid)) and RefType = 11							
								if(@@ERROR <> 0)
									set @status = -1001;							
								delete from Kudo where RefId in (select CommentId from Comment where TopicId in (select TopicId from Topic where PjId = @p_pjid)) and RefType = 11													
								if(@@ERROR <> 0)
									set @status = -1002;						
								--话题被加的分
								delete from UserInKudo where RefId in (select TopicId from Topic where PjId = @p_pjid) and RefType = 1						
								if(@@ERROR <> 0)
									set @status = -1003;						
								delete from Kudo where RefId in (select TopicId from Topic where PjId = @p_pjid) and RefType = 1
								if(@@ERROR <> 0)
									set @status = -1004;							
							-- 资源
								-- 话题的回复的资源
								delete from UploadResource where RefId in (select CommentId from Comment where TopicId in (select TopicId from Topic where PjId = @p_pjid)) and RefType = 2							
								if(@@ERROR <> 0)
									set @status = -1005;																				
								-- 话题的资源
								delete from UploadResource where RefId in (select TopicId from Topic where PjId = @p_pjid) and RefType = 1							
								if(@@ERROR <> 0)
									set @status = -1006;					
							-- 统计
								-- 用户参与话题统计
									-- 用户创建的话题的用户参与统计
									delete from Stat_Topic_Detail_User where TopicId in (select TopicId from Topic where PjId = @p_pjid)																									
									if(@@ERROR <> 0)
										set @status = -1007;						
								-- 话题统计	
								delete from Stat_Topic where TopicId in (select TopicId from Topic where PjId = @p_pjid)
								if(@@ERROR <> 0)									
									set @status = -1008;																	
							-- 回复
								-- 创建话题的回复
								delete from Comment where TopicId in (select TopicId from Topic where PjId = @p_pjid)													
								if(@@ERROR <> 0)
									set @status = -1009;							
							-- 本身	
								--创建的话题
								delete from Topic where PjId = @p_pjid
								if(@@ERROR <> 0)
									set @status = -1010;							
						-- 项目的创意删除
							-- 加分
								--项目的创意内容的评论的加分
								delete from UserInKudo where RefId in (select CoCommentId from CoComment where CoCreationDataId in (select CoCreationDataId from CoCreationData where CoCreationId in (select CoCreationId from CoCreation where PjId = @p_pjid))) and RefType = 22							
								if(@@ERROR <> 0)
									set @status = -1011;
								delete from Kudo where RefId in (select CoCommentId from CoComment where CoCreationDataId in (select CoCreationDataId from CoCreationData where CoCreationId in (select CoCreationId from CoCreation where PjId = @p_pjid))) and RefType = 22		
								if(@@ERROR <> 0)
									set @status = -1012;							
								--项目的创意内容的评分
								delete from UserInKudo where RefId in (select CoCreationDataId from CoCreationData where CoCreationId in (select CoCreationId from CoCreation where PjId = @p_pjid)) and RefType = 21							 							
								if(@@ERROR <> 0)
									set @status = -1013;							
								delete from Kudo where RefId in (select CoCreationDataId from CoCreationData where CoCreationId in (select CoCreationId from CoCreation where PjId = @p_pjid)) and RefType = 21
								if(@@ERROR <> 0)
									set @status = -1014;								
								--项目的创意的评分
								delete from UserInKudo where RefId in (select CoCreationId from CoCreation where PjId = @p_pjid) and RefType = 2							
								if(@@ERROR <> 0)
									set @status = -1015;							
								delete from Kudo where RefId in (select CoCreationId from CoCreation where PjId = @p_pjid) and RefType = 2
								if(@@ERROR <> 0)
									set @status = -1016;													
							-- 创意内容评论
								-- 项目的创意制作内容的评论
								delete from CoComment where CoCreationDataId in (select CoCreationDataId from CoCreationData where CoCreationId in (select CoCreationid from CoCreation where PjId = @p_pjid))															
								if(@@ERROR <> 0)
									set @status = -1017;								
							-- 创意内容
								-- 项目创意的制作的创意内容
								delete from CoCreationData where CoCreationId in (select CoCreationId from CoCreation where PjId = @p_pjid)													
								if(@@ERROR <> 0)
									set @status = -1018;							
							-- 创意层级元素
								-- 项目创意的层级元素
								delete from CoCreationElement where CoCreationId in (select CoCreationId from CoCreation where PjId = @p_pjid)
								if(@@ERROR <> 0)
									set @status = -1019;							
							-- 创意层级
								-- 项目创意的层级
								delete from CoCreationLayer where CoCreationId in (select CoCreationId from CoCreation where PjId = @p_pjid)
								if(@@ERROR <> 0)
									set @status = -1020;											
							-- 创意本身
								-- 项目的创意
								delete from CoCreation where PjId = @p_pjid
								if(@@ERROR <> 0)
									set @status = -1021;							
						-- 项目的答题的删除
							-- 问题答案
								-- 问题的答案
								delete from SurveyData where SurveyQuestionId in (select SurveyQuestionId from SurveyQuestion where PjId = @p_pjid)
								if(@@ERROR <> 0)
									set @status = -1022;																				
							-- 问题资源
							
								-- 问题的所有选项资源
								delete from SurveyResource where RefId in (select SurveyOptionId from SurveyOption where SurveyQuestionId in (select SurveyQuestionId from SurveyQuestion where PjId = @p_pjid)) and RefType = 3
								if(@@ERROR <> 0)
									set @status = -1023;								
								-- 问题的所有子题的资源
								delete from SurveyResource where RefId in (select SurveySubId from SurveySub where SurveyQuestionId in (select SurveyQuestionId from SurveyQuestion where PjId = @p_pjid)) and RefType = 2
								if(@@ERROR <> 0)
									set @status = -1024;								
								-- 问题的资源
								delete from SurveyResource where RefId in (select SurveyQuestionId from SurveyQuestion where PjId = @p_pjid) and RefType = 1
								if(@@ERROR <> 0)
									set @status = -1025;														
							-- 问题子题							
								delete from SurveySub where SurveyQuestionId in (select SurveyQuestionId from SurveyQuestion where PjId = @p_pjid)						
								if(@@ERROR <> 0)
									set @status = -1026;								
							-- 问题选项							
								delete from SurveyOption where SurveyQuestionId in (select SurveyQuestionId from SurveyQuestion where PjId = @p_pjid)						
								if(@@ERROR <> 0)
									set @status = -1027;
							--SurveyOutQuestionProperty 2012-9-4
								delete from SurveyOutQuestionProperty where SurveyQuestionId in (select SurveyQuestionId from SurveyQuestion where PjId = @PjId)	
								if(@@ERROR <> 0)
									set @status = -1056;										
							-- 问题本身							
								delete from SurveyQuestion where PjId = @p_pjid
								if(@@ERROR <> 0)
									set @status = -1028;									
						-- 项目的用户的删除
						delete from UserInCommunityProject where PjId = @p_pjid
						if(@@ERROR <> 0)
							set @status = -1029;					
						-- 用户参与项目内容记录
						delete from UserInProjectOrder where PjId = @p_pjid
						if(@@ERROR <> 0)
							set @status = -1030;								
						-- 用户分配项目内容记录
						delete from UserInProjectDetail where PjId = @p_pjid
						if(@@ERROR <> 0)
							set @status = -1031;							
						-- 项目内容排序记录
						delete from ProjectOrder where PjId = @p_pjid	
						if(@@ERROR <> 0)
							set @status = -1032;
						-- 项目下的统计信息
							-- 话题统计
							delete from Stat_Topic where PjId = @p_pjid
							-- 用户统计
							delete from Stat_User where PjId = @p_pjid
							
							--项目下Section
							delete from SectionRelated 
							where ParentId in(
								  select SectionId from Section where PjId=@p_pjid)
						   select SectionId from Section where PjId=@p_pjid
						   --只删除该项目下的，用户在其他项目中创建的Section不删除
						   delete from Section where PjId=@p_pjid
						
						--2012-9-3新增 Begin
						
						--项目的板块的删除
							-- 帖子回复
							delete from Post where ThreadId in (select ThreadId from Thread where BoardId in(select BoardId from Board where PjId = @p_pjid))
							if(@@ERROR <> 0)
								set @status = -1043;					
							-- 帖子
							delete from Thread where BoardId in(select BoardId from Board where PjId = @p_pjid)
							if(@@ERROR <> 0)
								set @status = -1034;
							--板块
							delete from Board where PjId = @p_pjid
							if(@@ERROR <> 0)
								set @status = -1035;
								
						--项目的Category
							--CategoryRelated
							delete from CategoryRelated where PjId=@p_pjid
							if(@@ERROR <> 0)
								set @status = -1036;
							--Category
							delete from Category where PjId=@p_pjid
							if(@@ERROR <> 0)
								set @status = -1037;
						
						--项目下的媒体库
						delete from ImageLibrary where PjId=@p_pjid
							if(@@ERROR <> 0)
								set @status = -1038;
						
						
						--项目下的HomeWork
							--BlogComment
							delete from BlogComment where BlogId in (select BlogId from Blog where HwId in (select HwId from HomeWork where PjId=@p_pjid))
							if(@@ERROR <> 0)
								set @status = -1039;
							--Blog
							delete from Blog where HwId in (select HwId from HomeWork where PjId=@p_pjid)
							if(@@ERROR <> 0)
								set @status = -1040;
							--HomeWork
							delete from HomeWork where PjId=@p_pjid
							if(@@ERROR <> 0)
								set @status = -1041;
							
						--DeployRole
						delete from DeployRole where PjId=@p_pjid
							if(@@ERROR <> 0)
								set @status = -1042;
								
						--UploadResource
						delete from UploadResource where PjId=@p_pjid
						if(@@ERROR <> 0)
							set @status = -1044;	
								
						--2012-9-3新增 End
														
						-- 项目本身删除
						delete from Project where PjId = @p_pjid
						if(@@ERROR <> 0)
							set @status = -1033;						
						-- 继续
						fetch next from user_create_project into @p_pjid											
						end
						close user_create_project
						deallocate 	user_create_project	
							
					--2012-9-3新增 Begin
						
						--用户的板块的删除
							-- 帖子回复
							delete from Post where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -1045;					
							-- 帖子
							delete from Thread where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -1046;
							--板块
							delete from Board where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -1047;
								
						--用户的Category
							--Category
							delete from Category where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -1049;
						--DeployRole
						delete from DeployRole where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -1050;
						--SurveyQuestionPrivateLinks
						delete from SurveyQuestionPrivateLinks where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -1051;
						--媒体库
						delete from ImageLibrary where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -1052;
						--HomeWork
							delete from HomeWork where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -1053;
						--Survey
						delete from Survey where UserPassportId = @UserPassportId
							if(@@ERROR <> 0)
								set @status = -1054;
						--ProjectOrder
						delete from ProjectOrder where UserPassportId = @UserPassportId
						if(@@ERROR <> 0)
							set @status = -1055;
					--2012-9-3新增 End
					
					--2013-3-4新增，删除UserProfile，GiftExchange，UserPointLog表中的相关数据
					delete from UserProfile where UserPassportId = @UserPassportId
						if(@@ERROR <> 0)
							set @status = -1056;
					delete from GiftExchange where UserPassportId = @UserPassportId
						if(@@ERROR <> 0)
							set @status = -1057;
					delete from UserPointLog where UserPassportId = @UserPassportId
						if(@@ERROR <> 0)
							set @status = -1058;
					--2013-3-4新增 End
					
					--2013-4-22新增，删除表UserAcitivity、UserLogin中的相关内容
					delete from UserAcitivity where UserPassportId = @UserPassportId
						if(@@ERROR <> 0)
							set @status = -1059;
					delete from UserLogin where UserPassportId = @UserPassportId
						if(@@ERROR <> 0)
							set @status = -1060;
					--2013-4-22新增 End
					
					--2013-5-17新增，删除表UserDeviceInfo、ValidateUser中的相关内容
					delete from UserDeviceInfo where UserPassportId = @UserPassportId
						if(@@ERROR <> 0)
							set @status = -1061;
					delete from ValidateUser where UserPassportId = @UserPassportId
						if(@@ERROR <> 0)
							set @status = -1062;
					--2013-5-17新增 End
					
					--2013-6-27新增，删除表InvitationUser中的相关内容
					delete from InvitationUser where UserPassportId = @UserPassportId
						if(@@ERROR <> 0)
							set @status = -1063;
					--2013-6-27新增 End
					
					--2013-12-9新增,删除表SamplingAllRespondent、SamplingRespondent中的相关内容
					delete from SamplingAllRespondent where UserPassportId = @UserPassportId
						if(@@ERROR <> 0)
							set @status = -1064;
					delete from SamplingRespondent where UserPassportId = @UserPassportId
						if(@@ERROR <> 0)
							set @status = -1065;
					--2013-12-9新增 End
					
					--2014-03-27新增，删除表UserProfileModifyRecord中的相关内容
					delete from UserProfileModifyRecord where UserPassportId = @UserPassportId
						if(@@ERROR <> 0)
							set @status = -1066;
					--2014-03-27新增 End
													
					-- 用户				
					delete from UserPassport where UserPassportId = @UserPassportId
					if(@@ERROR <> 0)
						set @status = -2001;									 	
				commit tran deuser				
			end try		
			begin catch
				rollback tran deuser								
			end catch
		end				
	return @status				
end
GO

/****** Object:  StoredProcedure [dbo].[deleteTopicSp]    Script Date: 06/11/2012 13:34:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deleteTopicSp]
(
	@TopicId bigint
)
as 
	declare @status int,@tid bigint
	set @status = 0--默认删除完成
begin
	if(@TopicId is null or @TopicId < 0)
		begin
			set @status = -1;				
		end	
	else
		begin
			set @tid =(select TopicId from dbo.Topic where TopicId =@TopicId)
			if(@tid is null)
				return -1901--表示话题不存在
			begin try
				begin tran deTopic					
					-- 分享
						-- 图片库
						delete from ImageLibrary where RefId = @TopicId
						delete from ImageLibrary where RefId in (select CommentID from Comment where TopicId = @TopicId)
						-- 加分
							-- 话题的回复加的分
							delete from UserInKudo where RefId in (select CommentId from Comment where TopicId = @TopicId) and RefType = 11
							if(@@ERROR <> 0)
								set @status = -301;
							delete from Kudo where RefId in (select CommentId from Comment where TopicId = @TopicId) and RefType = 11
							if(@@ERROR <> 0)
								set @status = -302;							
							-- 话题被加的分
							delete from UserInKudo where RefId = @TopicId and RefType = 1
							if(@@ERROR <> 0)
								set @status = -303;
							delete from Kudo where RefId = @TopicId and RefType = 1
							if(@@ERROR <> 0)
								set @status = -304;
						-- 资源
							-- 话题的回复的资源
							delete from UploadResource where RefId in (select CommentId from Comment where TopicId = @TopicId) and RefType = 2							
							if(@@ERROR <> 0)
								set @status = -305;						
							-- 话题的资源
							delete from UploadResource where RefId = @TopicId and RefType = 1							
							if(@@ERROR <> 0)
								set @status = -306;
						-- 统计
							-- 用户参与话题统计
								-- 话题的用户参与统计
								delete from Stat_Topic_Detail_User where TopicId = @TopicId
								if(@@ERROR <> 0)
								set @status = -307;							
							-- 话题统计	
							delete from Stat_Topic where TopicId = @TopicId
							if(@@ERROR <> 0)
								set @status = -308;							
						-- 项目内容
							-- 首先调整序号（大排序）
							declare @pjid bigint,@maxOederid int,@orderid int -- 定义要删除的话题的序号
																																									
							--取得最大序号
							set @pjid = (select pjid from Topic where TopicId = @TopicId)
							set @maxOederid = (select Top(1)RefOrderId from ProjectOrder where PjId = @pjid order by RefOrderId desc)
							set @orderid = (select RefOrderId from ProjectOrder where RefId = @TopicId)
							if(@orderid = 1)-- 序号正好是第一个
							begin 	
								update UserInProjectOrder set RefOrderId = (RefOrderId -1) where PjId = @pjid
								update ProjectOrder set RefOrderId = (RefOrderId -1) where PjId = @pjid
							end    
							else if(@orderid < @maxOederid and @orderid > 1)-- 中间									
							begin
								update UserInProjectOrder set RefOrderId = (RefOrderId-1)where PjId = @pjid and RefOrderId > @orderid
								update ProjectOrder set RefOrderId = (RefOrderId-1)where PjId = @pjid and RefOrderId > @orderid
							end									
							-- 用户参与话题的记录
							delete from UserInProjectOrder where RefId = @TopicId and RefType = 1
							if(@@ERROR <> 0)
								set @status = -309;
							-- 用户分配话题记录
							delete from UserInProjectDetail where RefId = @TopicId and RefType = 1
							if(@@ERROR <> 0)
								set @status = -310;
							-- 项目内容																																	
							delete from ProjectOrder where RefId = @TopicId and RefType = 1																						  																			
							if(@@ERROR <> 0)
								set @status = -311;
						-- 回复
							-- 话题的回复
							delete from Comment where TopicId = @TopicId
							if(@@ERROR <> 0)
								set @status = -312;	
					    -- 标签
					       delete from Tag where RefId=@TopicId	
					       if(@@ERROR <> 0)
								set @status = -316;	
						--SectionRelation
						  delete from SectionRelated where ChildId=	@TopicId and ChildType = 1
						  if(@@ERROR <> 0)
								set @status = -314;	
						--CategoryRelated
							delete from CategoryRelated where ChildId=@TopicId and ChildType=1
							if(@@ERROR <> 0)
								set @status = -315;	
						-- 本身	
							--话题
							delete from Topic where TopicId = @TopicId
							if(@@ERROR <> 0)
								set @status = -313;						
				commit tran deTopic
			end try	
			begin catch
				rollback tran deTopic
			end catch
		end	
	return @status		
end
GO
/****** Object:  StoredProcedure [dbo].[deleteSurveySp]    Script Date: 06/11/2012 13:34:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deleteSurveySp]
(
	@SurveyId bigint
)
as 
	declare @surveyType int, @currentOrderid int,@maxOrder int,@pjid bigint
begin  
	if exists(select * from Survey where SurveyId = @SurveyId)
	begin
		set @pjid = (select PjId from Survey where SurveyId = @SurveyId)
		set @surveyType = (select SurveyType from Survey where SurveyId = @SurveyId)
		set @currentOrderid = (select OrderId from Survey where SurveyId = @SurveyId)
		set @maxOrder = (select max(OrderId) from Survey where PjId = @pjid)
		if(@surveyType = 0)--外部题
		begin--删除私有链接
			delete from SurveyQuestionPrivateLinks where SurveyId = @SurveyId			
		end
		else--内部题
		begin
			--问卷
			declare @SurveyQuestionId bigint = 0;			
			declare GetSurveyQuestionId cursor for select SurveyQuestionId from SurveyQuestion where SurveyId = @SurveyId
			open GetSurveyQuestionId

			fetch next from GetSurveyQuestionId into @SurveyQuestionId							
			while(@@FETCH_STATUS = 0 and @SurveyQuestionId > 0)
			begin										
				execute dbo.deleteSurveyQuestionSp @SurveyQuestionId
				fetch next from GetSurveyQuestionId into @SurveyQuestionId
			end	
			close GetSurveyQuestionId
			deallocate GetSurveyQuestionId
		end
		--SurveyQuestionPrivateLinks
		delete from SurveyQuestionPrivateLinks where SurveyId = @SurveyId
		
		--2013-12-9新增，删除表Sampling、SamplingAllRespondent、SamplingRespondent、Quota、QuotaGroup、QuotaDetail、QuotaGroupDetail中的相关内容
		--SamplingAllRespondent
		delete from SamplingAllRespondent where SurveyId = @SurveyId
		--SamplingRespondent
		delete from SamplingRespondent where SurveyId = @SurveyId
		--Sampling
		declare @SamplingId bigint =0;
		declare GetSamplingId cursor for select SamplingId from Sampling where SurveyId = @SurveyId
		open GetSamplingId
		fetch next from GetSamplingId into @SamplingId
		while(@@FETCH_STATUS = 0 and @SamplingId > 0)
		begin
			--QuotaGroupDetail
			delete from QuotaGroupDetail where QuotaId in (select QuotaId from Quota where SamplingId=@SamplingId)
			--QuotaGroup
			delete from QuotaGroup where QuotaId in (select QuotaId from Quota where SamplingId=@SamplingId)
			--QuotaDetail
			delete from QuotaDetail where SamplingId=@SamplingId
			--Quota
			delete from Quota where SamplingId=@SamplingId
			--Sampling
			delete from Sampling where SamplingId=@SamplingId
			fetch next from GetSamplingId into @SamplingId
		end
		close GetSamplingId
		deallocate GetSamplingId		
		--2013-12-9新增 End
		
		-- 项目内容
		delete from ProjectOrder where PjId = @pjid and RefId = @SurveyId and RefType = 3
		-- 划分权限
		delete from UserInProjectDetail where PjId = @pjid and RefId = @SurveyId and RefType = 3
		-- 参与记录
		delete from UserInProjectOrder where PjId = @pjid and RefId = @SurveyId and RefType = 3
		-- 和Section的关系
		delete from SectionRelated where ChildId = @SurveyId and ChildType = 4
		-- 删除排序(不做排序了)
		--if(@currentOrderid < @maxOrder)
		--begin
			--update Survey set OrderId = OrderId-1 where PjId = @pjid and OrderId > @currentOrderid
		--end
		--CategoryRelated
		delete from CategoryRelated where ChildId=@SurveyId and ChildType=5
		-- 删除本身
		delete from Survey where SurveyId = @SurveyId
	end
end
GO
/****** Object:  StoredProcedure [dbo].[deleteProjectSp]    Script Date: 06/11/2012 13:34:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deleteProjectSp]
(
	@PjId bigint
)
as 
	declare @status int,@pid bigint
	set @status = 0--默认删除完成
begin
	if(@PjId is null or @PjId < 0)
		begin
			set @status = -1;				
		end	
	else
		begin
			set @pid =(select pjid from dbo.Project where PjId =@PjId)
			if(@pid is null)
				return -1901--表示项目不存在
			begin try
				begin tran deproject
					-- 项目话题删除
							-- 加分
								-- 回复加的分								
								delete from UserInKudo where RefId in (select CommentId from Comment where TopicId in (select TopicId from Topic where PjId = @PjId)) and RefType = 11							
								if(@@ERROR <> 0)
									set @status = -1001;							
								delete from Kudo where RefId in (select CommentId from Comment where TopicId in (select TopicId from Topic where PjId = @PjId)) and RefType = 11													
								if(@@ERROR <> 0)
									set @status = -1002;							
								--话题被加的分
								delete from UserInKudo where RefId in (select TopicId from Topic where PjId = @PjId) and RefType = 1						
								if(@@ERROR <> 0)
									set @status = -1003;							
								delete from Kudo where RefId in (select TopicId from Topic where PjId = @PjId) and RefType = 1
								if(@@ERROR <> 0)
									set @status = -1004;						
							-- 资源
								-- 话题的回复的资源
								delete from UploadResource where RefId in (select CommentId from Comment where TopicId in (select TopicId from Topic where PjId = @PjId)) and RefType = 2							
								if(@@ERROR <> 0)
									set @status = -1005;																
								-- 话题的资源
								delete from UploadResource where RefId in (select TopicId from Topic where PjId = @PjId) and RefType = 1							
								if(@@ERROR <> 0)
									set @status = -1006;							
							-- 统计
								-- 用户参与话题统计
									-- 用户创建的话题的用户参与统计
									delete from Stat_Topic_Detail_User where TopicId in (select TopicId from Topic where PjId = @PjId)																									
									if(@@ERROR <> 0)
										set @status = -1007;								
								-- 话题统计	
								delete from Stat_Topic where TopicId in (select TopicId from Topic where PjId = @PjId)
								if(@@ERROR <> 0)									
									set @status = -1008;															
							-- 回复
								-- 创建话题的回复
								delete from Comment where TopicId in (select TopicId from Topic where PjId = @PjId)													
								if(@@ERROR <> 0)
									set @status = -1009;					
							-- 本身	
								--创建的话题
								delete from Topic where PjId = @PjId
								if(@@ERROR <> 0)
									set @status = -1010;							
						-- 项目的创意删除
							-- 加分
								--项目的创意内容的评论的加分
								delete from UserInKudo where RefId in (select CoCommentId from CoComment where CoCreationDataId in (select CoCreationDataId from CoCreationData where CoCreationId in (select CoCreationId from CoCreation where PjId = @PjId))) and RefType = 22							
								if(@@ERROR <> 0)
									set @status = -1011;
								delete from Kudo where RefId in (select CoCommentId from CoComment where CoCreationDataId in (select CoCreationDataId from CoCreationData where CoCreationId in (select CoCreationId from CoCreation where PjId = @PjId))) and RefType = 22		
								if(@@ERROR <> 0)
									set @status = -1012;							
								--项目的创意内容的评分
								delete from UserInKudo where RefId in (select CoCreationDataId from CoCreationData where CoCreationId in (select CoCreationId from CoCreation where PjId = @PjId)) and RefType = 21							 							
								if(@@ERROR <> 0)
									set @status = -1013;							
								delete from Kudo where RefId in (select CoCreationDataId from CoCreationData where CoCreationId in (select CoCreationId from CoCreation where PjId = @PjId)) and RefType = 21
								if(@@ERROR <> 0)
									set @status = -1014;							
								--项目的创意的评分
								delete from UserInKudo where RefId in (select CoCreationId from CoCreation where PjId = @PjId) and RefType = 2							
								if(@@ERROR <> 0)
									set @status = -1015;							
								delete from Kudo where RefId in (select CoCreationId from CoCreation where PjId = @PjId) and RefType = 2
								if(@@ERROR <> 0)
									set @status = -1016;														
							-- 创意内容评论
								-- 项目的创意制作内容的评论
								delete from CoComment where CoCreationDataId in (select CoCreationDataId from CoCreationData where CoCreationId in (select CoCreationid from CoCreation where PjId = @PjId))															
								if(@@ERROR <> 0)
									set @status = -1017;							
							-- 创意内容
								-- 项目创意的制作的创意内容
								delete from CoCreationData where CoCreationId in (select CoCreationId from CoCreation where PjId = @PjId)													
								if(@@ERROR <> 0)
									set @status = -1018;								
							-- 创意层级元素
								-- 项目创意的层级元素
								delete from CoCreationElement where CoCreationId in (select CoCreationId from CoCreation where PjId = @PjId)
								if(@@ERROR <> 0)
									set @status = -1019;							
							-- 创意层级
								-- 项目创意的层级
								delete from CoCreationLayer where CoCreationId in (select CoCreationId from CoCreation where PjId = @PjId)
								if(@@ERROR <> 0)
									set @status = -1020;										
							-- 创意本身
								-- 项目的创意
								delete from CoCreation where PjId = @PjId
								if(@@ERROR <> 0)
									set @status = -1021;							
						-- 项目的答题的删除
							-- 问题答案
								-- 问题的答案
								delete from SurveyData where SurveyQuestionId in (select SurveyQuestionId from SurveyQuestion where PjId = @PjId)
								if(@@ERROR <> 0)
									set @status = -1022;																			
							-- 问题资源
							
								-- 问题的所有选项资源
								delete from SurveyResource where RefId in (select SurveyOptionId from SurveyOption where SurveyQuestionId in (select SurveyQuestionId from SurveyQuestion where PjId = @PjId)) and RefType = 3
								if(@@ERROR <> 0)
									set @status = -1023;							
								-- 问题的所有子题的资源
								delete from SurveyResource where RefId in (select SurveySubId from SurveySub where SurveyQuestionId in (select SurveyQuestionId from SurveyQuestion where PjId = @PjId)) and RefType = 2
								if(@@ERROR <> 0)
									set @status = -1024;								
								-- 问题的资源
								delete from SurveyResource where RefId in (select SurveyQuestionId from SurveyQuestion where PjId = @PjId) and RefType = 1
								if(@@ERROR <> 0)
									set @status = -1025;														
							-- 问题子题							
								delete from SurveySub where SurveyQuestionId in (select SurveyQuestionId from SurveyQuestion where PjId = @PjId)						
								if(@@ERROR <> 0)
									set @status = -1026;							
							-- 问题选项							
								delete from SurveyOption where SurveyQuestionId in (select SurveyQuestionId from SurveyQuestion where PjId = @PjId)						
								if(@@ERROR <> 0)
									set @status = -1027;	
									
							--SurveyOutQuestionProperty 2012-8-28
								delete from SurveyOutQuestionProperty where SurveyQuestionId in (select SurveyQuestionId from SurveyQuestion where PjId = @PjId)	
								if(@@ERROR <> 0)
									set @status = -1045;							
																			
							-- 问题本身							
								delete from SurveyQuestion where PjId = @PjId
								if(@@ERROR <> 0)
									set @status = -1028;								
						-- 项目的用户的删除
						delete from UserInCommunityProject where PjId = @PjId
						if(@@ERROR <> 0)
							set @status = -1029;						
						-- 用户参与项目内容记录
						delete from UserInProjectOrder where PjId = @PjId
						if(@@ERROR <> 0)
							set @status = -1030;								
						-- 用户分配项目内容记录
						delete from UserInProjectDetail where PjId = @PjId
						if(@@ERROR <> 0)
							set @status = -1031;								
						-- 项目内容排序记录
						delete from ProjectOrder where PjId = @PjId	
						if(@@ERROR <> 0)
							set @status = -1032;
							
						--2012-8-22新增 Begin
						
						--项目的板块的删除
							-- 帖子回复
							delete from Post where ThreadId in (select ThreadId from Thread where BoardId in(select BoardId from Board where PjId = @PjId))
							if(@@ERROR <> 0)
								set @status = -1043;					
							-- 帖子
							delete from Thread where BoardId in(select BoardId from Board where PjId = @PjId)
							if(@@ERROR <> 0)
								set @status = -1034;
							--板块
							delete from Board where PjId = @PjId
							if(@@ERROR <> 0)
								set @status = -1035;
								
						--项目的Category
							--CategoryRelated
							delete from CategoryRelated where PjId=@PjId
							if(@@ERROR <> 0)
								set @status = -1036;
							--Category
							delete from Category where PjId=@PjId
							if(@@ERROR <> 0)
								set @status = -1037;
						
						--项目下的媒体库
						delete from ImageLibrary where PjId=@pid
							if(@@ERROR <> 0)
								set @status = -1038;
						
						
						--项目下的HomeWork
							--BlogComment
							delete from BlogComment where BlogId in (select BlogId from Blog where HwId in (select HwId from HomeWork where PjId=@PjId))
							if(@@ERROR <> 0)
								set @status = -1039;
							--Blog
							delete from Blog where HwId in (select HwId from HomeWork where PjId=@PjId)
							if(@@ERROR <> 0)
								set @status = -1040;
							--HomeWork
							delete from HomeWork where PjId=@PjId
							if(@@ERROR <> 0)
								set @status = -1041;
							
						--DeployRole
						delete from DeployRole where PjId=@PjId
							if(@@ERROR <> 0)
								set @status = -1042;
								
						--2012-8-22新增 End
						
						-- 项目下的统计信息
							-- 话题统计
							delete from Stat_Topic where PjId = @PjId
							-- 用户统计
							delete from Stat_User where PjId = @PjId
						--删除项目内容和Section的关系
						delete from SectionRelated where ParentId in (select SectionId From Section where PjId = @PjId)
						delete from SectionRelated where ParentId = @PjId														
						--项目下Section
							delete from SectionRelated 
							where ParentId in(
								  select SectionId from Section where PjId=@PjId)
						   select SectionId from Section where PjId=@PjId
						   delete from Section where PjId=@PjId
						
						--UploadResource 2012-8-28
						delete from UploadResource where PjId=@PjId
						if(@@ERROR <> 0)
							set @status = -1044;	
						
						-- 项目本身删除
						delete from Project where PjId = @PjId
						if(@@ERROR <> 0)
							set @status = -1033;						
				commit tran deproject
			end try
			begin catch
				rollback tran deproject
			end catch						
		end	
	return @status			
end
GO

/****** Object:  StoredProcedure [dbo].[Exe_Sp]    Script Date: 06/11/2012 13:34:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Exe_Sp]
as 
begin
-- 日志上码规则，

--10 开头时间
--1001 开始执行跑统计数据操作
--1002 开始执行用户统计数据
--1003 开始执行话题数据统计
--1004 开始执行聊天室数据统计
--1005 开始执行用户参与话题数据统计
--1006 开始执行用户参与聊天室数据统计
--1007 结束执行跑统计数据操作
--1008 结束执行用户统计数据
--1009 结束执行话题数据统计
--1010 结束执行聊天室数据统计
--1011 结束执行用户参与话题数据统计
--1012 结束执行用户参与聊天室数据统计

--11 开头是用户
--1101 在用户统计表里插入了基本数据
--1102 在用户统计表里修改了最后回复时间
--1103 在用户统计表里修改了总共回复次数
--1104 在用户统计表里修改了没有参与话题的个数
--1105 在用户统计表里修改了用户话题的总个数
--1106 在用户统计表里全部数据插入完成

-- 12 开头是话题
-- 1201 向话题统计表插入基本数据
-- 1202 向话题统计表插入参与该话题的总用户数
-- 1203 向话题统计表插入该话题所在项目的已完成项目内容用户数
-- 1204 向话题统计表插入该话题所在项目的总用户数
-- 1205 向话题统计表插入数据完成

-- 13 开头是聊天室
-- 1301 向聊天室统计表中插入基本数据完成
-- 1302 向聊天室统计表中插入每个聊天室的总用户数
-- 1303 向聊天室统计表中插入每个聊天室的总发言人数
-- 1304 向聊天室统计表中插入每个聊天室的总的聊天记录数
-- 1305 向聊天室统计表中插入每个聊天室的总私聊记录数
-- 1306 向聊天室统计表中插入计算数据完成
-- 1307 向聊天室统计表中插入全部数据已完成

-- 14 开头是用户参与话题
-- 1401 向用户参与话题的统计表中插入基本数据完成
-- 1402 向用户参与话题的统计表中插入用户在该话题中总计评论次数
-- 1403 向用户参与话题的统计表中插入数据全部完成

-- 15 开头是用户参与聊天
-- 1501 向用户参与聊天室情况统计表中插入基本数据完成
-- 1502 向用户参与聊天室情况统计表中插入该用户在该聊天室内总计发言数完成
-- 1503 向用户参与聊天室情况统计表中插入用户在该聊天室内总计私聊数完成
-- 1504 向用户参与聊天室情况统计表中插入插入了计算数据完成
-- 1505 向用户参与聊天室情况统计表中插入全部数据已完成 

insert into Stat_Log(LogId,Content,DateCreated) 
values 
(NEWID(),'1001--开始执行跑统计数据操作:'+Convert(nvarchar(24),GETDATE(),120),GETDATE());

-- 用户
insert into Stat_Log(LogId,Content,DateCreated) 
values 
(NEWID(),'1002--开始执行用户统计数据:'+Convert(nvarchar(24),GETDATE(),120),GETDATE());
execute  dbo.stat_User_Logic -------------------------------------------------------------------
insert into Stat_Log(LogId,Content,DateCreated)
 values 
 (NEWID(),'1008--结束执行用户统计数据:'+Convert(nvarchar(24),GETDATE(),120),GETDATE());

-- 话题
insert into Stat_Log(LogId,Content,DateCreated) 
values 
(NEWID(),'1003--开始执行话题数据统计:'+Convert(nvarchar(24),GETDATE(),120),GETDATE());

execute dbo.stat_Topic_Logic ------------------------------------------------------------------

insert into Stat_Log(LogId,Content,DateCreated) 
values 
(NEWID(),'1009--结束执行话题数据统计:'+Convert(nvarchar(24),GETDATE(),120),GETDATE());

-- 用户参与话题
insert into Stat_Log(LogId,Content,DateCreated) 
values 
(NEWID(),'1005--开始执行用户参与话题数据统计:'+Convert(nvarchar(24),GETDATE(),120),GETDATE());

execute dbo.Stat_Topic_Detail_User_logic -------------------------------------------------------

insert into Stat_Log(LogId,Content,DateCreated) 
values 
(NEWID(),'1011--结束执行用户参与话题数据统计:'+Convert(nvarchar(24),GETDATE(),120),GETDATE());

-- 聊天室
insert into Stat_Log(LogId,Content,DateCreated) 
values 
(NEWID(),'1004--开始执行聊天室数据统计:'+Convert(nvarchar(24),GETDATE(),120),GETDATE());

execute dbo.Stat_Chat_Logic

insert into Stat_Log(LogId,Content,DateCreated) 
values 
(NEWID(),'1010--结束执行聊天室数据统计:'+Convert(nvarchar(24),GETDATE(),120),GETDATE());

-- 用户参与聊天室
insert into Stat_Log(LogId,Content,DateCreated) 
values 
(NEWID(),'1006--开始执行用户参与聊天室数据统计:'+Convert(nvarchar(24),GETDATE(),120),GETDATE());

execute dbo.Stat_Chat_Detail_User_Logic

insert into Stat_Log(LogId,Content,DateCreated) 
values 
(NEWID(),'1012--结束执行用户参与聊天室数据统计:'+Convert(nvarchar(24),GETDATE(),120),GETDATE());

end
GO
/****** Object:  StoredProcedure [dbo].[deleteBoardSp]    Script Date: 06/15/2012 14:54:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[deleteBoardSp]
(
	@boardId bigint
)
as
begin

	-- 图片库
	delete from ImageLibrary where RefId in (select ThreadId from Thread where BoardId = @boardId)
	delete from ImageLibrary where RefId in (select PostId from Post where ThreadId in (select ThreadId from Thread where BoardId = @boardId))
	-- 用户加分
	delete from UserInKudo where RefId in (select PostId from Post where ThreadId in (select ThreadId from Thread where BoardId = @boardId)) and RefType = 41
	delete from UserInKudo where RefId in (select ThreadId from Thread where BoardId = @boardId) and RefType = 4
	-- 加分
	delete from Kudo where RefId in (select PostId from Post where ThreadId in (select ThreadId from Thread where BoardId = @boardId)) and RefType = 41
	delete from Kudo where RefId in (select ThreadId from Thread where BoardId = @boardId) and RefType = 4
	-- 帖子回复
	delete from Post where ThreadId in (select ThreadId from Thread where BoardId = @boardId)
	-- 帖子
	delete from Thread where BoardId = @boardId	
	-- 划分权限关系
	delete from UserInProjectDetail where RefId = @boardId
	-- 大排序用户参与记录
	delete from UserInProjectOrder where RefId = @boardId
	-- 项目内容
	delete from ProjectOrder where RefId = @boardId
	--CategoryRelated
	delete from CategoryRelated where ChildId=@boardId and ChildType=3
	-- Board
	delete from Board where BoardId = @boardId
end
GO
/****** Object:  StoredProcedure [dbo].[bultDeleteUserSp]    Script Date: 10/08/2012 10:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[bultDeleteUserSp]
(
	@UserPassportIdList nvarchar(500)
)
as 
	declare @UserPassportId bigint
	declare @curr int
	declare @prev int
begin
	set @curr=1
	set @prev=1
	while  @prev < len(@UserPassportIdList)
	begin
		set @curr=charindex(',',@UserPassportIdList,@prev)
		if @curr>@prev
			set @UserPassportId=substring(@UserPassportIdList,@prev,@curr-@prev)
		else
		begin
			set @UserPassportId=substring(@UserPassportIdList,@prev,len(@UserPassportIdList)-@prev+1)
			--print @UserPassportId
			execute dbo.deleteUserSp @UserPassportId
			break
		end
		set @prev=@curr+1
		--print @UserPassportId
		execute dbo.deleteUserSp @UserPassportId
	end
end
GO

-------------------------2013-1-30-----------------------------------
GO
/****** Object:  StoredProcedure [dbo].[createUserProfileView]    Script Date: 01/21/2013 16:03:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**********创建存储过程,用于生成FilterView*********************************************/

 CREATE proc [dbo].[createUserProfileView]

as
begin
	declare @sql varchar(max),
	@columns varchar(2000)
	--select @columns=isnull(@columns+',','')+[Name]+cast(p.ProfileId as VARCHAR(18)) from UserProfile up
	--	 left join [Profile] p on up.ProfileId = p.ProfileId 
	select @columns=isnull(@columns+',','')+ Code from [Profile]
	
	if exists(select * from sysobjects where name='view_userProfile')
	  drop view view_userProfile;
	  
	  set @sql='
	 create view view_userProfile
	as
	select up.UserPassportId,r.*,u.UserName,u.RealName,u.Email,u.Gender,u.Birthday,u.ProvinceId,u.CityId,up.PjId
	from(select up.UserPassportId as uid,up.Value,p.Code from UserProfile up
		 left join Profile p on up.ProfileId = p.ProfileId) as upro
	Pivot(
		max(upro.Value) for upro.Code IN
		('+@columns+')) as r
		right join UserInCommunityProject up on r.uid=up.UserPassportId
		left join UserPassport u on up.UserPassportId=u.UserPassportId
		
		'
		exec (@sql)
	
end
	
	GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[createUserProfileView]

SELECT	'Return Value' = @return_value



GO
/****** Object:  StoredProcedure [dbo].[createUserProfileView]    Script Date: 01/23/2013 15:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**********创建存储过程,用于生成FilterView*********************************************/

 CREATE proc [dbo].[createUserProfileView_NOPJID]

as
begin
	declare @sql varchar(max),
	@columns varchar(2000)
	--select @columns=isnull(@columns+',','')+[Name]+cast(p.ProfileId as VARCHAR(18)) from UserProfile up
	--	 left join [Profile] p on up.ProfileId = p.ProfileId 
	select @columns=isnull(@columns+',','')+ Code from [Profile]
	
	if exists(select * from sysobjects where name='view_userProfile_NOPJID')
	  drop view view_userProfile_NOPJID;
	  
	 set @sql='
	 create view view_userProfile_NOPJID
	as
	select u.UserPassportId,r.*,u.UserName,u.RealName,u.Email,u.Gender,u.Birthday,u.ProvinceId,u.CityId
	from(select up.UserPassportId as uid,up.Value,p.Code from UserProfile up
		 left join Profile p on up.ProfileId = p.ProfileId) as upro
	Pivot(
		max(upro.Value) for upro.Code IN
		('+@columns+')) as r
		right join UserPassport u on r.uid=u.UserPassportId
		'
		exec (@sql)
	
end
	
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[createUserProfileView_NOPJID]

SELECT	'Return Value' = @return_value

GO


/****** Object:  StoredProcedure [dbo].[proc_userActivity]    Script Date: 04/22/2013 17:30:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_userActivity]
	-- Add the parameters for the stored procedure here
	@startTime Nvarchar(20) ='1900-01-01 00:00:00', @endTime Nvarchar(20)='9999-12-12 23:59:59'
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here   
		
select act.* into #AllUserActivity
from (
    select u.*,r.ViewBlog,r.ViewBlogComment,r.ViewCoCreateData,r.ViewCoCreateDataComment,r.ViewPost,r.ViewThread,r.ViewTopic,r.ViewTopicComment
,r.WriteBlog,r.WriteBlogComment,r.WriteCoCreateData,r.WriteCoCreateDataComment,r.WritePost,r.WriteThread,r.WriteTopic,r.WriteTopicComment
,r2.TotalView,r2.TotalWrite,r3.totalOnline from UserPassport u 
left Join
(select r.* from  
(select UserPassportId,ISNULL(SUM(ReftCount),0) as num,
Case
 When OptionType=1 and RefType=1 then 'WriteTopic'
 When OptionType=1 and RefType=11 then 'WriteTopicComment' 
  When OptionType=1 and RefType=21 then 'WriteCoCreateData'
 When OptionType=1 and RefType=22 then 'WriteCoCreateDataComment' 
   When OptionType=1 and RefType=4 then 'WriteThread'
 When OptionType=1 and RefType=41 then 'WritePost'
 When OptionType=1 and RefType=5 then 'WriteBlog'
 When OptionType=1 and RefType=51 then 'WriteBlogComment'
 When OptionType=2 and RefType=1 then 'ViewTopic'
 When OptionType=2 and RefType=11 then 'ViewTopicComment' 
  When OptionType=2 and RefType=21 then 'ViewCoCreateData'
 When OptionType=2 and RefType=22 then 'ViewCoCreateDataComment' 
   When OptionType=2 and RefType=4 then 'ViewThread'
 When OptionType=2 and RefType=41 then 'ViewPost' 
 When OptionType=2 and RefType=5 then 'ViewBlog' 
 When OptionType=2 and RefType=51 then 'ViewBlogComment' 
 Else 'E' end as testBaseLevel
 from UserAcitivity
 where DateCreated>@startTime and DateCreated <@endTime
group by UserPassportId,OptionType,RefType) as t  
pivot  
(  
max(t.num)  
for t.testBaseLevel in (WriteTopic,WriteTopicComment,WriteCoCreateData,WriteCoCreateDataComment,WriteThread,WritePost,WriteBlog,WriteBlogComment
    ,ViewTopic,ViewTopicComment,ViewCoCreateData,ViewCoCreateDataComment,ViewThread,ViewBlog,ViewPost,ViewBlogComment)
) as r) as r on r.UserPassportId =u.UserPassportId
left join(
select r2.* from  
(select UserPassportId,ISNULL(SUM(ReftCount),0) as num,
Case
 When OptionType=1 then 'TotalWrite'
 When OptionType=2 then 'TotalView' 
 Else 'E' end as testBaseLevel
 from UserAcitivity
 where DateCreated>@startTime and DateCreated <@endTime
group by UserPassportId,OptionType) as t  
pivot  
(  
max(t.num)  
for t.testBaseLevel in (TotalWrite,TotalView)
) as r2) as r2 on u.UserPassportId = r2.UserPassportId
Left JOIN (
select UserPassportId, SUM(TotalMinute) as totalOnline
from dbo.UserLogin
 where DateCreate>@startTime and DateCreate <@endTime --2014-12-29 修改BUG
group by UserPassportId)as r3 on u.UserPassportId =r3.UserPassportId) as act

SELECT UserPassportId,UserName,Email,DateCreated,LastLogin,LoginCount,TotalView,totalOnline,RealName,TotalWrite
,WriteTopicComment,WriteBlog,WriteBlogComment,WriteThread,WritePost,WriteCoCreateData,WriteCoCreateDataComment
,isnull(ViewThread,0)+isnull(ViewBlog,0)+isnull(ViewTopic,0)+isnull(ViewCoCreateData,0) as 'ViewPage',ViewThread,ViewBlog,ViewTopic,ViewCoCreateData
from #AllUserActivity

drop table #AllUserActivity
END

GO

-------------------------2013-1-30 End-----------------------------------


-------------------------2013-7-18 Begin-----------------------------------

/****** Object:  StoredProcedure [dbo].[AllUserAnswer_IsUserInProjectDetail]    Script Date: 06/19/2013 18:48:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	获取分权限的项目的用户答题状况
-- =============================================
CREATE PROCEDURE [dbo].[AllUserAnswer_IsUserInProjectDetail]
	-- Add the parameters for the stored procedure here
	@Pjid bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    
	select act.* into #AllUserAnswer from (
	select tt.PjId,tt.unFinishedTopic,tt.unFinishedCoCreation,tt.unFinishedHomeWork ,u.* from(
	select * from(
	select UserPassportId,PjId,ISNULL(sum(
	case 
	when num<1 then 1
	else 0 end
	),0) as ccount,
	case 
	when RefType=1 then 'unFinishedTopic'
	when RefType=2 then 'unFinishedCoCreation'
	when RefType=4 then 'unFinishedHomeWork'
	else 'E' end as ttitle
	 from (
	select t.UserPassportId,t.PjId,t.RefId,RefType,COUNT(ReftCount) as num,
	case 
	when RefType=1 then 'TopicCommentCount'
	when RefType=2 then 'CoCreationDataCount'
	when RefType=4 then 'BlogCount'
	else 'E' end as ccount
	 from(
	select ucp.UserPassportId,ucp.PjId,po.RefId,po.RefType,ua.RefType as subRefType,ua.ReftCount from UserInCommunityProject ucp left join UserInProjectDetail po on ucp.PjId=po.PjId and ucp.UserPassportId=po.UserPassportId 
	left join UserAcitivity ua on ucp.UserPassportId=ua.UserPassportId and po.RefId=(
	case po.RefType
	when 1 then (select TopicId from Comment where CommentId=ua.RefId)
	when 2 then (select CoCreationId from CoCreationData where CoCreationDataId=ua.RefId)
	when 4 then (select HwId from Blog where BlogId=ua.RefId)
	else 0 end) where ua.OptionType=1 or ua.OptionType is null
	) t group by t.UserPassportId,t.PjId,RefType,RefId) t2 group by UserPassportId,PjId,RefType )t3
	Pivot (
	sum(ccount)
	FOR ttitle IN
	(unFinishedTopic, unFinishedCoCreation,unFinishedHomeWork)) tt) as tt left join UserPassport u on tt.UserPassportId=u.UserPassportId ) as act
	
	
select uut.* into #UserTotalAnswer from (
select * from (
	select au.UserPassportId,au.PjId,ISNULL(COUNT(RefType),0) num,
	case 
	when RefType=1 then 'TotalTopic'
	when RefType=2 then 'TotalCoCreation'
	when RefType=4 then 'TotalHomeWork'
	else 'E' end as ttitle
	 from #AllUserAnswer au left join UserInProjectDetail up on au.UserPassportId=up.UserPassportId and au.PjId=up.PjId group by au.UserPassportId,au.PjId,up.RefType) t
	pivot
	(
	sum(num)
	for ttitle in (TotalTopic,TotalCoCreation,TotalHomeWork)) tt) as uut
	
select au.UserPassportId,au.PjId,ut.PjId,UserName,ISNUll(unFinishedTopic,0) unFinishedTopic,ISNUll(TotalTopic,0) TotalTopic,ISNUll(unFinishedCoCreation,0) unFinishedCoCreation,ISNUll(TotalCoCreation,0) TotalCoCreation,ISNUll(unFinishedHomeWork,0) unFinishedHomeWork,ISNUll(TotalHomeWork,0) TotalHomeWork from #AllUserAnswer au left join #UserTotalAnswer ut on au.UserPassportId=ut.UserPassportId and au.PjId=ut.PjId where au.PjId=@Pjid


	drop table #UserTotalAnswer
	drop table #AllUserAnswer
END

GO

/****** Object:  StoredProcedure [dbo].[AllUserAnswer_not_IsUserInProjectDetail]    Script Date: 06/19/2013 18:49:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	获取不分权限的项目的用户答题状况
-- =============================================
CREATE PROCEDURE [dbo].[AllUserAnswer_not_IsUserInProjectDetail]
	-- Add the parameters for the stored procedure here
	@Pjid bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    
	select act.* into #AllUserAnswer from (
	select tt.PjId,tt.FinishedTopic,tt.FinishedCoCreation,tt.FinishedHomeWork ,u.* from(
	select * from(
	select UserPassportId,PjId,sum(
	case 
	when num>0 then 1
	else 0 end
	) as ccount,
	case 
	when RefType=1 then 'FinishedTopic'
	when RefType=2 then 'FinishedCoCreation'
	when RefType=4 then 'FinishedHomeWork'
	else 'E' end as ttitle
	 from (
	select t.UserPassportId,t.PjId,t.RefId,RefType,COUNT(ReftCount) as num,
	case 
	when RefType=1 then 'TopicCommentCount'
	when RefType=2 then 'CoCreationDataCount'
	when RefType=4 then 'BlogCount'
	else 'E' end as ccount
	 from(
	select ucp.UserPassportId,ucp.PjId,po.RefId,po.RefType,ua.RefType as subRefType,ua.ReftCount from UserInCommunityProject ucp left join ProjectOrder po on ucp.PjId=po.PjId left join UserAcitivity ua on ucp.UserPassportId=ua.UserPassportId and po.RefId=(
	case po.RefType
	when 1 then (select TopicId from Comment where CommentId=ua.RefId)
	when 2 then (select CoCreationId from CoCreationData where CoCreationDataId=ua.RefId)
	when 4 then (select HwId from Blog where BlogId=ua.RefId)
	else 0 end) where ua.OptionType=1 or ua.OptionType is null
	) t group by t.UserPassportId,t.PjId,RefType,RefId) t2 group by UserPassportId,PjId,RefType )t3
	Pivot (
	sum(ccount)
	FOR ttitle IN
	(FinishedTopic, FinishedCoCreation,FinishedHomeWork)) tt) as tt left join UserPassport u on tt.UserPassportId=u.UserPassportId ) as act

	declare @totalTopic int
	declare @totalCoCreation int
	declare @totalHomeWork int
	set @totalTopic=(select COUNT(*) from ProjectOrder where RefType=1 and PjId=@Pjid)
	set @totalCoCreation=(select COUNT(*) from ProjectOrder where RefType=2 and PjId=@Pjid)
	set @totalHomeWork=(select COUNT(*) from ProjectOrder where RefType=4 and PjId=@Pjid)

	select UserPassportId,UserName,(@totalTopic-FinishedTopic) as unFinishedTopic,@totalTopic as TotalTopic,(@totalCoCreation-FinishedCoCreation) as unFinishedCoCreation,@totalCoCreation as TotalCoCreation,(@totalHomeWork-FinishedHomeWork) as unFinishedHomeWork,@totalHomeWork as TotalHomeWork from #AllUserAnswer where PjId=@Pjid

	drop table #AllUserAnswer
END

GO



SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--[selectUserOwnUser_NewSp]
CREATE proc [dbo].[selectUserOwnUser_NewSp]
(
	@UserPassportId bigint,
	@CommunityId int,
	@Status int
)
as 
	declare @uid bigint,@utype int,@uincpType int,@ustatus int
begin
    -- 验证部分
	if(@UserPassportId < 0 or @UserPassportId is null)
		return;
	if(@CommunityId < 0 or @CommunityId is null)
		return;
	if(@Status is null)
		return;
	set @uid = (select UserPassportId from UserPassport where UserPassportId = @UserPassportId)			
	if(@uid is null)
		return;
	set @ustatus = (select [Status] from UserPassport where UserPassportId = @UserPassportId)	
	if(@ustatus = -2)
		return;	
	
	-- 正式执行部分
	set @utype = (select UserType from UserPassport where UserPassportId = @UserPassportId)	
	if(@utype >= 4)--系统和社区管理员
		begin
		if(@Status <> -2)
			begin
				SELECT UserPassportId,PersonalId,UserName,RealName,[Password],PasswordFormat,PasswordQuestion,PasswordAnswer,Email,Mobile,Tel,Gender,Birthday,Age,OccupationId,PersonalIncome,FamilyIncome,u.NationalityId,u.ProvinceId,u.CityId,[Address],PostCode,OtherSpecify1,OtherSpecify2,OtherSpecify3,OtherSpecify4,ImageIconId,ImageSrc,FromPlace,Kudos,KudosWeight,UserType,u.LanguageCode,DefaultTheme,CommunityId,IsProjectUser,Flag,[Status],LoginCount,LastLogin,LastUpdate,LastIp,LastHostName,LastUserAgent,DateCreated,TimeZone,Point,Education,MailValidated,MobileValidated,Cash,Credit,n.NationName,n.ProvinceName,n.CityName 
				FROM dbo.UserPassport u left join Nationality n on u.NationalityId=n.NationalityId and u.ProvinceId=n.ProvinceId and u.CityId=n.CityId and u.LanguageCode=n.LanguageCode 
				where CommunityId = @CommunityId and UserType <= @utype and [status] <> -2
			end	
		else
			begin	
				SELECT UserPassportId,PersonalId,UserName,RealName,[Password],PasswordFormat,PasswordQuestion,PasswordAnswer,Email,Mobile,Tel,Gender,Birthday,Age,OccupationId,PersonalIncome,FamilyIncome,u.NationalityId,u.ProvinceId,u.CityId,[Address],PostCode,OtherSpecify1,OtherSpecify2,OtherSpecify3,OtherSpecify4,ImageIconId,ImageSrc,FromPlace,Kudos,KudosWeight,UserType,u.LanguageCode,DefaultTheme,CommunityId,IsProjectUser,Flag,[Status],LoginCount,LastLogin,LastUpdate,LastIp,LastHostName,LastUserAgent,DateCreated,TimeZone,Point,Education,MailValidated,MobileValidated,Cash,Credit,n.NationName,n.ProvinceName,n.CityName  
				FROM dbo.UserPassport u left join Nationality n on u.NationalityId=n.NationalityId and u.ProvinceId=n.ProvinceId and u.CityId=n.CityId and u.LanguageCode=n.LanguageCode 
				where CommunityId = @CommunityId and UserType <= @utype and [status] = @Status		
			end
		end
	else -- 项目管理员
		begin
			if(@Status <> -2)
			begin
				SELECT distinct u.UserPassportId,u.PersonalId,u.UserName,u.RealName,u.[Password],u.PasswordFormat,u.PasswordQuestion,u.PasswordAnswer,u.Email,u.Mobile,u.Tel,u.Gender,u.Birthday,u.Age,u.OccupationId,u.PersonalIncome,u.FamilyIncome,u.NationalityId,u.ProvinceId,u.CityId,u.[Address],u.PostCode,u.OtherSpecify1,u.OtherSpecify2,u.OtherSpecify3,u.OtherSpecify4,u.ImageIconId,u.ImageSrc,u.FromPlace,u.Kudos,u.KudosWeight,u.UserType,u.LanguageCode,u.DefaultTheme,u.CommunityId,u.IsProjectUser,u.Flag,u.[Status],u.LoginCount,u.LastLogin,u.LastUpdate,u.LastIp,u.LastHostName,u.LastUserAgent,u.DateCreated,u.TimeZone,u.Point,u.Education,u.MailValidated,u.MobileValidated,u.Cash,u.Credit,n.NationName,n.ProvinceName,n.CityName  
				FROM dbo.UserPassport u inner join UserInCommunityProject uincp on u.UserPassportId = uincp.UserPassportId left join Nationality n on u.NationalityId=n.NationalityId and u.ProvinceId=n.ProvinceId and u.CityId=n.CityId and u.LanguageCode=n.LanguageCode
				where u.CommunityId = @CommunityId and u.UserType <= @utype and [status] <> -2
				and PjId in (select distinct PjId from UserInCommunityProject where CommunityId = @CommunityId and UserPassportId = @UserPassportId)
			end
		else
			begin
				SELECT distinct u.UserPassportId,u.PersonalId,u.UserName,u.RealName,u.[Password],u.PasswordFormat,u.PasswordQuestion,u.PasswordAnswer,u.Email,u.Mobile,u.Tel,u.Gender,u.Birthday,u.Age,u.OccupationId,u.PersonalIncome,u.FamilyIncome,u.NationalityId,u.ProvinceId,u.CityId,u.[Address],u.PostCode,u.OtherSpecify1,u.OtherSpecify2,u.OtherSpecify3,u.OtherSpecify4,u.ImageIconId,u.ImageSrc,u.FromPlace,u.Kudos,u.KudosWeight,u.UserType,u.LanguageCode,u.DefaultTheme,u.CommunityId,u.IsProjectUser,u.Flag,u.[Status],u.LoginCount,u.LastLogin,u.LastUpdate,u.LastIp,u.LastHostName,u.LastUserAgent,u.DateCreated,u.TimeZone,u.Point,u.Education,u.MailValidated,u.MobileValidated,u.Cash,u.Credit,n.NationName,n.ProvinceName,n.CityName  
				FROM dbo.UserPassport u inner join UserInCommunityProject uincp on u.UserPassportId = uincp.UserPassportId left join Nationality n on u.NationalityId=n.NationalityId and u.ProvinceId=n.ProvinceId and u.CityId=n.CityId and u.LanguageCode=n.LanguageCode
				where u.CommunityId = @CommunityId and u.UserType <= @utype and [status] = @Status
				and PjId in (select distinct PjId from UserInCommunityProject where CommunityId = @CommunityId and UserPassportId = @UserPassportId)
			end
		end
end



GO

-------------------------2013-7-18 End-----------------------------------



---------------------------2014-03-27 Begin-------------------------------------
/****** Object:  StoredProcedure [dbo].[createAllUserProfileView]    Script Date: 03/27/2014 10:19:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

 CREATE proc [dbo].[createAllUserProfileView]

as
begin
	declare @sql varchar(max),
	@columns varchar(2000)
	--select @columns=isnull(@columns+',','')+[Name]+cast(p.ProfileId as VARCHAR(18)) from UserProfile up
	--	 left join [Profile] p on up.ProfileId = p.ProfileId 
	select @columns=isnull(@columns+',','')+ Code from [Profile]
	
	if exists(select * from sysobjects where name='view_allUserProfile')
	  drop view view_allUserProfile;
	  
	 set @sql='
	 create view view_allUserProfile
	as
	select u.*,r.*
	from(select up.UserPassportId as uid,up.Value,p.Code from UserProfile up
		 left join Profile p on up.ProfileId = p.ProfileId) as upro
	Pivot(
		max(upro.Value) for upro.Code IN
		('+@columns+')) as r
		right join UserPassport u on r.uid=u.UserPassportId
		'
		exec (@sql)
	
end
GO


/****** Object:  StoredProcedure [dbo].[Survey_Link_Status]    Script Date: 03/27/2014 10:19:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: 2014-2-28
-- Description:	统计问卷答题状况
-- =============================================
CREATE PROCEDURE [dbo].[Survey_Link_Status]
	-- Add the parameters for the stored procedure here
	@Pjid bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here	
  SELECT [SurveyId]
      ,[Status]
      ,SUM([Point]) Point
      ,SUM([Cash]) Cash
      ,COUNT(*) LinkNum
      ,((SUM([Point])/(COUNT(*)+0.0)/100)+SUM([Cash])/(COUNT(*)+0.0)) PerCost into #SqpData
  FROM [SurveyQuestionPrivateLinks]
  where Status > -1
  group by SurveyId,Status    
  -------------------------------------------------------------------  
  select * into #SurveyLinkStatus from (
  select sp.SurveyId,case SurveyType when 2 then '正向发布' else 'Dimension' end '系统',s.Title,s.SurveyBusinessCode,s.StartTime,s.Endtime,s.Point as 'SurveyPoint',s.Cash as 'SurveyCash',s.DateCreated as 'SurveyCreateDate',IsNUll(sp.Point,0) as num ,case sp.Status when 0 then 'InCompletePoint' when 1 then 'CompletePoint' when 2 then 'ScreenOutPoint' when 3 then 'QuotaFullPoint' else 'OtherPoint' end 'SpStatus'
   from #SqpData sp left join Survey s on sp.SurveyId=s.SurveyId where PjId=@Pjid
  union all  
  select sp.SurveyId,case SurveyType when 2 then '正向发布' else 'Dimension' end '系统',s.Title,s.SurveyBusinessCode,s.StartTime,s.Endtime,s.Point as 'SurveyPoint',s.Cash as 'SurveyCash',s.DateCreated as 'SurveyCreateDate',IsNUll(sp.Cash,0) as num ,case sp.Status when 0 then 'InCompleteCash' when 1 then 'CompleteCash' when 2 then 'ScreenOutCash' when 3 then 'QuotaFullCash' else 'OtherCash' end 'SpStatus'
   from #SqpData sp left join Survey s on sp.SurveyId=s.SurveyId where PjId=@Pjid
  union all  
  select sp.SurveyId,case SurveyType when 2 then '正向发布' else 'Dimension' end '系统',s.Title,s.SurveyBusinessCode,s.StartTime,s.Endtime,s.Point as 'SurveyPoint',s.Cash as 'SurveyCash',s.DateCreated as 'SurveyCreateDate',IsNUll(sp.LinkNum,0) as num,case sp.Status when 0 then 'InCompleteLinkNum' when 1 then 'CompleteLinkNum' when 2 then 'ScreenOutLinkNum' when 3 then 'QuotaFullLinkNum' else 'OtherLinkNum' end 'SpStatus'
   from #SqpData sp left join Survey s on sp.SurveyId=s.SurveyId where PjId=@Pjid
  union all  
  select sp.SurveyId,case SurveyType when 2 then '正向发布' else 'Dimension' end '系统',s.Title,s.SurveyBusinessCode,s.StartTime,s.Endtime,s.Point as 'SurveyPoint',s.Cash as 'SurveyCash',s.DateCreated as 'SurveyCreateDate',IsNUll(sp.PerCost,0) as num,case sp.Status when 0 then 'InCompletePerCost' when 1 then 'CompletePerCost' when 2 then 'ScreenOutPerCost' when 3 then 'QuotaFullPerCost' else 'OtherPerCost' end 'SpStatus'
   from #SqpData sp left join Survey s on sp.SurveyId=s.SurveyId where PjId=@Pjid) t1
  pivot
  (
  sum(num) for spStatus in(InCompletePoint,InCompleteCash,InCompleteLinkNum,InCompletePerCost,CompletePoint,CompleteCash,CompleteLinkNum,CompletePerCost,ScreenOutPoint,ScreenOutCash,ScreenOutLinkNum,ScreenOutPerCost,QuotaFullPoint,QuotaFullCash,QuotaFullLinkNum,QuotaFullPerCost,OtherPoint,OtherCash,OtherLinkNum,OtherPerCost)
  ) tab
  
	select SurveyId,系统,Title,SurveyBusinessCode,StartTime,EndTime,SurveyPoint SurveyPoint,SurveyCash SurveyCash,SurveyCreateDate,InCompletePoint InCompletePoint,InCompleteCash InCompleteCash,InCompleteLinkNum InCompleteLinkNum,InCompletePerCost InCompletePerCost,CompletePoint CompletePoint,CompleteCash CompleteCash,CompleteLinkNum CompleteLinkNum,CompletePerCost CompletePerCost,ScreenOutPoint ScreenOutPoint,ScreenOutCash ScreenOutCash,ScreenOutLinkNum ScreenOutLinkNum,ScreenOutPerCost ScreenOutPerCost,QuotaFullPoint QuotaFullPoint,QuotaFullCash QuotaFullCash,QuotaFullLinkNum QuotaFullLinkNum,QuotaFullPerCost QuotaFullPerCost,OtherPoint OtherPoint,OtherCash OtherCash,OtherLinkNum OtherLinkNum,OtherPerCost OtherPerCost
	from #SurveyLinkStatus order by SurveyCreateDate
  
  drop table #SurveyLinkStatus  
  drop table #SqpData  
END



GO

Create procedure deleteUserPassport
@userPassportId bigint
as
begin
delete dbo.ValidateUser where UserPassportId=@userPassportId	
delete dbo.UserAcitivity where UserPassportId=@userPassportId	
delete dbo.UserInKudo where UserPassportId=@userPassportId	
delete dbo.UserLogin where UserPassportId=@userPassportId	
delete dbo.UserInCommunityProject where UserPassportId=@userPassportId	
delete dbo.UserPointLog where UserPassportId=@userPassportId	
delete dbo.UserProfile where UserPassportId=@userPassportId	
delete dbo.SurveyQuestionPrivateLinks where UserPassportId=@userPassportId	
delete dbo.CoCreationData where UserPassportId=@userPassportId	
delete dbo.UserPassport where UserPassportId=@userPassportId	
end
go



---------------------------2014-03-27 End-------------------------------------

------------------------------------------------------------

----存储过程赋权限
grant exec on bultDeleteUserSp to SocialSpaceWebAccesser WITH GRANT OPTION
go
grant exec on deleteBoardSp to SocialSpaceWebAccesser WITH GRANT OPTION
go
grant exec on deleteCoCreationSp to SocialSpaceWebAccesser WITH GRANT OPTION
go
grant exec on deleteHomeworkSp to SocialSpaceWebAccesser WITH GRANT OPTION
go
grant exec on deleteProjectSp to SocialSpaceWebAccesser WITH GRANT OPTION
go
grant exec on deleteSurveyQuestionSp to SocialSpaceWebAccesser WITH GRANT OPTION
go
grant exec on deleteSurveySp to SocialSpaceWebAccesser WITH GRANT OPTION
go
grant exec on deleteTopicSp to SocialSpaceWebAccesser WITH GRANT OPTION
go
grant exec on deleteUserSp to SocialSpaceWebAccesser WITH GRANT OPTION
go
grant exec on selectUserOwnUserSp to SocialSpaceWebAccesser WITH GRANT OPTION
go
grant exec on deleteHomeworkSp to SocialSpaceWebAccesser WITH GRANT OPTION 
go
grant exec on proc_userActivity to SocialSpaceWebAccesser WITH GRANT OPTION
go
grant exec on [AllUserAnswer_IsUserInProjectDetail] to SocialSpaceWebAccesser WITH GRANT OPTION
go
grant exec on [AllUserAnswer_not_IsUserInProjectDetail] to SocialSpaceWebAccesser WITH GRANT OPTION
go
grant exec on selectUserOwnUser_NewSp to SocialSpaceWebAccesser WITH GRANT OPTION
go
grant exec on [createAllUserProfileView] to SocialSpaceWebAccesser WITH GRANT OPTION
go
grant exec on [Survey_Link_Status] to SocialSpaceWebAccesser WITH GRANT OPTION
go
grant exec on createUserProfileView to SocialSpaceWebAccesser WITH GRANT OPTION
go
grant exec on createUserProfileView_NOPJID to SocialSpaceWebAccesser WITH GRANT OPTION
go

 