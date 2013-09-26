
--学员数据表
CREATE VIEW [dbo].[VIEW_EDU_JPXT_03_01_XYSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XM]--姓名
      ,a.[SFZH]--身份证号
      ,a.[XBM]--性别码
      ,a.[LXDH]--联系电话
      ,a.[ZZ]--住址
      ,a.[BMSJ]--报名时间
      ,a.[SFQK]--缴费情况
      ,a.[SXCXID]--所选车型ID
      ,a.[ZJQK]--增加情况
      ,a.[SSJLYID]--所属教练员ID
      ,a.[YJJLYID]--引荐教练员ID
      ,a.[DQZT]--当前状态
      ,a.[BYSJ]--毕业时间
      ,c.MC as c_RDXB_MC--人的性别代码 名称
      ,d.SCHOOLID as d_CLXH_SCHOOLID--车辆型号数据表 学校ID
      ,d.CLXHMC as d_CLXH_CLXHMC--车辆型号数据表 车辆型号名称
      ,d.BZ as d_CLXH_BZ--车辆型号数据表 备注
      ,e.SCHOOLID as e_JLYSJ_SCHOOLID--教练员数据表 学校ID
      ,e.XM as e_JLYSJ_XM--教练员数据表 姓名
      ,e.XBM as e_JLYSJ_XBM--教练员数据表 性别码
      ,eb.MC as e_JLYSJ_XBM_MC--人的性别代码 名称
      ,e.SFZH as e_JLYSJ_SFZH--教练员数据表 身份证号
      ,e.JSZH as e_JLYSJ_JSZH--教练员数据表 驾驶证号
      ,e.JSZYXQ as e_JLYSJ_JSZYXQ--教练员数据表 驾驶证有效期
      ,e.JLZH as e_JLYSJ_JLZH--教练员数据表 教练证号
      ,e.JLZYXQ as e_JLYSJ_JLZYXQ--教练员数据表 教练证有效期
      ,e.XL as e_JLYSJ_XL--教练员数据表 学历
      ,e.ZC as e_JLYSJ_ZC--教练员数据表 职称
      ,e.JXSJ as e_JLYSJ_JXSJ--教练员数据表 进校时间
      ,e.LXDH as e_JLYSJ_LXDH--教练员数据表 联系电话
      ,e.ZZ as e_JLYSJ_ZZ--教练员数据表 住址
      ,e.JSDJ as e_JLYSJ_JSDJ--教练员数据表 技术等级
      ,e.JTCHYXM as e_JLYSJ_JTCHYXM--教练员数据表 家庭成员一姓名
      ,e.JTCYYGX as e_JLYSJ_JTCYYGX--教练员数据表 家庭成员一关系
      ,e.JTCYYXBM as e_JLYSJ_JTCYYXBM--教练员数据表 家庭成员一性别码
      ,e.JTCYYCSRQ as e_JLYSJ_JTCYYCSRQ--教练员数据表 家庭成员一出生日期
      ,e.JTCYYZZ as e_JLYSJ_JTCYYZZ--教练员数据表 家庭成员一住址
      ,e.JTCYYLXDH as e_JLYSJ_JTCYYLXDH--教练员数据表 家庭成员一联系电话
      ,e.JTCYYCSGZ as e_JLYSJ_JTCYYCSGZ--教练员数据表 家庭成员一从事工作
      ,e.JTCYEXM as e_JLYSJ_JTCYEXM--教练员数据表 家庭成员二姓名
      ,e.JTCYEGX as e_JLYSJ_JTCYEGX--教练员数据表 家庭成员二关系
      ,e.JTCYEXBM as e_JLYSJ_JTCYEXBM--教练员数据表 家庭成员二性别码
      ,e.JTCYECSRQ as e_JLYSJ_JTCYECSRQ--教练员数据表 家庭成员二出生日期
      ,e.JTCYEZZ as e_JLYSJ_JTCYEZZ--教练员数据表 家庭成员二住址
      ,e.JTCYELXDH as e_JLYSJ_JTCYELXDH--教练员数据表 家庭成员二联系电话
      ,e.JTCYECSGZ as e_JLYSJ_JTCYECSGZ--教练员数据表 家庭成员二从事工作
      ,f.SCHOOLID as f_JLYSJ_SCHOOLID--教练员数据表 学校ID
      ,f.XM as f_JLYSJ_XM--教练员数据表 姓名
      ,f.XBM as f_JLYSJ_XBM--教练员数据表 性别码
      ,fb.MC as f_JLYSJ_XBM_MC--人的性别代码 名称
      ,f.SFZH as f_JLYSJ_SFZH--教练员数据表 身份证号
      ,f.JSZH as f_JLYSJ_JSZH--教练员数据表 驾驶证号
      ,f.JSZYXQ as f_JLYSJ_JSZYXQ--教练员数据表 驾驶证有效期
      ,f.JLZH as f_JLYSJ_JLZH--教练员数据表 教练证号
      ,f.JLZYXQ as f_JLYSJ_JLZYXQ--教练员数据表 教练证有效期
      ,f.XL as f_JLYSJ_XL--教练员数据表 学历
      ,f.ZC as f_JLYSJ_ZC--教练员数据表 职称
      ,f.JXSJ as f_JLYSJ_JXSJ--教练员数据表 进校时间
      ,f.LXDH as f_JLYSJ_LXDH--教练员数据表 联系电话
      ,f.ZZ as f_JLYSJ_ZZ--教练员数据表 住址
      ,f.JSDJ as f_JLYSJ_JSDJ--教练员数据表 技术等级
      ,f.JTCHYXM as f_JLYSJ_JTCHYXM--教练员数据表 家庭成员一姓名
      ,f.JTCYYGX as f_JLYSJ_JTCYYGX--教练员数据表 家庭成员一关系
      ,f.JTCYYXBM as f_JLYSJ_JTCYYXBM--教练员数据表 家庭成员一性别码
      ,f.JTCYYCSRQ as f_JLYSJ_JTCYYCSRQ--教练员数据表 家庭成员一出生日期
      ,f.JTCYYZZ as f_JLYSJ_JTCYYZZ--教练员数据表 家庭成员一住址
      ,f.JTCYYLXDH as f_JLYSJ_JTCYYLXDH--教练员数据表 家庭成员一联系电话
      ,f.JTCYYCSGZ as f_JLYSJ_JTCYYCSGZ--教练员数据表 家庭成员一从事工作
      ,f.JTCYEXM as f_JLYSJ_JTCYEXM--教练员数据表 家庭成员二姓名
      ,f.JTCYEGX as f_JLYSJ_JTCYEGX--教练员数据表 家庭成员二关系
      ,f.JTCYEXBM as f_JLYSJ_JTCYEXBM--教练员数据表 家庭成员二性别码
      ,f.JTCYECSRQ as f_JLYSJ_JTCYECSRQ--教练员数据表 家庭成员二出生日期
      ,f.JTCYEZZ as f_JLYSJ_JTCYEZZ--教练员数据表 家庭成员二住址
      ,f.JTCYELXDH as f_JLYSJ_JTCYELXDH--教练员数据表 家庭成员二联系电话
      ,f.JTCYECSGZ as f_JLYSJ_JTCYECSGZ--教练员数据表 家庭成员二从事工作

FROM dbo.EDU_JPXT_03_01_XYSJ AS a LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS c ON a.XBM = c.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JPXT_05_01_CLXH AS d ON a.SXCXID = d.ID /*所选车型ID*/ LEFT OUTER JOIN
      dbo.EDU_JPXT_02_01_JLYSJ AS e ON a.SSJLYID = e.ID /*所属教练员ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JPXT_02_01_JLYSJ AS f ON a.YJJLYID = f.ID /*引荐教练员ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS eb ON e.XBM = eb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fb ON f.XBM = fb.DM /*性别码*/
GO
