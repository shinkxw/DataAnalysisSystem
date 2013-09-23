
--教练车数据表
CREATE VIEW [dbo].[VIEW_EDU_JPXT_01_01_JLCSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[GMSJ]--购买时间
      ,a.[CLXHID]--车辆型号ID
      ,a.[PP]--品牌
      ,a.[CPH]--车牌号
      ,a.[FDJH]--发动机号
      ,a.[CJH]--车架号
      ,a.[BFSJ]--报废时间
      ,a.[EBRQ]--二保日期
      ,a.[DQZT]--当前状态
      ,a.[DQJLYID]--当前教练员ID
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_CLXH_SCHOOLID--车辆型号数据表 学校ID
      ,c.CLXHMC as c_CLXH_CLXHMC--车辆型号数据表 车辆型号名称
      ,c.BZ as c_CLXH_BZ--车辆型号数据表 备注
      ,d.SCHOOLID as d_JLYSJ_SCHOOLID--教练员数据表 学校ID
      ,d.XM as d_JLYSJ_XM--教练员数据表 姓名
      ,d.XBM as d_JLYSJ_XBM--教练员数据表 性别码
      ,db.MC as d_JLYSJ_XBM_MC--人的性别代码 名称
      ,d.SFZH as d_JLYSJ_SFZH--教练员数据表 身份证号
      ,d.JSZH as d_JLYSJ_JSZH--教练员数据表 驾驶证号
      ,d.JSZYXQ as d_JLYSJ_JSZYXQ--教练员数据表 驾驶证有效期
      ,d.JLZH as d_JLYSJ_JLZH--教练员数据表 教练证号
      ,d.JLZYXQ as d_JLYSJ_JLZYXQ--教练员数据表 教练证有效期
      ,d.XL as d_JLYSJ_XL--教练员数据表 学历
      ,d.ZC as d_JLYSJ_ZC--教练员数据表 职称
      ,d.JXSJ as d_JLYSJ_JXSJ--教练员数据表 进校时间
      ,d.LXDH as d_JLYSJ_LXDH--教练员数据表 联系电话
      ,d.ZZ as d_JLYSJ_ZZ--教练员数据表 住址
      ,d.JSDJ as d_JLYSJ_JSDJ--教练员数据表 技术等级
      ,d.JTCHYXM as d_JLYSJ_JTCHYXM--教练员数据表 家庭成员一姓名
      ,d.JTCYYGX as d_JLYSJ_JTCYYGX--教练员数据表 家庭成员一关系
      ,d.JTCYYXBM as d_JLYSJ_JTCYYXBM--教练员数据表 家庭成员一性别码
      ,d.JTCYYCSRQ as d_JLYSJ_JTCYYCSRQ--教练员数据表 家庭成员一出生日期
      ,d.JTCYYZZ as d_JLYSJ_JTCYYZZ--教练员数据表 家庭成员一住址
      ,d.JTCYYLXDH as d_JLYSJ_JTCYYLXDH--教练员数据表 家庭成员一联系电话
      ,d.JTCYYCSGZ as d_JLYSJ_JTCYYCSGZ--教练员数据表 家庭成员一从事工作
      ,d.JTCYEXM as d_JLYSJ_JTCYEXM--教练员数据表 家庭成员二姓名
      ,d.JTCYEGX as d_JLYSJ_JTCYEGX--教练员数据表 家庭成员二关系
      ,d.JTCYEXBM as d_JLYSJ_JTCYEXBM--教练员数据表 家庭成员二性别码
      ,d.JTCYECSRQ as d_JLYSJ_JTCYECSRQ--教练员数据表 家庭成员二出生日期
      ,d.JTCYEZZ as d_JLYSJ_JTCYEZZ--教练员数据表 家庭成员二住址
      ,d.JTCYELXDH as d_JLYSJ_JTCYELXDH--教练员数据表 家庭成员二联系电话
      ,d.JTCYECSGZ as d_JLYSJ_JTCYECSGZ--教练员数据表 家庭成员二从事工作

FROM dbo.EDU_JPXT_01_01_JLCSJ AS a LEFT OUTER JOIN
      dbo.EDU_JPXT_05_01_CLXH AS c ON a.CLXHID = c.ID /*车辆型号ID*/ LEFT OUTER JOIN
      dbo.EDU_JPXT_02_01_JLYSJ AS d ON a.DQJLYID = d.ID /*当前教练员ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*性别码*/
GO
