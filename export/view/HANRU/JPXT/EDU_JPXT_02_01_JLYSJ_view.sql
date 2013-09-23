
--教练员数据表
CREATE VIEW [dbo].[VIEW_EDU_JPXT_02_01_JLYSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XM]--姓名
      ,a.[XBM]--性别码
      ,a.[SFZH]--身份证号
      ,a.[JSZH]--驾驶证号
      ,a.[JSZYXQ]--驾驶证有效期
      ,a.[JLZH]--教练证号
      ,a.[JLZYXQ]--教练证有效期
      ,a.[XL]--学历
      ,a.[ZC]--职称
      ,a.[JXSJ]--进校时间
      ,a.[LXDH]--联系电话
      ,a.[ZZ]--住址
      ,a.[JSDJ]--技术等级
      ,a.[JTCHYXM]--家庭成员一姓名
      ,a.[JTCYYGX]--家庭成员一关系
      ,a.[JTCYYXBM]--家庭成员一性别码
      ,a.[JTCYYCSRQ]--家庭成员一出生日期
      ,a.[JTCYYZZ]--家庭成员一住址
      ,a.[JTCYYLXDH]--家庭成员一联系电话
      ,a.[JTCYYCSGZ]--家庭成员一从事工作
      ,a.[JTCYEXM]--家庭成员二姓名
      ,a.[JTCYEGX]--家庭成员二关系
      ,a.[JTCYEXBM]--家庭成员二性别码
      ,a.[JTCYECSRQ]--家庭成员二出生日期
      ,a.[JTCYEZZ]--家庭成员二住址
      ,a.[JTCYELXDH]--家庭成员二联系电话
      ,a.[JTCYECSGZ]--家庭成员二从事工作
      ,c.MC as c_RDXB_MC--人的性别代码 名称

FROM dbo.EDU_JPXT_02_01_JLYSJ AS a LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS c ON a.XBM = c.DM /*性别码*/
GO
