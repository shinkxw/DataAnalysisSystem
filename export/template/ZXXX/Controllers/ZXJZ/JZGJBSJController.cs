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
using HanRuEdu.XGXT.Common;

namespace HanRuEdu.XGXT.Controllers.XGXT
{
    public class JZGJBSJController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXJZ_01_01_JZGJBSJ_DISP> model = db_zxjz.VIEW_EDU_ZXJZ_01_01_JZGJBSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.ID.Contains(searchkey)).ToList();
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

        public void AddJzgjbsj(EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj)
        {
            jzgjbsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJzgjbsj(jzgjbsj);
        }

        public void UpdJzgjbsj(EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj)
        {
            //����Ĭ��ֵ
            if (jzgjbsj.ID == 0) jzgjbsj.ID = 0;//���
            if (jzgjbsj.SCHOOLID == 0) jzgjbsj.SCHOOLID = 0;//ѧУ��ѧУID
            if (string.IsNullOrEmpty(jzgjbsj.GH)) jzgjbsj.GH = "";//���Ź��� ��ţ�JCJG010101 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
            if (string.IsNullOrEmpty(jzgjbsj.XM)) jzgjbsj.XM = "";//�������� ��ţ�JCTB020101 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
            if (string.IsNullOrEmpty(jzgjbsj.YWXM)) jzgjbsj.YWXM = "";//Ӣ������Ӣ������ ��ţ�JCTB020102 ������JCTB020102 YWXM Ӣ������ C 60 NULL NULL ����ChristopherFrancisPatten NULL
            if (string.IsNullOrEmpty(jzgjbsj.XMPY)) jzgjbsj.XMPY = "";//����ƴ������ƴ�� ��ţ�JCTB020103 ������JCTB020103 XMPY ����ƴ�� C 60 NULL NULL ����ZHANGZhenhua�� NULL
            if (string.IsNullOrEmpty(jzgjbsj.CYM)) jzgjbsj.CYM = "";//������������ ��ţ�JCTB020104 ������JCTB020104 CYM ������ C 36 NULL NULL ָ������ʽʹ�ù������� NULL
            if (string.IsNullOrEmpty(jzgjbsj.XBM)) jzgjbsj.XBM = "";//�Ա����Ա��� ��ţ�JCTB020105 ������JCTB020105 XBM �Ա��� C 1 NULL GB/T2261.1 NULL NULL
            if (string.IsNullOrEmpty(jzgjbsj.CSRQ)) jzgjbsj.CSRQ = "";//�������ڳ������� ��ţ�JCTB020106 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
            if (string.IsNullOrEmpty(jzgjbsj.CSDM)) jzgjbsj.CSDM = "";//��������������� ��ţ�JCTB020107 ������JCTB020107 CSDM �������� C 6 NULL GB/T2260 NULL NULL
            if (string.IsNullOrEmpty(jzgjbsj.JG)) jzgjbsj.JG = "";//���Ἦ�� ��ţ�JCTB020108 ������JCTB020108 JG ���� C 20 NULL NULL NULL NULL
            if (string.IsNullOrEmpty(jzgjbsj.MZM)) jzgjbsj.MZM = "";//������������ ��ţ�JCTB020109 ������JCTB020109 MZM ������ C 2 NULL GB/T3304 ȡ��2λ���ִ��룬�磺01���壬02�ɹ��� NULL
            if (string.IsNullOrEmpty(jzgjbsj.GJDQM)) jzgjbsj.GJDQM = "";//����/���������/������ ��ţ�JCTB020110 ������JCTB020110 GJDQM ����/������ C 3 NULL GB/T2659 ��������ĸ���룬�磺CHN�й���USA���� NULL
            if (string.IsNullOrEmpty(jzgjbsj.SFZJLXM)) jzgjbsj.SFZJLXM = "";//���֤�����������֤�������� ��ţ�JCTB020111 ������JCTB020111 SFZJLXM ���֤�������� C 1 NULL JY/T1001SFZJLX���֤�����ʹ��� NULL NULL
            if (string.IsNullOrEmpty(jzgjbsj.SFZJH)) jzgjbsj.SFZJH = "";//���֤�������֤���� ��ţ�JCTB020112 ������JCTB020112 SFZJH ���֤���� C 20 NULL NULL �磺������ݺ��� NULL
            if (string.IsNullOrEmpty(jzgjbsj.HYZKM)) jzgjbsj.HYZKM = "";//����״�������״���� ��ţ�JCTB020113 ������JCTB020113 HYZKM ����״���� C 2 NULL GB/T2261.2 NULL NULL
            if (string.IsNullOrEmpty(jzgjbsj.GATQWM)) jzgjbsj.GATQWM = "";//�۰�̨������۰�̨������ ��ţ�JCTB020114 ������JCTB020114 GATQWM �۰�̨������ C 2 NULL JY/T1001GATQW�۰�̨������� NULL NULL
            if (string.IsNullOrEmpty(jzgjbsj.ZZMMM)) jzgjbsj.ZZMMM = "";//������ò��������ò�� ��ţ�JCTB020115 ������JCTB020115 ZZMMM ������ò�� C 2 NULL GB/T4762 �ɲ��ü�ƣ��磺01�й���Ա��04����Ա NULL
            if (string.IsNullOrEmpty(jzgjbsj.JKZKM)) jzgjbsj.JKZKM = "";//����״���뽡��״���� ��ţ�JCTB020116 ������JCTB020116 JKZKM ����״���� C 1 NULL GB/T2261.3 ����1λ���ִ��� NULL
            if (string.IsNullOrEmpty(jzgjbsj.XYZJM)) jzgjbsj.XYZJM = "";//�����ڽ��������ڽ��� ��ţ�JCTB020117 ������JCTB020117 XYZJM �����ڽ��� C 2 NULL GA214.12 NULL NULL
            if (string.IsNullOrEmpty(jzgjbsj.XXM)) jzgjbsj.XXM = "";//Ѫ����Ѫ���� ��ţ�JCTB020118 ������JCTB020118 XXM Ѫ���� C 1 NULL JY/T1001XXѪ�ʹ��� NULL NULL
            if (string.IsNullOrEmpty(jzgjbsj.ZP)) jzgjbsj.ZP = "";//��Ƭ��Ƭ ��ţ�JCTB020119 ������JCTB020119 ZP ��Ƭ B NULL NULL NULL �����������֤����Ƭ NULL
            if (string.IsNullOrEmpty(jzgjbsj.SFZJYXQ)) jzgjbsj.SFZJYXQ = "";//���֤����Ч�����֤����Ч�� ��ţ�JCTB020122 ������JCTB020122 SFDSZN �Ƿ������Ů C 1 NULL JY/T1001SFBZ�Ƿ��־���� 1�Ƕ�����Ů0���Ƕ�����Ů NULL
            if (string.IsNullOrEmpty(jzgjbsj.JGH)) jzgjbsj.JGH = "";//�����Ż����� ��ţ�ZXJZ010101 ����/�������������������� ������ZXXX030001 BJRYCH �༶�����ƺ� C 40 O NULL �༶��õ������ƺ� NULL
            if (string.IsNullOrEmpty(jzgjbsj.JTZZ)) jzgjbsj.JTZZ = "";//��ͥסַ��ͥסַ ��ţ�ZXJZ010102 ����/������ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩����ϸ��ַ ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
            if (string.IsNullOrEmpty(jzgjbsj.XZZ)) jzgjbsj.XZZ = "";//��סַ��סַ ��ţ�ZXJZ010103 ����/������ָ���˵�ǰ�ĳ�ס��ַ ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
            if (string.IsNullOrEmpty(jzgjbsj.HKSZD)) jzgjbsj.HKSZD = "";//�������ڵػ������ڵ� ��ţ�ZXJZ010104 ����/������ָ�������ڵ�ַ������ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩��ϸ��ַ ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
            if (string.IsNullOrEmpty(jzgjbsj.HKXZM)) jzgjbsj.HKXZM = "";//���������뻧�������� ��ţ�ZXJZ010105 ֵ�ռ䣺GA324.1 ����/������ָ������������ȷ�ϵ�ũҵ���ڻ��ũҵ���� 
            if (string.IsNullOrEmpty(jzgjbsj.XLM)) jzgjbsj.XLM = "";//ѧ����ѧ���� ��ţ�ZXJZ010106 ֵ�ռ䣺�μ�GB/T4658 ����/������ָ���ѧ�� 
            if (string.IsNullOrEmpty(jzgjbsj.GZNY)) jzgjbsj.GZNY = "";//�μӹ������²μӹ������� ��ţ�ZXJZ010107 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
            if (string.IsNullOrEmpty(jzgjbsj.LXNY)) jzgjbsj.LXNY = "";//��У������У���� ��ţ�ZXJZ010108 ����/��������У������ʵ�ʱ������£������²��ż���Ϊ׼ ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
            if (string.IsNullOrEmpty(jzgjbsj.CJNY)) jzgjbsj.CJNY = "";//�ӽ����´ӽ����� ��ţ�ZXJZ010109 ����/������ָ���˿�ʼ���½������������� ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
            if (string.IsNullOrEmpty(jzgjbsj.BZLBM)) jzgjbsj.BZLBM = "";//����������������� ��ţ�ZXJZ010110 ֵ�ռ䣺JY/T1001ZXXBZLB��Сѧ���������� 
            if (string.IsNullOrEmpty(jzgjbsj.DABH)) jzgjbsj.DABH = "";//������ŵ������ ��ţ�ZXJZ010111 ����/�������浵������Ϊ���˵���ȷ���Ĺ����� 
            if (string.IsNullOrEmpty(jzgjbsj.DAWB)) jzgjbsj.DAWB = "";//�����ı������ı� ��ţ�ZXJZ010112 ����/�����������ľ������� 
            if (string.IsNullOrEmpty(jzgjbsj.TXDZ)) jzgjbsj.TXDZ = "";//ͨ�ŵ�ַͨ�ŵ�ַ ��ţ�ZXJZ010113 ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
            if (string.IsNullOrEmpty(jzgjbsj.LXDH)) jzgjbsj.LXDH = "";//��ϵ�绰��ϵ�绰 ��ţ�ZXJZ010114 ������JCTB010103 DH �绰 C 30 NULL NULL ���绰���� NULL
            if (string.IsNullOrEmpty(jzgjbsj.YZBM)) jzgjbsj.YZBM = "";//���������������� ��ţ�ZXJZ010115 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
            if (string.IsNullOrEmpty(jzgjbsj.DZXX)) jzgjbsj.DZXX = "";//��������������� ��ţ�ZXJZ010116 ������JCTB010106 DZXX �������� C 40 NULL NULL �����ʼ���ַ NULL
            if (string.IsNullOrEmpty(jzgjbsj.ZYDZ)) jzgjbsj.ZYDZ = "";//��ҳ��ַ��ҳ��ַ ��ţ�ZXJZ010117 ������JCTB010107 WLDZ �����ַ C 60 NULL NULL ����ҳ�����͡�΢����ַ NULL
            if (string.IsNullOrEmpty(jzgjbsj.TC)) jzgjbsj.TC = "";//�س��س� ��ţ�ZXJZ010118 ����/������ָ������ĳһ����������������� 
            if (string.IsNullOrEmpty(jzgjbsj.GWZYM)) jzgjbsj.GWZYM = "";//��λְҵ���λְҵ�� ��ţ�ZXJZ010119 ֵ�ռ䣺JY/T1001GWZY��λְҵ���� 
            if (string.IsNullOrEmpty(jzgjbsj.ZYRKXD)) jzgjbsj.ZYRKXD = "";//��Ҫ�ο�ѧ����Ҫ�ο�ѧ�� ��ţ�ZXJZ010120 ֵ�ռ䣺JY/T1001RKXD�ο�ѧ�δ��� 
            EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj_model = db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.FirstOrDefault(e => e.ID == jzgjbsj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jzgjbsj_model != null)
            {
                jzgjbsj_model.ID = jzgjbsj.ID;//���
                jzgjbsj_model.SCHOOLID = jzgjbsj.SCHOOLID;//ѧУ��ѧУID
                jzgjbsj_model.GH = jzgjbsj.GH;//���Ź��� ��ţ�JCJG010101 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
                jzgjbsj_model.XM = jzgjbsj.XM;//�������� ��ţ�JCTB020101 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
                jzgjbsj_model.YWXM = jzgjbsj.YWXM;//Ӣ������Ӣ������ ��ţ�JCTB020102 ������JCTB020102 YWXM Ӣ������ C 60 NULL NULL ����ChristopherFrancisPatten NULL
                jzgjbsj_model.XMPY = jzgjbsj.XMPY;//����ƴ������ƴ�� ��ţ�JCTB020103 ������JCTB020103 XMPY ����ƴ�� C 60 NULL NULL ����ZHANGZhenhua�� NULL
                jzgjbsj_model.CYM = jzgjbsj.CYM;//������������ ��ţ�JCTB020104 ������JCTB020104 CYM ������ C 36 NULL NULL ָ������ʽʹ�ù������� NULL
                jzgjbsj_model.XBM = jzgjbsj.XBM;//�Ա����Ա��� ��ţ�JCTB020105 ������JCTB020105 XBM �Ա��� C 1 NULL GB/T2261.1 NULL NULL
                jzgjbsj_model.CSRQ = jzgjbsj.CSRQ;//�������ڳ������� ��ţ�JCTB020106 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
                jzgjbsj_model.CSDM = jzgjbsj.CSDM;//��������������� ��ţ�JCTB020107 ������JCTB020107 CSDM �������� C 6 NULL GB/T2260 NULL NULL
                jzgjbsj_model.JG = jzgjbsj.JG;//���Ἦ�� ��ţ�JCTB020108 ������JCTB020108 JG ���� C 20 NULL NULL NULL NULL
                jzgjbsj_model.MZM = jzgjbsj.MZM;//������������ ��ţ�JCTB020109 ������JCTB020109 MZM ������ C 2 NULL GB/T3304 ȡ��2λ���ִ��룬�磺01���壬02�ɹ��� NULL
                jzgjbsj_model.GJDQM = jzgjbsj.GJDQM;//����/���������/������ ��ţ�JCTB020110 ������JCTB020110 GJDQM ����/������ C 3 NULL GB/T2659 ��������ĸ���룬�磺CHN�й���USA���� NULL
                jzgjbsj_model.SFZJLXM = jzgjbsj.SFZJLXM;//���֤�����������֤�������� ��ţ�JCTB020111 ������JCTB020111 SFZJLXM ���֤�������� C 1 NULL JY/T1001SFZJLX���֤�����ʹ��� NULL NULL
                jzgjbsj_model.SFZJH = jzgjbsj.SFZJH;//���֤�������֤���� ��ţ�JCTB020112 ������JCTB020112 SFZJH ���֤���� C 20 NULL NULL �磺������ݺ��� NULL
                jzgjbsj_model.HYZKM = jzgjbsj.HYZKM;//����״�������״���� ��ţ�JCTB020113 ������JCTB020113 HYZKM ����״���� C 2 NULL GB/T2261.2 NULL NULL
                jzgjbsj_model.GATQWM = jzgjbsj.GATQWM;//�۰�̨������۰�̨������ ��ţ�JCTB020114 ������JCTB020114 GATQWM �۰�̨������ C 2 NULL JY/T1001GATQW�۰�̨������� NULL NULL
                jzgjbsj_model.ZZMMM = jzgjbsj.ZZMMM;//������ò��������ò�� ��ţ�JCTB020115 ������JCTB020115 ZZMMM ������ò�� C 2 NULL GB/T4762 �ɲ��ü�ƣ��磺01�й���Ա��04����Ա NULL
                jzgjbsj_model.JKZKM = jzgjbsj.JKZKM;//����״���뽡��״���� ��ţ�JCTB020116 ������JCTB020116 JKZKM ����״���� C 1 NULL GB/T2261.3 ����1λ���ִ��� NULL
                jzgjbsj_model.XYZJM = jzgjbsj.XYZJM;//�����ڽ��������ڽ��� ��ţ�JCTB020117 ������JCTB020117 XYZJM �����ڽ��� C 2 NULL GA214.12 NULL NULL
                jzgjbsj_model.XXM = jzgjbsj.XXM;//Ѫ����Ѫ���� ��ţ�JCTB020118 ������JCTB020118 XXM Ѫ���� C 1 NULL JY/T1001XXѪ�ʹ��� NULL NULL
                jzgjbsj_model.ZP = jzgjbsj.ZP;//��Ƭ��Ƭ ��ţ�JCTB020119 ������JCTB020119 ZP ��Ƭ B NULL NULL NULL �����������֤����Ƭ NULL
                jzgjbsj_model.SFZJYXQ = jzgjbsj.SFZJYXQ;//���֤����Ч�����֤����Ч�� ��ţ�JCTB020122 ������JCTB020122 SFDSZN �Ƿ������Ů C 1 NULL JY/T1001SFBZ�Ƿ��־���� 1�Ƕ�����Ů0���Ƕ�����Ů NULL
                jzgjbsj_model.JGH = jzgjbsj.JGH;//�����Ż����� ��ţ�ZXJZ010101 ����/�������������������� ������ZXXX030001 BJRYCH �༶�����ƺ� C 40 O NULL �༶��õ������ƺ� NULL
                jzgjbsj_model.JTZZ = jzgjbsj.JTZZ;//��ͥסַ��ͥסַ ��ţ�ZXJZ010102 ����/������ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩����ϸ��ַ ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
                jzgjbsj_model.XZZ = jzgjbsj.XZZ;//��סַ��סַ ��ţ�ZXJZ010103 ����/������ָ���˵�ǰ�ĳ�ס��ַ ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
                jzgjbsj_model.HKSZD = jzgjbsj.HKSZD;//�������ڵػ������ڵ� ��ţ�ZXJZ010104 ����/������ָ�������ڵ�ַ������ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩��ϸ��ַ ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
                jzgjbsj_model.HKXZM = jzgjbsj.HKXZM;//���������뻧�������� ��ţ�ZXJZ010105 ֵ�ռ䣺GA324.1 ����/������ָ������������ȷ�ϵ�ũҵ���ڻ��ũҵ���� 
                jzgjbsj_model.XLM = jzgjbsj.XLM;//ѧ����ѧ���� ��ţ�ZXJZ010106 ֵ�ռ䣺�μ�GB/T4658 ����/������ָ���ѧ�� 
                jzgjbsj_model.GZNY = jzgjbsj.GZNY;//�μӹ������²μӹ������� ��ţ�ZXJZ010107 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
                jzgjbsj_model.LXNY = jzgjbsj.LXNY;//��У������У���� ��ţ�ZXJZ010108 ����/��������У������ʵ�ʱ������£������²��ż���Ϊ׼ ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
                jzgjbsj_model.CJNY = jzgjbsj.CJNY;//�ӽ����´ӽ����� ��ţ�ZXJZ010109 ����/������ָ���˿�ʼ���½������������� ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
                jzgjbsj_model.BZLBM = jzgjbsj.BZLBM;//����������������� ��ţ�ZXJZ010110 ֵ�ռ䣺JY/T1001ZXXBZLB��Сѧ���������� 
                jzgjbsj_model.DABH = jzgjbsj.DABH;//������ŵ������ ��ţ�ZXJZ010111 ����/�������浵������Ϊ���˵���ȷ���Ĺ����� 
                jzgjbsj_model.DAWB = jzgjbsj.DAWB;//�����ı������ı� ��ţ�ZXJZ010112 ����/�����������ľ������� 
                jzgjbsj_model.TXDZ = jzgjbsj.TXDZ;//ͨ�ŵ�ַͨ�ŵ�ַ ��ţ�ZXJZ010113 ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
                jzgjbsj_model.LXDH = jzgjbsj.LXDH;//��ϵ�绰��ϵ�绰 ��ţ�ZXJZ010114 ������JCTB010103 DH �绰 C 30 NULL NULL ���绰���� NULL
                jzgjbsj_model.YZBM = jzgjbsj.YZBM;//���������������� ��ţ�ZXJZ010115 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
                jzgjbsj_model.DZXX = jzgjbsj.DZXX;//��������������� ��ţ�ZXJZ010116 ������JCTB010106 DZXX �������� C 40 NULL NULL �����ʼ���ַ NULL
                jzgjbsj_model.ZYDZ = jzgjbsj.ZYDZ;//��ҳ��ַ��ҳ��ַ ��ţ�ZXJZ010117 ������JCTB010107 WLDZ �����ַ C 60 NULL NULL ����ҳ�����͡�΢����ַ NULL
                jzgjbsj_model.TC = jzgjbsj.TC;//�س��س� ��ţ�ZXJZ010118 ����/������ָ������ĳһ����������������� 
                jzgjbsj_model.GWZYM = jzgjbsj.GWZYM;//��λְҵ���λְҵ�� ��ţ�ZXJZ010119 ֵ�ռ䣺JY/T1001GWZY��λְҵ���� 
                jzgjbsj_model.ZYRKXD = jzgjbsj.ZYRKXD;//��Ҫ�ο�ѧ����Ҫ�ο�ѧ�� ��ţ�ZXJZ010120 ֵ�ռ䣺JY/T1001RKXD�ο�ѧ�δ��� 
                db_zxjz.Entry(jzgjbsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.Add(jzgjbsj);
            }
            db_zxjz.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXJZ_01_01_JZGJBSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXJZ_01_01_JZGJBSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJzgjbsj(jzgjbsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzgjbsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzgjbsj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj= db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jzgjbsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj)
        {
            InitViewBag();
            try
            {
                
                
                UpdJzgjbsj(jzgjbsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzgjbsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzgjbsj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj = db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.Remove(jzgjbsj);
                db_zxjz.SaveChanges();
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
                    EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj = db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.Remove(jzgjbsj);
                    db_zxjz.SaveChanges();
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

        private static int Max_JZGJBSJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ��ְ������������������ID
        public int GetMax_JZGJBSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JZGJBSJ_ID == 0)
                {
                    EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj = db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.FirstOrDefault();
                    if (jzgjbsj == null)
                    {
                        Max_JZGJBSJ_ID = 1;
                    }
                    else
                    {
                        //Max_JZGJBSJ_ID = db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JZGJBSJ_ID++;
                }
                maxId = Max_JZGJBSJ_ID;
            }
            return maxId;
        }

    }
}
