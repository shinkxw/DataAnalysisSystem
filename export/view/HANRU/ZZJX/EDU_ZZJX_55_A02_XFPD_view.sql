
--学分评定表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_55_A02_XFPD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[PDMC]--评定名称
      ,a.[FSSX]--分数上限
      ,a.[FSXX]--分数下限
      ,a.[BL]--所占课程学分比例
      ,a.[PLSX]--排列顺序
      ,a.[FZXXID]--分制信息ID
      ,c.SCHOOLID as c_FZXX_SCHOOLID--分制信息表 学校
      ,c.FZMC as c_FZXX_FZMC--分制信息表 分制名称
      ,c.ZDZ as c_FZXX_ZDZ--分制信息表 最大值
      ,c.ZXZ as c_FZXX_ZXZ--分制信息表 最小值
      ,c.JGX as c_FZXX_JGX--分制信息表 及格线
      ,c.MXF as c_FZXX_MXF--分制信息表 免修对应分
      ,c.MKF as c_FZXX_MKF--分制信息表 免考对应分
      ,c.XFPDBIDLB as c_FZXX_XFPDBIDLB--分制信息表 学分评定表ID列表
      ,c.JDPDBIDLB as c_FZXX_JDPDBIDLB--分制信息表 绩点评定表ID列表

FROM dbo.EDU_ZZJX_55_A02_XFPD AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A01_FZXX AS c ON a.FZXXID = c.ID /*分制信息ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
