
--招生管理就业证明表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_22_A05_ZSGLJYZM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XSID]--学生ID
      ,a.[XSXM]--学生姓名
      ,a.[XB]--性别
      ,a.[ZY]--专业
      ,a.[JTDZ]--家庭地址
      ,a.[LXDH]--联系电话
      ,a.[JYDW]--就业单位
      ,a.[DWDH]--单位电话
      ,a.[JYGW]--就业岗位
      ,a.[PJYSR]--平均月收入
      ,a.[JYSJ]--就业时间
      ,a.[ZYDM]--专业代码
      ,a.[BJID]--班级ID
      ,a.[XJH]--学籍号
      ,a.[GZHZY]--工种或专业
      ,a.[SFDK]--是否对口
      ,a.[JYDD]--就业地点
      ,a.[JYQX]--就业去向
      ,a.[DD]--地点
      ,a.[JYHT]--就业合同
      ,a.[SB]--社保
      ,c.SCHOOLID as c_XJSJ_SCHOOLID--学籍基本数据表 学校名
      ,c.ZYXXID as c_XJSJ_ZYXXID--学籍基本数据表 专业基本信息
      ,c.ZZBJID as c_XJSJ_ZZBJID--学籍基本数据表 学校班级数据表
      ,c.ZZNJID as c_XJSJ_ZZNJID--学籍基本数据表 学校年级数据表
      ,c.RXNY as c_XJSJ_RXNY--学籍基本数据表 入学年月
      ,c.XSLBM as c_XJSJ_XSLBM--学籍基本数据表 学生类别码
      ,[cb].MC as c_XJSJ_XSLBM_MC--学生类别代码表 名称
      ,[cb].SM as c_XJSJ_XSLBM_SM--学生类别代码表 说明
      ,c.XZ as c_XJSJ_XZ--学籍基本数据表 学制
      ,c.ZYM as c_XJSJ_ZYM--学籍基本数据表 专业码
      ,c.XSDQZTM as c_XJSJ_XSDQZTM--学籍基本数据表 学生当前状态码
      ,[cc].MC as c_XJSJ_XSDQZTM_MC--学生当前状态代码表 名称
      ,[cc].SM as c_XJSJ_XSDQZTM_SM--学生当前状态代码表 说明
      ,d.SCHOOLID as d_ZZBJ_SCHOOLID--学校班级数据表 学校名
      ,d.ZYXXID as d_ZZBJ_ZYXXID--学校班级数据表 专业基本信息
      ,d.ZZNJID as d_ZZBJ_ZZNJID--学校班级数据表 学校年级数据表
      ,d.XZBMC as d_ZZBJ_XZBMC--学校班级数据表 行政班名称
      ,d.JBNY as d_ZZBJ_JBNY--学校班级数据表 建班年月
      ,d.BZRGH as d_ZZBJ_BZRGH--学校班级数据表 班主任工号
      ,d.JSBH as d_ZZBJ_JSBH--学校班级数据表 教室编号
      ,d.NANSRS as d_ZZBJ_NANSRS--学校班级数据表 男生人数
      ,d.NVSRS as d_ZZBJ_NVSRS--学校班级数据表 女生人数
      ,d.ZRS as d_ZZBJ_ZRS--学校班级数据表 总人数
      ,d.BZXH as d_ZZBJ_BZXH--学校班级数据表 班长学号
      ,d.JXJH as d_ZZBJ_JXJH--学校班级数据表 教学计划
      ,d.JGH as d_ZZBJ_JGH--学校班级数据表 机构号
      ,d.XQDM as d_ZZBJ_XQDM--学校班级数据表 校区代码
      ,d.BZRID as d_ZZBJ_BZRID--学校班级数据表 班主任ID
      ,d.PLSX as d_ZZBJ_PLSX--学校班级数据表 排列顺序
      ,d.ID as d_ZZBJ_ID--学校班级数据表 表Record外键

FROM dbo.EDU_ZZXS_22_A05_ZSGLJYZM AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_07_01_XJSJ AS c ON a.XSID = c.XSXXID /*学生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS d ON a.BJID = d.XZBDM /*班级ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS [cb] ON c.XSLBM = [cb].DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSDQZT AS [cc] ON c.XSDQZTM = [cc].DM /*学生当前状态码*/
GO
