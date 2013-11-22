
--资源目录权限
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_01_A04_ZYMLQX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ZYMLID]--资源目录ID
      ,a.[YHLX]--用户类型
      ,a.[QXLB]--权限列表
      ,c.SCHOOLID as c_ZYML_SCHOOLID--资源目录 学校
      ,c.MLMC as c_ZYML_MLMC--资源目录 目录名称
      ,c.FMLID as c_ZYML_FMLID--资源目录 父目录ID
      ,c.PLSX as c_ZYML_PLSX--资源目录 排列顺序
      ,c.YYZID as c_ZYML_YYZID--资源目录 拥有者ID
      ,c.WJLXIDLB as c_ZYML_WJLXIDLB--资源目录 上传文件类型ID列表
      ,c.FWQX as c_ZYML_FWQX--资源目录 访问权限

FROM dbo.EDU_ZYZX_01_A04_ZYMLQX AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A02_ZYML AS c ON a.ZYMLID = c.ID /*资源目录ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
