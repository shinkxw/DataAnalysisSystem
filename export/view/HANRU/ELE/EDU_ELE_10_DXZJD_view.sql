
--对象组节点表
CREATE VIEW [dbo].[VIEW_EDU_ELE_10_DXZJD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[DXZID]--对象组ID
      ,a.[HFFSID]--划分方式ID
      ,a.[HFCJID]--划分层级ID
      ,a.[FJDID]--父节点ID
      ,a.[JDMC]--节点名称
      ,a.[DXIDLB]--对象ID列表
      ,a.[DXMCLB]--对象名称列表
      ,c.SCHOOLID as c_DXZ_SCHOOLID--对象组表 学校ID
      ,c.DXZMC as c_DXZ_DXZMC--对象组表 对象组名称
      ,c.DXIDLB as c_DXZ_DXIDLB--对象组表 对象ID列表
      ,c.DXMCLB as c_DXZ_DXMCLB--对象组表 对象名称列表
      ,d.SCHOOLID as d_DXZHFFS_SCHOOLID--对象组划分方式表 学校ID
      ,d.DXZID as d_DXZHFFS_DXZID--对象组划分方式表 对象组ID
      ,d.HFFSMC as d_DXZHFFS_HFFSMC--对象组划分方式表 划分方式名称
      ,e.SCHOOLID as e_DXZHFCJ_SCHOOLID--对象组划分层级表 学校ID
      ,e.DXZID as e_DXZHFCJ_DXZID--对象组划分层级表 对象组ID
      ,e.HFFSID as e_DXZHFCJ_HFFSID--对象组划分层级表 划分方式ID
      ,e.CJMC as e_DXZHFCJ_CJMC--对象组划分层级表 层级名称
      ,e.PLSX as e_DXZHFCJ_PLSX--对象组划分层级表 排列顺序
      ,f.SCHOOLID as f_DXZJD_SCHOOLID--对象组节点表 学校ID
      ,f.DXZID as f_DXZJD_DXZID--对象组节点表 对象组ID
      ,f.HFFSID as f_DXZJD_HFFSID--对象组节点表 划分方式ID
      ,f.HFCJID as f_DXZJD_HFCJID--对象组节点表 划分层级ID
      ,f.FJDID as f_DXZJD_FJDID--对象组节点表 父节点ID
      ,f.JDMC as f_DXZJD_JDMC--对象组节点表 节点名称
      ,f.DXIDLB as f_DXZJD_DXIDLB--对象组节点表 对象ID列表
      ,f.DXMCLB as f_DXZJD_DXMCLB--对象组节点表 对象名称列表

FROM dbo.EDU_ELE_10_DXZJD AS a LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZ AS c ON a.DXZID = c.ID /*对象组ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZHFFS AS d ON a.HFFSID = d.ID /*划分方式ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZHFCJ AS e ON a.HFCJID = e.ID /*划分层级ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZJD AS f ON a.FJDID = f.ID /*父节点ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/
GO
