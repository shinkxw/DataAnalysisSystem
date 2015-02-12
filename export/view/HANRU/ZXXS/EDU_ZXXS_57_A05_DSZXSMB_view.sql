
--导师制显示模板表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_57_A05_DSZXSMB_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[MBLX]--模板类型
      ,a.[NRLX]--内容类型
      ,a.[MC]--名称
      ,a.[NR]--内容
      ,a.[PLSX]--排列顺序
      ,a.[YF]--月份
      ,a.[WZ]--位置
      ,a.[JSMBID]--角色模板ID
      ,c.SCHOOLID as c_DSZJSMB_SCHOOLID--导师制角色模板表 学校
      ,c.XQID as c_DSZJSMB_XQID--导师制角色模板表 学期ID
      ,c.JSID as c_DSZJSMB_JSID--导师制角色模板表 角色ID
      ,c.MC as c_DSZJSMB_MC--导师制角色模板表 名称
      ,c.BJT as c_DSZJSMB_BJT--导师制角色模板表 背景图
      ,c.TJSJ as c_DSZJSMB_TJSJ--导师制角色模板表 添加时间

FROM dbo.EDU_ZXXS_57_A05_DSZXSMB AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_57_A06_DSZJSMB AS c ON a.JSMBID = c.ID /*角色模板ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
