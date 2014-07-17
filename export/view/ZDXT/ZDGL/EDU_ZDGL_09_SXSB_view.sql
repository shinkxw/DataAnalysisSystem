
--送修设备表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_09_SXSB_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SXDID]--送修单ID
      ,a.[BXSBID]--报修设备ID
      ,b.SXDH as b_SXDXX_SXDH--送修单信息表 送修单号
      ,b.CJYHID as b_SXDXX_CJYHID--送修单信息表 创建用户
      ,b.CJSJ as b_SXDXX_CJSJ--送修单信息表 创建时间
      ,b.SXSJ as b_SXDXX_SXSJ--送修单信息表 送修时间
      ,b.SHSJ as b_SXDXX_SHSJ--送修单信息表 审核时间
      ,b.ZT as b_SXDXX_ZT--送修单信息表 状态
      ,c.SBXHID as c_BXSB_SBXHID--报修设备表 设备型号ID
      ,c.SXDWID as c_BXSB_SXDWID--报修设备表 送修单位ID
      ,c.SNM as c_BXSB_SNM--报修设备表 S/N码
      ,c.SCRQ as c_BXSB_SCRQ--报修设备表 生产日期
      ,c.SCCJ as c_BXSB_SCCJ--报修设备表 生产厂家
      ,c.BXZT as c_BXSB_BXZT--报修设备表 保修状态
      ,c.BXHTID as c_BXSB_BXHTID--报修设备表 保修合同ID
      ,c.SBZT as c_BXSB_SBZT--报修设备表 设备状态
      ,c.WXZT as c_BXSB_WXZT--报修设备表 维修状态
      ,c.RKSJ as c_BXSB_RKSJ--报修设备表 入库时间
      ,c.RKCZYHID as c_BXSB_RKCZYHID--报修设备表 入库操作用户
      ,c.FXM as c_BXSB_FXM--报修设备表 返修码
      ,c.FXSJ as c_BXSB_FXSJ--报修设备表 返修时间
      ,c.FXDJYHID as c_BXSB_FXDJYHID--报修设备表 返修登记用户

FROM dbo.EDU_ZDGL_09_SXSB AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_08_SXDXX AS b ON a.SXDID = b.ID /*送修单ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_07_BXSB AS c ON a.BXSBID = c.ID /*报修设备ID*/
GO
