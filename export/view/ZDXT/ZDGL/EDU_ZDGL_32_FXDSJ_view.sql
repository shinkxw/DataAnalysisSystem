
--返修单数据表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_32_FXDSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[FXDID]--返修单ID
      ,a.[WLMC]--物料名称
      ,a.[PZ]--配置
      ,a.[DW]--单位
      ,a.[SL]--数量
      ,a.[RWSM]--任务说明
      ,a.[CLJG]--处理结果
      ,b.FXDH as b_FXD_FXDH--返修单表 返修单号
      ,b.PDBM as b_FXD_PDBM--返修单表 派单部门
      ,b.PDY as b_FXD_PDY--返修单表 派单员
      ,b.PDSJ as b_FXD_PDSJ--返修单表 派单时间
      ,b.SHDW as b_FXD_SHDW--返修单表 收货单位
      ,b.LXR as b_FXD_LXR--返修单表 联系人
      ,b.LXDH as b_FXD_LXDH--返修单表 联系电话
      ,b.WGSX as b_FXD_WGSX--返修单表 完工时限
      ,b.DZ as b_FXD_DZ--返修单表 地址
      ,b.ZJTS as b_FXD_ZJTS--返修单表 总计台数
      ,b.ZJJS as b_FXD_ZJJS--返修单表 总计件数
      ,b.SLBM as b_FXD_SLBM--返修单表 受理部门
      ,b.SDY as b_FXD_SDY--返修单表 受单员
      ,b.QSY as b_FXD_QSY--返修单表 签收员
      ,b.QSSJ as b_FXD_QSSJ--返修单表 签收时间
      ,b.FWQK as b_FXD_FWQK--返修单表 服务情况
      ,b.FWGCS as b_FXD_FWGCS--返修单表 服务工程师
      ,b.WGSJ as b_FXD_WGSJ--返修单表 完工时间
      ,b.YSQK as b_FXD_YSQK--返修单表 验收情况
      ,b.YSRY as b_FXD_YSRY--返修单表 验收人员
      ,b.YSSJ as b_FXD_YSSJ--返修单表 验收时间
      ,b.TJYH as b_FXD_TJYH--返修单表 添加用户
      ,b.TJSJ as b_FXD_TJSJ--返修单表 添加时间

FROM dbo.EDU_ZDGL_32_FXDSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_31_FXD AS b ON a.FXDID = b.ID /*返修单ID*/
GO
