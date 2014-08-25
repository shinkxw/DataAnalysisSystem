
--送修单数据表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_23_SXDSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SXDID]--送修单ID
      ,a.[SBXHID]--设备型号ID
      ,a.[SXDXMID]--送修单项目ID
      ,a.[SL]--数量
      ,b.SXDWID as b_SXD_SXDWID--送修单表 送修单位ID
      ,b.SXDMC as b_SXD_SXDMC--送修单表 送修单名称
      ,b.SXDH as b_SXD_SXDH--送修单表 送修单号
      ,b.SXRQ as b_SXD_SXRQ--送修单表 送修日期
      ,b.GSXX as b_SXD_GSXX--送修单表 公司信息
      ,b.LXRXX as b_SXD_LXRXX--送修单表 联系人信息
      ,b.LXDHXX as b_SXD_LXDHXX--送修单表 联系电话信息
      ,b.DZXX as b_SXD_DZXX--送修单表 地址信息
      ,b.QZXX as b_SXD_QZXX--送修单表 签字信息
      ,b.TJYH as b_SXD_TJYH--送修单表 添加用户
      ,b.TJSJ as b_SXD_TJSJ--送修单表 添加时间
      ,c.SBLXID as c_SBXH_SBLXID--设备型号配置表 设备类型ID
      ,c.SCCJID as c_SBXH_SCCJID--设备型号配置表 生产厂家ID
      ,c.XHMC as c_SBXH_XHMC--设备型号配置表 型号名称
      ,c.WLMS as c_SBXH_WLMS--设备型号配置表 物料描述
      ,c.XHMCPY as c_SBXH_XHMCPY--设备型号配置表 型号名称拼音
      ,c.WLBH as c_SBXH_WLBH--设备型号配置表 物料编号
      ,d.SSLB as d_SXDXM_SSLB--送修单项目表 所属类别
      ,d.XMMC as d_SXDXM_XMMC--送修单项目表 项目名称
      ,d.SFXS as d_SXDXM_SFXS--送修单项目表 是否显示
      ,d.PLSX as d_SXDXM_PLSX--送修单项目表 排列顺序

FROM dbo.EDU_ZDGL_23_SXDSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_22_SXD AS b ON a.SXDID = b.ID /*送修单ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_03_SBXH AS c ON a.SBXHID = c.ID /*设备型号ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_21_SXDXM AS d ON a.SXDXMID = d.ID /*送修单项目ID*/
GO
