
--资料文件
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_04_A03_ZLWJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ZYMLID]--资源目录ID
      ,a.[BT]--标题
      ,a.[SCSJ]--上传时间
      ,a.[SCNR]--上传内容
      ,c.SCHOOLID as c_ZLWJML_SCHOOLID--资料文件目录 学校
      ,c.MLMC as c_ZLWJML_MLMC--资料文件目录 目录名称
      ,c.FMLID as c_ZLWJML_FMLID--资料文件目录 父目录ID
      ,c.PLSX as c_ZLWJML_PLSX--资料文件目录 排列顺序

FROM dbo.EDU_ZYZX_04_A03_ZLWJ AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_04_A01_ZLWJML AS c ON a.ZYMLID = c.ID /*资源目录ID*/
GO
