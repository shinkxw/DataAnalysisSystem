
--У�����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZXX_02_01_ZZXQSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XQDM]--У������
      ,a.[XQMC]--У������
      ,a.[XQDZ]--У����ַ
      ,a.[XQLXDH]--У����ϵ�绰
      ,a.[XQFZRH]--У�������˺�
      ,a.[DZYJ]--�����ʼ�
      ,a.[XQYZBM]--У����������
      ,a.[XQSZDXZQHM]--У�����ڵ�����������
      ,a.[XQMJ]--У�����
      ,a.[XQJZMJ]--У���������
      ,a.[XQJXKYSBZZ]--У����ѧ���������豸��ֵ
      ,a.[XQGDZCZZ]--У���̶��ʲ���ֵ
      ,c.MC as c_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����

FROM dbo.EDU_ZZXX_02_01_ZZXQSJ AS a LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS c ON a.XQSZDXZQHM = c.DM /*У�����ڵ�����������*/
GO
