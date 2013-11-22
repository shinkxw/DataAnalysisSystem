
--资源文件权限
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_01_A05_ZYWJQX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ZYWJID]--资源文件ID
      ,a.[YHLX]--用户类型
      ,a.[QXLB]--权限列表
      ,c.SCHOOLID as c_ZYWJ_SCHOOLID--资源文件 学校
      ,c.ZYFLID as c_ZYWJ_ZYFLID--资源文件 资源类型
      ,c.ZYMLID as c_ZYWJ_ZYMLID--资源文件 资源目录
      ,c.ZYBT as c_ZYWJ_ZYBT--资源文件 资源标题
      ,c.BZ as c_ZYWJ_BZ--资源文件 备注
      ,c.GJZ as c_ZYWJ_GJZ--资源文件 关键字
      ,c.YYZID as c_ZYWJ_YYZID--资源文件 拥有者ID
      ,c.ZYLLLX as c_ZYWJ_ZYLLLX--资源文件 资源浏览类型
      ,c.WJLXID as c_ZYWJ_WJLXID--资源文件 文件类型
      ,c.ZYNR as c_ZYWJ_ZYNR--资源文件 资源内容
      ,c.FJMC as c_ZYWJ_FJMC--资源文件 附件名称
      ,c.FJDX as c_ZYWJ_FJDX--资源文件 附件大小
      ,c.FJLJ as c_ZYWJ_FJLJ--资源文件 附件路径
      ,c.ZYZT as c_ZYWJ_ZYZT--资源文件 资源状态
      ,c.ZYPJ as c_ZYWJ_ZYPJ--资源文件 资源评级
      ,c.SCSJ as c_ZYWJ_SCSJ--资源文件 上传时间
      ,c.SYNJ as c_ZYWJ_SYNJ--资源文件 适用年级
      ,c.SYXK as c_ZYWJ_SYXK--资源文件 适用学科
      ,c.LLRC as c_ZYWJ_LLRC--资源文件 浏览人次
      ,c.SHZT as c_ZYWJ_SHZT--资源文件 审核状态
      ,c.SHRID as c_ZYWJ_SHRID--资源文件 审核人ID
      ,c.SHSJ as c_ZYWJ_SHSJ--资源文件 审核时间

FROM dbo.EDU_ZYZX_01_A05_ZYWJQX AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A06_ZYWJ AS c ON a.ZYWJID = c.ID /*资源文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
