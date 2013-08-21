
--住委会成员表
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_08_A03_ZWHCY_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[ID]--成员ID
      ,a.[YHID]--用户ID
      ,a.[YHLX]--用户类型
      ,a.[CYXM]--成员姓名
      ,a.[TJSJ]--添加时间
      ,a.[ZWMC]--职位名称
      ,a.[GZNR]--工作内容

FROM dbo.EDU_ZZFC_08_A03_ZWHCY AS a
GO
