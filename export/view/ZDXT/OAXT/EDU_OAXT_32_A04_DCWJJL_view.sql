
--问卷结果记录表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_32_A04_DCWJJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[YHID]--用户ID
      ,a.[WJID]--所属问卷ID
      ,a.[TMID]--所属题目ID
      ,a.[XXID]--选项ID
      ,a.[XXFZ]--选项分值
      ,a.[TJZT]--提交状态
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,c.YHRY as c_USER_YHRY--应用系统用户表 用户荣誉
      ,c.YHJF as c_USER_YHJF--应用系统用户表 用户积分
      ,c.BMID as c_USER_BMID--应用系统用户表 部门ID
      ,d.SCHOOLID as d_DCWJ_SCHOOLID--调查问卷数据表 学校
      ,d.Title as d_DCWJ_Title--调查问卷数据表 问卷名称
      ,d.Users as d_DCWJ_Users--调查问卷数据表 参选人员
      ,d.StartTime as d_DCWJ_StartTime--调查问卷数据表 开始时间
      ,d.EndTime as d_DCWJ_EndTime--调查问卷数据表 结束时间
      ,d.IsStart as d_DCWJ_IsStart--调查问卷数据表 是否开启
      ,d.JJ as d_DCWJ_JJ--调查问卷数据表 简介
      ,e.SCHOOLID as e_DCWJTM_SCHOOLID--调查问卷题目表 学校
      ,e.WJID as e_DCWJTM_WJID--调查问卷题目表 所属问卷
      ,e.TypeID as e_DCWJTM_TypeID--调查问卷题目表 题目类型
      ,e.Title as e_DCWJTM_Title--调查问卷题目表 题目
      ,e.SSDL as e_DCWJTM_SSDL--调查问卷题目表 所属大类
      ,f.SCHOOLID as f_DCWJTMXX_SCHOOLID--问卷题目选项表 学校
      ,f.TMID as f_DCWJTMXX_TMID--问卷题目选项表 所属题目
      ,f.WJID as f_DCWJTMXX_WJID--问卷题目选项表 所属问卷
      ,f.SelectItem as f_DCWJTMXX_SelectItem--问卷题目选项表 选项
      ,f.XXFZ as f_DCWJTMXX_XXFZ--问卷题目选项表 选项分值

FROM dbo.EDU_OAXT_32_A04_DCWJJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*用户ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A01_DCWJ AS d ON a.WJID = d.ID /*所属问卷ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A02_DCWJTM AS e ON a.TMID = e.ID /*所属题目ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A03_DCWJTMXX AS f ON a.XXID = f.ID /*选项ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/
GO
