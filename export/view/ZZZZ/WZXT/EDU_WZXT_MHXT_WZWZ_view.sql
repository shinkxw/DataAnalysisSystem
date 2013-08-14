
--��վ����
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZWZ_DISP]
AS
SELECT a.[ID]--��վ����ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[TYPENAME]--��������
      ,a.[LMID]--��Ŀ
      ,a.[TITLE]--����
      ,a.[PUBLISHERNAME]--������
      ,a.[AUTHOR]--����
      ,a.[AUTHORDEPART]--���߲���
      ,a.[PUBLISHDATE]--����ʱ��
      ,a.[CONTENT]--����
      ,a.[URL]--����
      ,a.[IMAGEURL]--ͼƬ
      ,a.[ATTACHMENTNAME]--������
      ,a.[ATTACHMENT]--����
      ,a.[CHICKNUB]--�����
      ,a.[AUDITSTATU]--���״̬
      ,a.[AUDITOR]--�����ID
      ,a.[AUDITORNAME]--�����
      ,a.[AUDITTIME]--���ʱ��
      ,a.[REMARK]--��ע
      ,a.[SUMMARY]--ժҪ
      ,a.[DISPLAYTYPE]--�Ƿ���ʾ
      ,a.[OPENFLAG]--������
      ,a.[LLQX]--���Ȩ��
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ��
      ,c.STATUID as c_WZPZ_STATUID--�Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ��ʽ
      ,d.SCHOOLID as d_WZLM_SCHOOLID--ѧУ��
      ,d.WEBID as d_WZLM_WEBID--��վID
      ,d.LMSHOWSTYLE as d_WZLM_LMSHOWSTYLE--��Ŀʹ������
      ,d.NAME as d_WZLM_NAME--��Ŀ����
      ,d.URL as d_WZLM_URL--��Ŀ����
      ,d.IMAGEURL as d_WZLM_IMAGEURL--ͼƬ����
      ,d.DEPTH as d_WZLM_DEPTH--�㼶
      ,d.PID as d_WZLM_PID--��Ŀ¼
      ,d.LISTSHOWSTYLE as d_WZLM_LISTSHOWSTYLE--�б���ʾ��ʽ
      ,d.ORDERTYPE as d_WZLM_ORDERTYPE--����ʽ
      ,d.SHOWNUMBER as d_WZLM_SHOWNUMBER--��ʾ����
      ,d.OPENFLAG as d_WZLM_OPENFLAG--������
      ,d.LLQX as d_WZLM_LLQX--���Ȩ��

FROM dbo.EDU_WZXT_MHXT_WZWZ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZLM AS d ON a.LMID = d.ID /*��Ŀ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ AND a.WEBID = d.WEBID /*��վID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/
GO
