
--学校基本数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_01_01_ZXXX_DISP]
AS
SELECT a.[ID]--学校ID
      ,a.[XXDM]--学校代码
      ,a.[XXMC]--学校名称
      ,a.[XXYWMC]--学校英文名称
      ,a.[XXDZ]--学校地址
      ,a.[XXYZBM]--学校邮政编码
      ,a.[XZQHM]--行政区划码
      ,a.[JXNY]--建校年月
      ,a.[XQR]--校庆日
      ,a.[XXBXLXM]--学校办学类型码
      ,a.[XXZGBMM]--学校主管部门码
      ,a.[FDDBRH]--法定代表人号
      ,a.[FRZSH]--法人证书号
      ,a.[XZGH]--校长工号
      ,a.[XZXM]--校长姓名
      ,a.[DWFZRH]--党委负责人号
      ,a.[ZZJGM]--组织机构码
      ,a.[LXDH]--联系电话
      ,a.[CZDH]--传真电话
      ,a.[DZXX]--电子信箱
      ,a.[ZYDZ]--主页地址
      ,a.[LSYG]--历史沿革
      ,a.[XXBBM]--学校办别码
      ,a.[SSZGDWM]--所属主管单位码
      ,a.[SZDCXLXM]--所在地城乡类型码
      ,a.[SZDJJSXM]--所在地经济属性码
      ,a.[SZDMZSX]--所在地民族属性
      ,a.[XXXZ]--小学学制
      ,a.[XXRXNL]--小学入学年龄
      ,a.[CZXZ]--初中学制
      ,a.[CZRXNL]--初中入学年龄
      ,a.[GZXZ]--高中学制
      ,a.[ZJXYYM]--主教学语言码
      ,a.[FJXYYM]--辅教学语言码
      ,a.[ZSBJ]--招生半径
      ,b.MC as b_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,c.MC as c_BXLX_MC--办学类型代码表 名称
      ,c.SM as c_BXLX_SM--办学类型代码表 说明
      ,d.MC as d_XXJYJGJBZ_MC--学校（教育机构）举办者代码表 名称
      ,d.SM as d_XXJYJGJBZ_SM--学校（教育机构）举办者代码表 说明
      ,e.MC as e_XXBB_MC--学校办别代码表 名称
      ,f.MC as f_XXJYJGJBZ_MC--学校（教育机构）举办者代码表 名称
      ,f.SM as f_XXJYJGJBZ_SM--学校（教育机构）举办者代码表 说明
      ,g.MC as g_SZDCXLX_MC--所在地城乡类型代码表 名称
      ,h.MC as h_SZDQJJSX_MC--所在地区经济属性代码表 名称
      ,i.MC as i_SFBZ_MC--是否标志代码表 名称
      ,j.MC as j_ZGYZ_MC--中国语种代码 名称
      ,j.ZMDM as j_ZGYZ_ZMDM--中国语种代码 字母代码
      ,k.MC as k_ZGYZ_MC--中国语种代码 名称
      ,k.ZMDM as k_ZGYZ_ZMDM--中国语种代码 字母代码

FROM dbo.EDU_ZXXX_01_01_ZXXX AS a LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS b ON a.XZQHM = b.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BXLX AS c ON a.XXBXLXM = c.DM /*学校办学类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS d ON a.XXZGBMM = d.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXBB AS e ON a.XXBBM = e.DM /*学校办别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS f ON a.SSZGDWM = f.DM /*所属主管单位码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDCXLX AS g ON a.SZDCXLXM = g.DM /*所在地城乡类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SZDQJJSX AS h ON a.SZDJJSXM = h.DM /*所在地经济属性码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS i ON a.SZDMZSX = i.DM /*所在地民族属性*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS j ON a.ZJXYYM = j.DM /*主教学语言码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGYZ AS k ON a.FJXYYM = k.DM /*辅教学语言码*/
GO
