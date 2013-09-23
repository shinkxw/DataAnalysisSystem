
--教练车检验情况表
CREATE VIEW [dbo].[VIEW_EDU_JPXT_01_04_JLCJYQK_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[JLCID]--教练车ID
      ,a.[JYNR]--检验内容
      ,a.[JYSJ]--检验时间
      ,a.[WCSJ]--完成时间
      ,a.[JYJG]--检验结果
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

FROM dbo.EDU_JPXT_01_04_JLCJYQK AS a LEFT OUTER JOIN
      dbo.EDU_JPXT_01_01_JLCSJ AS c ON a.JLCID = c.ID /*教练车ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO
