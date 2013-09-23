
--教练车材料消耗表
CREATE VIEW [dbo].[VIEW_EDU_JPXT_01_06_JLCCLXH_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[JLCID]--教练车ID
      ,a.[JLYID]--教练员ID
      ,a.[LRSJ]--录入时间
      ,a.[XHQK]--消耗情况
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_JLCSJ_SCHOOLID--教练车数据表 学校ID
      ,c.GMSJ as c_JLCSJ_GMSJ--教练车数据表 购买时间
      ,c.CLXHID as c_JLCSJ_CLXHID--教练车数据表 车辆型号ID
      ,c.PP as c_JLCSJ_PP--教练车数据表 品牌
      ,c.CPH as c_JLCSJ_CPH--教练车数据表 车牌号
      ,c.FDJH as c_JLCSJ_FDJH--教练车数据表 发动机号
      ,c.CJH as c_JLCSJ_CJH--教练车数据表 车架号
      ,c.BFSJ as c_JLCSJ_BFSJ--教练车数据表 报废时间
      ,c.EBRQ as c_JLCSJ_EBRQ--教练车数据表 二保日期
      ,c.DQZT as c_JLCSJ_DQZT--教练车数据表 当前状态
      ,c.DQJLYID as c_JLCSJ_DQJLYID--教练车数据表 当前教练员ID
      ,c.BZ as c_JLCSJ_BZ--教练车数据表 备注
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

FROM dbo.EDU_JPXT_01_06_JLCCLXH AS a LEFT OUTER JOIN
      dbo.EDU_JPXT_01_01_JLCSJ AS c ON a.JLCID = c.ID /*教练车ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JPXT_02_01_JLYSJ AS d ON a.JLYID = d.ID /*教练员ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*性别码*/
GO
