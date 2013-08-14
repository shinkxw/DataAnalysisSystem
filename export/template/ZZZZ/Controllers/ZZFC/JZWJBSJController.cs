using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.Entity;
using System.Collections;
using HanRuEdu.LDAL;
using System.Text;
using System.Data.Entity.Validation;
using HanRuEdu.OAXT.Common;

namespace HanRuEdu.OAXT.Controllers.OAXT
{
    public class JZWJBSJController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZFC_02_01_JZWJBSJ_DISP> model = db_zzfc.VIEW_EDU_ZZFC_02_01_JZWJBSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.SCHOOLID.Contains(searchkey)).ToList();
            }

            if (!String.IsNullOrEmpty(sort))
            {
                if (order.Equals("desc"))
                {
                    model = model.OrderBy(e => GetPropertyValue(e, sort)).ToList();
                }
                else
                {
                    model = model.OrderByDescending(e => GetPropertyValue(e, sort)).ToList();
                }
            }
            return "{\"total\":" + model.Count + ",\"rows\":" + HanRuEdu.Utils.JsonHelp.JsonSerialize(model.Skip(page * rows - rows).Take(rows).ToList()) + "}";
        }

        public void AddJzwjbsj(EDU_ZZFC_02_01_JZWJBSJ jzwjbsj)
        {
            jzwjbsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJzwjbsj(jzwjbsj);
        }

        public void UpdJzwjbsj(EDU_ZZFC_02_01_JZWJBSJ jzwjbsj)
        {
            //����Ĭ��ֵ
            if (jzwjbsj.SCHOOLID == 0) jzwjbsj.SCHOOLID = 0;//ѧУ��ѧУID
            if (jzwjbsj.ID == 0) jzwjbsj.ID = 0;//������ID
            if (string.IsNullOrEmpty(jzwjbsj.JZWH)) jzwjbsj.JZWH = "";//�������ѧУ�Ա�
            if (string.IsNullOrEmpty(jzwjbsj.JZWMC)) jzwjbsj.JZWMC = "";//����������ָ������ĺ�������
            if (string.IsNullOrEmpty(jzwjbsj.SYZKM)) jzwjbsj.SYZKM = "";//ʹ��״����������JCBX020204 SYZKM ʹ��״����
            if (string.IsNullOrEmpty(jzwjbsj.FWCQ)) jzwjbsj.FWCQ = "";//���ݲ�Ȩ������JCBX020203 FWCQM ���ݲ�Ȩ��
            if (string.IsNullOrEmpty(jzwjbsj.XQH)) jzwjbsj.XQH = "";//У����ѧУ�Ա�
            if (string.IsNullOrEmpty(jzwjbsj.JZWFLM)) jzwjbsj.JZWFLM = "";//�����������
            if (string.IsNullOrEmpty(jzwjbsj.JZWJGM)) jzwjbsj.JZWJGM = "";//������ṹ��
            if (jzwjbsj.JZWCS == 0) jzwjbsj.JZWCS = 0;//�����������λ���� NULL
            if (string.IsNullOrEmpty(jzwjbsj.JCNY)) jzwjbsj.JCNY = "";//�������¸�ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
            if (jzwjbsj.JZWTZZE == 0) jzwjbsj.JZWTZZE = 0;//������Ͷ���ܶλ��Ԫ
            if (string.IsNullOrEmpty(jzwjbsj.JFLYM)) jzwjbsj.JFLYM = "";//������Դ��������JCBX020210 JFLYM ������Դ��
            if (jzwjbsj.ZJZMJ == 0) jzwjbsj.ZJZMJ = 0;//�ܽ��������λ��ƽ���� NULL
            if (jzwjbsj.ZSYMJ == 0) jzwjbsj.ZSYMJ = 0;//��ʹ�������λ��ƽ���� NULL
            if (string.IsNullOrEmpty(jzwjbsj.KZSFLDM)) jzwjbsj.KZSFLDM = "";//��������Ҷ���ֵ�ռ䣺JY/T1001KZSFLD��������Ҷȴ��� 
            if (string.IsNullOrEmpty(jzwjbsj.KZSFBZM)) jzwjbsj.KZSFBZM = "";//���������׼��������JCBX020214 KZSFBZM ���������׼��
            if (string.IsNullOrEmpty(jzwjbsj.JZWDZ)) jzwjbsj.JZWDZ = "";//�������ַָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ
            if (string.IsNullOrEmpty(jzwjbsj.JZWZKM)) jzwjbsj.JZWZKM = "";//������״����������JCBX020216 JZWZKM ������״����
            if (string.IsNullOrEmpty(jzwjbsj.JZWTP)) jzwjbsj.JZWTP = "";//������ͼƬָ���������Ƭ
            if (string.IsNullOrEmpty(jzwjbsj.JZWPMT)) jzwjbsj.JZWPMT = "";//������ƽ��ͼָ������Ľ���ƽ��ͼ
            if (string.IsNullOrEmpty(jzwjbsj.XXDWCCM)) jzwjbsj.XXDWCCM = "";//ѧУ��λ�����ֵ�ռ䣺JY/T1001XXDWCCѧУ��λ��δ��� 
            if (string.IsNullOrEmpty(jzwjbsj.JZWWZZK)) jzwjbsj.JZWWZZK = "";//������λ��״��ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1У��0У�� 
            if (string.IsNullOrEmpty(jzwjbsj.GHSPWH)) jzwjbsj.GHSPWH = "";//�滮�����ĺ�
            if (string.IsNullOrEmpty(jzwjbsj.ZHFZNL)) jzwjbsj.ZHFZNL = "";//�ۺϷ�������
            if (jzwjbsj.GHSYNX == 0) jzwjbsj.GHSYNX = 0;//�滮ʹ������
            if (string.IsNullOrEmpty(jzwjbsj.SFYYJBXCS)) jzwjbsj.SFYYJBXCS = "";//�Ƿ���Ԥ�����մ�ʩֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
            if (string.IsNullOrEmpty(jzwjbsj.SFKYYYJBNCS)) jzwjbsj.SFKYYYJBNCS = "";//�Ƿ������Ӧ�����ѳ���ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
            if (string.IsNullOrEmpty(jzwjbsj.CQZH)) jzwjbsj.CQZH = "";//��Ȩ֤��
            if (string.IsNullOrEmpty(jzwjbsj.JZWYTM)) jzwjbsj.JZWYTM = "";//��������;��ֵ�ռ䣺JY/T1001JZWYT��������;���� 
            if (jzwjbsj.JZWZGD == 0) jzwjbsj.JZWZGD = 0;//�������ܸ߶Ƚ���/��������λ���� 
            if (string.IsNullOrEmpty(jzwjbsj.WFJDBM)) jzwjbsj.WFJDBM = "";//Σ����������������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
            if (string.IsNullOrEmpty(jzwjbsj.WFJDWH)) jzwjbsj.WFJDWH = "";//Σ�������ĺ�
            if (string.IsNullOrEmpty(jzwjbsj.WFJDRQ)) jzwjbsj.WFJDRQ = "";//Σ���������ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
            if (string.IsNullOrEmpty(jzwjbsj.GNFSM)) jzwjbsj.GNFSM = "";//��ů��ʽ��ֵ�ռ䣺JY/T1001GNFS��ů��ʽ���� 
            if (string.IsNullOrEmpty(jzwjbsj.JZWJCXSM)) jzwjbsj.JZWJCXSM = "";//�����������ʽ��ֵ�ռ䣺JY/T1001JZWJCXS�����������ʽ���� 
            if (string.IsNullOrEmpty(jzwjbsj.JZWPMXSM)) jzwjbsj.JZWPMXSM = "";//������ƽ����ʽ��ֵ�ռ䣺JY/T1001JZWPMXS������ƽ����ʽ���� 
            if (string.IsNullOrEmpty(jzwjbsj.JZWLBXSM)) jzwjbsj.JZWLBXSM = "";//������¥����ʽ��ֵ�ռ䣺JY/T1001JZWLBXS������¥����ʽ���� 
            if (string.IsNullOrEmpty(jzwjbsj.SFYGZZ)) jzwjbsj.SFYGZZ = "";//�Ƿ��й�����ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
            if (string.IsNullOrEmpty(jzwjbsj.QL)) jzwjbsj.QL = "";//Ȧ��ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
            if (string.IsNullOrEmpty(jzwjbsj.ZJAQGZWCRQ)) jzwjbsj.ZJAQGZWCRQ = "";//�����ȫ����������ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
            if (jzwjbsj.ZJAQGZHYJSYNX == 0) jzwjbsj.ZJAQGZHYJSYNX = 0;//�����ȫ�����Ԥ��ʹ�����޵�λ���� 
            if (string.IsNullOrEmpty(jzwjbsj.ZXLXM)) jzwjbsj.ZXLXM = "";//ר�����ͽ���/������1����ר����Ŀ0������ר����Ŀ 
            if (string.IsNullOrEmpty(jzwjbsj.ZYZXTZBZMCM)) jzwjbsj.ZYZXTZBZMCM = "";//����ר��Ͷ�ʲ���������ֵ�ռ䣺JY/T1001ZYZXTZBZMC����ר��Ͷ�ʲ������ƴ��� 
            if (string.IsNullOrEmpty(jzwjbsj.WWJZDJM)) jzwjbsj.WWJZDJM = "";//���ｨ���ȼ���ֵ�ռ䣺JY/T1001WWJZDJ���ｨ���ȼ����� 
            if (jzwjbsj.JXJFZYF == 0) jzwjbsj.JXJFZYF = 0;//��ѧ�������÷�����/��������������Ϊ���ҡ�ʵ���ҡ�ͼ���ҡ�΢���ҡ������ҡ�������Ҽ������̸��÷����ܺͣ���λ��ƽ���� 
            if (jzwjbsj.QZJS == 0) jzwjbsj.QZJS = 0;//���н��ҽ���/��������λ��ƽ���� 
            if (jzwjbsj.QZSYS == 0) jzwjbsj.QZSYS = 0;//����ʵ���ҽ���/��������λ��ƽ���� 
            if (jzwjbsj.QZTSS == 0) jzwjbsj.QZTSS = 0;//����ͼ���ҽ���/��������λ��ƽ���� 
            if (jzwjbsj.QZWJS == 0) jzwjbsj.QZWJS = 0;//����΢���ҽ���/��������λ��ƽ���� 
            if (jzwjbsj.QZYYS == 0) jzwjbsj.QZYYS = 0;//���������ҽ���/��������λ��ƽ���� 
            if (jzwjbsj.QZTYHDS == 0) jzwjbsj.QZTYHDS = 0;//����������ҽ���/��������λ��ƽ���� 
            if (jzwjbsj.QZQTJFYF == 0) jzwjbsj.QZQTJFYF = 0;//���������̸��÷�����/��������λ��ƽ���� 
            if (jzwjbsj.SHYF == 0) jzwjbsj.SHYF = 0;//�����÷�����/��������������Ϊѧ�����ᡢʳ�á���������¯������ˮ������ԡ�ҡ��̹����ἰ���������÷����ܺͣ���λ��ƽ���� 
            if (jzwjbsj.QZXSSS == 0) jzwjbsj.QZXSSS = 0;//����ѧ���������/��������λ��ƽ���� 
            if (jzwjbsj.QZST == 0) jzwjbsj.QZST = 0;//����ʳ�õ�λ��ƽ���� 
            if (jzwjbsj.QZCS == 0) jzwjbsj.QZCS = 0;//���в�����λ��ƽ���� 
            if (jzwjbsj.QZGLF == 0) jzwjbsj.QZGLF = 0;//���й�¯��(��ˮ��)����/��������λ��ƽ���� 
            if (jzwjbsj.QZYS == 0) jzwjbsj.QZYS = 0;//����ԡ�ҽ���/��������λ��ƽ���� 
            if (jzwjbsj.QZJGSS == 0) jzwjbsj.QZJGSS = 0;//���н̹��������/��������λ��ƽ���� 
            if (jzwjbsj.QZQTSHYF == 0) jzwjbsj.QZQTSHYF = 0;//�������������÷�����/��������λ��ƽ���� 
            if (jzwjbsj.XZBGYF == 0) jzwjbsj.XZBGYF = 0;//�����칫�÷�����/��������������Ϊ��ְ���칫�ҡ����������Ҽ����������칫�÷����ܺͣ���λ��ƽ���� 
            if (jzwjbsj.QZJSBGS == 0) jzwjbsj.QZJSBGS = 0;//���н�ְ���칫�ҽ���/��������λ��ƽ���� 
            if (jzwjbsj.QZWSBJS == 0) jzwjbsj.QZWSBJS = 0;//�������������ҽ���/��������λ��ƽ���� 
            if (jzwjbsj.QZQTXZBGYF == 0) jzwjbsj.QZQTXZBGYF = 0;//�������������칫�÷�����/��������λ��ƽ���� 
            if (jzwjbsj.QTYF == 0) jzwjbsj.QTYF = 0;//�����÷�����/�������ǽ�ѧ�������÷��������÷��������칫�÷����÷��ܺͣ���λ��ƽ���� 
            EDU_ZZFC_02_01_JZWJBSJ jzwjbsj_model = db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.FirstOrDefault(e => e.SCHOOLID == jzwjbsj.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jzwjbsj_model != null)
            {
                jzwjbsj_model.SCHOOLID = jzwjbsj.SCHOOLID;//ѧУ��ѧУID
                jzwjbsj_model.ID = jzwjbsj.ID;//������ID
                jzwjbsj_model.JZWH = jzwjbsj.JZWH;//�������ѧУ�Ա�
                jzwjbsj_model.JZWMC = jzwjbsj.JZWMC;//����������ָ������ĺ�������
                jzwjbsj_model.SYZKM = jzwjbsj.SYZKM;//ʹ��״����������JCBX020204 SYZKM ʹ��״����
                jzwjbsj_model.FWCQ = jzwjbsj.FWCQ;//���ݲ�Ȩ������JCBX020203 FWCQM ���ݲ�Ȩ��
                jzwjbsj_model.XQH = jzwjbsj.XQH;//У����ѧУ�Ա�
                jzwjbsj_model.JZWFLM = jzwjbsj.JZWFLM;//�����������
                jzwjbsj_model.JZWJGM = jzwjbsj.JZWJGM;//������ṹ��
                jzwjbsj_model.JZWCS = jzwjbsj.JZWCS;//�����������λ���� NULL
                jzwjbsj_model.JCNY = jzwjbsj.JCNY;//�������¸�ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
                jzwjbsj_model.JZWTZZE = jzwjbsj.JZWTZZE;//������Ͷ���ܶλ��Ԫ
                jzwjbsj_model.JFLYM = jzwjbsj.JFLYM;//������Դ��������JCBX020210 JFLYM ������Դ��
                jzwjbsj_model.ZJZMJ = jzwjbsj.ZJZMJ;//�ܽ��������λ��ƽ���� NULL
                jzwjbsj_model.ZSYMJ = jzwjbsj.ZSYMJ;//��ʹ�������λ��ƽ���� NULL
                jzwjbsj_model.KZSFLDM = jzwjbsj.KZSFLDM;//��������Ҷ���ֵ�ռ䣺JY/T1001KZSFLD��������Ҷȴ��� 
                jzwjbsj_model.KZSFBZM = jzwjbsj.KZSFBZM;//���������׼��������JCBX020214 KZSFBZM ���������׼��
                jzwjbsj_model.JZWDZ = jzwjbsj.JZWDZ;//�������ַָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ
                jzwjbsj_model.JZWZKM = jzwjbsj.JZWZKM;//������״����������JCBX020216 JZWZKM ������״����
                jzwjbsj_model.JZWTP = jzwjbsj.JZWTP;//������ͼƬָ���������Ƭ
                jzwjbsj_model.JZWPMT = jzwjbsj.JZWPMT;//������ƽ��ͼָ������Ľ���ƽ��ͼ
                jzwjbsj_model.XXDWCCM = jzwjbsj.XXDWCCM;//ѧУ��λ�����ֵ�ռ䣺JY/T1001XXDWCCѧУ��λ��δ��� 
                jzwjbsj_model.JZWWZZK = jzwjbsj.JZWWZZK;//������λ��״��ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1У��0У�� 
                jzwjbsj_model.GHSPWH = jzwjbsj.GHSPWH;//�滮�����ĺ�
                jzwjbsj_model.ZHFZNL = jzwjbsj.ZHFZNL;//�ۺϷ�������
                jzwjbsj_model.GHSYNX = jzwjbsj.GHSYNX;//�滮ʹ������
                jzwjbsj_model.SFYYJBXCS = jzwjbsj.SFYYJBXCS;//�Ƿ���Ԥ�����մ�ʩֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
                jzwjbsj_model.SFKYYYJBNCS = jzwjbsj.SFKYYYJBNCS;//�Ƿ������Ӧ�����ѳ���ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
                jzwjbsj_model.CQZH = jzwjbsj.CQZH;//��Ȩ֤��
                jzwjbsj_model.JZWYTM = jzwjbsj.JZWYTM;//��������;��ֵ�ռ䣺JY/T1001JZWYT��������;���� 
                jzwjbsj_model.JZWZGD = jzwjbsj.JZWZGD;//�������ܸ߶Ƚ���/��������λ���� 
                jzwjbsj_model.WFJDBM = jzwjbsj.WFJDBM;//Σ����������������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
                jzwjbsj_model.WFJDWH = jzwjbsj.WFJDWH;//Σ�������ĺ�
                jzwjbsj_model.WFJDRQ = jzwjbsj.WFJDRQ;//Σ���������ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
                jzwjbsj_model.GNFSM = jzwjbsj.GNFSM;//��ů��ʽ��ֵ�ռ䣺JY/T1001GNFS��ů��ʽ���� 
                jzwjbsj_model.JZWJCXSM = jzwjbsj.JZWJCXSM;//�����������ʽ��ֵ�ռ䣺JY/T1001JZWJCXS�����������ʽ���� 
                jzwjbsj_model.JZWPMXSM = jzwjbsj.JZWPMXSM;//������ƽ����ʽ��ֵ�ռ䣺JY/T1001JZWPMXS������ƽ����ʽ���� 
                jzwjbsj_model.JZWLBXSM = jzwjbsj.JZWLBXSM;//������¥����ʽ��ֵ�ռ䣺JY/T1001JZWLBXS������¥����ʽ���� 
                jzwjbsj_model.SFYGZZ = jzwjbsj.SFYGZZ;//�Ƿ��й�����ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
                jzwjbsj_model.QL = jzwjbsj.QL;//Ȧ��ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
                jzwjbsj_model.ZJAQGZWCRQ = jzwjbsj.ZJAQGZWCRQ;//�����ȫ����������ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
                jzwjbsj_model.ZJAQGZHYJSYNX = jzwjbsj.ZJAQGZHYJSYNX;//�����ȫ�����Ԥ��ʹ�����޵�λ���� 
                jzwjbsj_model.ZXLXM = jzwjbsj.ZXLXM;//ר�����ͽ���/������1����ר����Ŀ0������ר����Ŀ 
                jzwjbsj_model.ZYZXTZBZMCM = jzwjbsj.ZYZXTZBZMCM;//����ר��Ͷ�ʲ���������ֵ�ռ䣺JY/T1001ZYZXTZBZMC����ר��Ͷ�ʲ������ƴ��� 
                jzwjbsj_model.WWJZDJM = jzwjbsj.WWJZDJM;//���ｨ���ȼ���ֵ�ռ䣺JY/T1001WWJZDJ���ｨ���ȼ����� 
                jzwjbsj_model.JXJFZYF = jzwjbsj.JXJFZYF;//��ѧ�������÷�����/��������������Ϊ���ҡ�ʵ���ҡ�ͼ���ҡ�΢���ҡ������ҡ�������Ҽ������̸��÷����ܺͣ���λ��ƽ���� 
                jzwjbsj_model.QZJS = jzwjbsj.QZJS;//���н��ҽ���/��������λ��ƽ���� 
                jzwjbsj_model.QZSYS = jzwjbsj.QZSYS;//����ʵ���ҽ���/��������λ��ƽ���� 
                jzwjbsj_model.QZTSS = jzwjbsj.QZTSS;//����ͼ���ҽ���/��������λ��ƽ���� 
                jzwjbsj_model.QZWJS = jzwjbsj.QZWJS;//����΢���ҽ���/��������λ��ƽ���� 
                jzwjbsj_model.QZYYS = jzwjbsj.QZYYS;//���������ҽ���/��������λ��ƽ���� 
                jzwjbsj_model.QZTYHDS = jzwjbsj.QZTYHDS;//����������ҽ���/��������λ��ƽ���� 
                jzwjbsj_model.QZQTJFYF = jzwjbsj.QZQTJFYF;//���������̸��÷�����/��������λ��ƽ���� 
                jzwjbsj_model.SHYF = jzwjbsj.SHYF;//�����÷�����/��������������Ϊѧ�����ᡢʳ�á���������¯������ˮ������ԡ�ҡ��̹����ἰ���������÷����ܺͣ���λ��ƽ���� 
                jzwjbsj_model.QZXSSS = jzwjbsj.QZXSSS;//����ѧ���������/��������λ��ƽ���� 
                jzwjbsj_model.QZST = jzwjbsj.QZST;//����ʳ�õ�λ��ƽ���� 
                jzwjbsj_model.QZCS = jzwjbsj.QZCS;//���в�����λ��ƽ���� 
                jzwjbsj_model.QZGLF = jzwjbsj.QZGLF;//���й�¯��(��ˮ��)����/��������λ��ƽ���� 
                jzwjbsj_model.QZYS = jzwjbsj.QZYS;//����ԡ�ҽ���/��������λ��ƽ���� 
                jzwjbsj_model.QZJGSS = jzwjbsj.QZJGSS;//���н̹��������/��������λ��ƽ���� 
                jzwjbsj_model.QZQTSHYF = jzwjbsj.QZQTSHYF;//�������������÷�����/��������λ��ƽ���� 
                jzwjbsj_model.XZBGYF = jzwjbsj.XZBGYF;//�����칫�÷�����/��������������Ϊ��ְ���칫�ҡ����������Ҽ����������칫�÷����ܺͣ���λ��ƽ���� 
                jzwjbsj_model.QZJSBGS = jzwjbsj.QZJSBGS;//���н�ְ���칫�ҽ���/��������λ��ƽ���� 
                jzwjbsj_model.QZWSBJS = jzwjbsj.QZWSBJS;//�������������ҽ���/��������λ��ƽ���� 
                jzwjbsj_model.QZQTXZBGYF = jzwjbsj.QZQTXZBGYF;//�������������칫�÷�����/��������λ��ƽ���� 
                jzwjbsj_model.QTYF = jzwjbsj.QTYF;//�����÷�����/�������ǽ�ѧ�������÷��������÷��������칫�÷����÷��ܺͣ���λ��ƽ���� 
                db_zzfc.Entry(jzwjbsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.Add(jzwjbsj);
            }
            db_zzfc.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZFC_02_01_JZWJBSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZFC_02_01_JZWJBSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZFC_02_01_JZWJBSJ jzwjbsj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJzwjbsj(jzwjbsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzwjbsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzwjbsj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZFC_02_01_JZWJBSJ jzwjbsj= db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jzwjbsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZFC_02_01_JZWJBSJ jzwjbsj)
        {
            InitViewBag();
            try
            {
                
                
                UpdJzwjbsj(jzwjbsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzwjbsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzwjbsj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZFC_02_01_JZWJBSJ jzwjbsj = db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.Remove(jzwjbsj);
                db_zzfc.SaveChanges();
                return "ɾ���ɹ���";
            }
            catch (DbEntityValidationException dbEx)
            {
                return "ɾ������" + dbEx.Message;
            }
            catch (Exception e)
            {
                return "ɾ������" + e.Message;
            }
        }*/

        public String Delete(String idLst)
        {
            try
            {
                int[] idlst = Utils.Utils.GetSafeIdsArr(idLst, LDALConstant.DefSpear);
                foreach (int id in idlst)
                {
                    EDU_ZZFC_02_01_JZWJBSJ jzwjbsj = db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.Remove(jzwjbsj);
                    db_zzfc.SaveChanges();
                }
                return "ɾ���ɹ���"
;            }
            catch (DbEntityValidationException dbEx)
            {
                return "ɾ������" + dbEx.Message;
            }
            catch (Exception e)
            {
                return "ɾ������" + e.Message;
            }
        }

        private static int Max_JZWJBSJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�������������������ID
        public int GetMax_JZWJBSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JZWJBSJ_ID == 0)
                {
                    EDU_ZZFC_02_01_JZWJBSJ jzwjbsj = db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.FirstOrDefault();
                    if (jzwjbsj == null)
                    {
                        Max_JZWJBSJ_ID = 1;
                    }
                    else
                    {
                        //Max_JZWJBSJ_ID = db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JZWJBSJ_ID++;
                }
                maxId = Max_JZWJBSJ_ID;
            }
            return maxId;
        }

    }
}
