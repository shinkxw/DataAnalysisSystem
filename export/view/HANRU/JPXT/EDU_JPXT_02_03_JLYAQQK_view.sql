
--教练员安全情况表
CREATE VIEW [dbo].[VIEW_EDU_JPXT_02_03_JLYAQQK_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[JLYID]--教练员ID
      ,a.[LRSJ]--录入时间
      ,a.[AQQK]--安全情况
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_JLYSJ_SCHOOLID--教练员数据表 学校ID
      ,c.XM as c_JLYSJ_XM--教练员数据表 姓名
      ,c.XBM as c_JLYSJ_XBM--教练员数据表 性别码
      ,cb.MC as c_JLYSJ_XBM_MC--人的性别代码 名称
      ,c.SFZH as c_JLYSJ_SFZH--教练员数据表 身份证号
      ,c.JSZH as c_JLYSJ_JSZH--教练员数据表 驾驶证号
      ,c.JSZYXQ as c_JLYSJ_JSZYXQ--教练员数据表 驾驶证有效期
      ,c.JLZH as c_JLYSJ_JLZH--教练员数据表 教练证号
      ,c.JLZYXQ as c_JLYSJ_JLZYXQ--教练员数据表 教练证有效期
      ,c.XL as c_JLYSJ_XL--教练员数据表 学历
      ,c.ZC as c_JLYSJ_ZC--教练员数据表 职称
      ,c.JXSJ as c_JLYSJ_JXSJ--教练员数据表 进校时间
      ,c.LXDH as c_JLYSJ_LXDH--教练员数据表 联系电话
      ,c.ZZ as c_JLYSJ_ZZ--教练员数据表 住址
      ,c.JSDJ as c_JLYSJ_JSDJ--教练员数据表 技术等级
      ,c.JTCHYXM as c_JLYSJ_JTCHYXM--教练员数据表 家庭成员一姓名
      ,c.JTCYYGX as c_JLYSJ_JTCYYGX--教练员数据表 家庭成员一关系
      ,c.JTCYYXBM as c_JLYSJ_JTCYYXBM--教练员数据表 家庭成员一性别码
      ,c.JTCYYCSRQ as c_JLYSJ_JTCYYCSRQ--教练员数据表 家庭成员一出生日期
      ,c.JTCYYZZ as c_JLYSJ_JTCYYZZ--教练员数据表 家庭成员一住址
      ,c.JTCYYLXDH as c_JLYSJ_JTCYYLXDH--教练员数据表 家庭成员一联系电话
      ,c.JTCYYCSGZ as c_JLYSJ_JTCYYCSGZ--教练员数据表 家庭成员一从事工作
      ,c.JTCYEXM as c_JLYSJ_JTCYEXM--教练员数据表 家庭成员二姓名
      ,c.JTCYEGX as c_JLYSJ_JTCYEGX--教练员数据表 家庭成员二关系
      ,c.JTCYEXBM as c_JLYSJ_JTCYEXBM--教练员数据表 家庭成员二性别码
      ,c.JTCYECSRQ as c_JLYSJ_JTCYECSRQ--教练员数据表 家庭成员二出生日期
      ,c.JTCYEZZ as c_JLYSJ_JTCYEZZ--教练员数据表 家庭成员二住址
      ,c.JTCYELXDH as c_JLYSJ_JTCYELXDH--教练员数据表 家庭成员二联系电话
      ,c.JTCYECSGZ as c_JLYSJ_JTCYECSGZ--教练员数据表 家庭成员二从事工作

FROM dbo.EDU_JPXT_02_03_JLYAQQK AS a LEFT OUTER JOIN
      dbo.EDU_JPXT_02_01_JLYSJ AS c ON a.JLYID = c.ID /*教练员ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cb ON c.XBM = cb.DM /*性别码*/
GO
