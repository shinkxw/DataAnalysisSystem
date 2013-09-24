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
using HanRuEdu.JPXT.Common;

namespace HanRuEdu.JPXT.Controllers.JPXT
{
    public class JZWJBSJController : JPXTController
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
            if (jzwjbsj.SCHOOLID == 0) jzwjbsj.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (jzwjbsj.ID == 0) jzwjbsj.ID = 0;//������ID
            if (string.IsNullOrEmpty(jzwjbsj.JZWH)) jzwjbsj.JZWH = "";//�������
            if (string.IsNullOrEmpty(jzwjbsj.JZWMC)) jzwjbsj.JZWMC = "";//����������
            if (string.IsNullOrEmpty(jzwjbsj.SYZKM)) jzwjbsj.SYZKM = "";//ʹ��״����   ʹ��״�������
            if (string.IsNullOrEmpty(jzwjbsj.FWCQ)) jzwjbsj.FWCQ = "";//���ݲ�Ȩ   ��Ȩ�����
            if (string.IsNullOrEmpty(jzwjbsj.XQH)) jzwjbsj.XQH = "";//У����
            if (string.IsNullOrEmpty(jzwjbsj.JZWFLM)) jzwjbsj.JZWFLM = "";//�����������   �������������
            if (string.IsNullOrEmpty(jzwjbsj.JZWJGM)) jzwjbsj.JZWJGM = "";//������ṹ��   ������ṹ�����
            if (jzwjbsj.JZWCS == 0) jzwjbsj.JZWCS = 0;//���������
            if (string.IsNullOrEmpty(jzwjbsj.JCNY)) jzwjbsj.JCNY = "";//��������
            if (jzwjbsj.JZWTZZE == 0) jzwjbsj.JZWTZZE = 0;//������Ͷ���ܶ�
            if (string.IsNullOrEmpty(jzwjbsj.JFLYM)) jzwjbsj.JFLYM = "";//������Դ��   ������Դ�����
            if (jzwjbsj.ZJZMJ == 0) jzwjbsj.ZJZMJ = 0;//�ܽ������
            if (jzwjbsj.ZSYMJ == 0) jzwjbsj.ZSYMJ = 0;//��ʹ�����
            if (string.IsNullOrEmpty(jzwjbsj.KZSFLDM)) jzwjbsj.KZSFLDM = "";//��������Ҷ���   ��������Ҷȴ���
            if (string.IsNullOrEmpty(jzwjbsj.KZSFBZM)) jzwjbsj.KZSFBZM = "";//���������׼��   ���������׼����
            if (string.IsNullOrEmpty(jzwjbsj.JZWDZ)) jzwjbsj.JZWDZ = "";//�������ַ
            if (string.IsNullOrEmpty(jzwjbsj.JZWZKM)) jzwjbsj.JZWZKM = "";//������״����   ������״�������
            if (string.IsNullOrEmpty(jzwjbsj.JZWTP)) jzwjbsj.JZWTP = "";//������ͼƬ
            if (string.IsNullOrEmpty(jzwjbsj.JZWPMT)) jzwjbsj.JZWPMT = "";//������ƽ��ͼ
            if (string.IsNullOrEmpty(jzwjbsj.XXDWCCM)) jzwjbsj.XXDWCCM = "";//ѧУ��λ�����   ѧУ��λ��δ����
            if (string.IsNullOrEmpty(jzwjbsj.JZWWZZK)) jzwjbsj.JZWWZZK = "";//������λ��״��
            if (string.IsNullOrEmpty(jzwjbsj.GHSPWH)) jzwjbsj.GHSPWH = "";//�滮�����ĺ�
            if (string.IsNullOrEmpty(jzwjbsj.ZHFZNL)) jzwjbsj.ZHFZNL = "";//�ۺϷ�������
            if (jzwjbsj.GHSYNX == 0) jzwjbsj.GHSYNX = 0;//�滮ʹ������
            if (string.IsNullOrEmpty(jzwjbsj.SFYYJBXCS)) jzwjbsj.SFYYJBXCS = "";//�Ƿ���Ԥ�����մ�ʩ   �Ƿ��־�����
            if (string.IsNullOrEmpty(jzwjbsj.SFKYYYJBNCS)) jzwjbsj.SFKYYYJBNCS = "";//�Ƿ������Ӧ�����ѳ���   �Ƿ��־�����
            if (string.IsNullOrEmpty(jzwjbsj.CQZH)) jzwjbsj.CQZH = "";//��Ȩ֤��
            if (string.IsNullOrEmpty(jzwjbsj.JZWYTM)) jzwjbsj.JZWYTM = "";//��������;��   ��������;�����
            if (jzwjbsj.JZWZGD == 0) jzwjbsj.JZWZGD = 0;//�������ܸ߶�
            if (string.IsNullOrEmpty(jzwjbsj.WFJDBM)) jzwjbsj.WFJDBM = "";//Σ����������
            if (string.IsNullOrEmpty(jzwjbsj.WFJDWH)) jzwjbsj.WFJDWH = "";//Σ�������ĺ�
            if (string.IsNullOrEmpty(jzwjbsj.WFJDRQ)) jzwjbsj.WFJDRQ = "";//Σ����������
            if (string.IsNullOrEmpty(jzwjbsj.GNFSM)) jzwjbsj.GNFSM = "";//��ů��ʽ��   ��ů��ʽ�����
            if (string.IsNullOrEmpty(jzwjbsj.JZWJCXSM)) jzwjbsj.JZWJCXSM = "";//�����������ʽ��   �����������ʽ�����
            if (string.IsNullOrEmpty(jzwjbsj.JZWPMXSM)) jzwjbsj.JZWPMXSM = "";//������ƽ����ʽ��   ������ƽ����ʽ�����
            if (string.IsNullOrEmpty(jzwjbsj.JZWLBXSM)) jzwjbsj.JZWLBXSM = "";//������¥����ʽ��   ������¥����ʽ�����
            if (string.IsNullOrEmpty(jzwjbsj.SFYGZZ)) jzwjbsj.SFYGZZ = "";//�Ƿ��й�����   �Ƿ��־�����
            if (string.IsNullOrEmpty(jzwjbsj.QL)) jzwjbsj.QL = "";//Ȧ��   �Ƿ��־�����
            if (string.IsNullOrEmpty(jzwjbsj.ZJAQGZWCRQ)) jzwjbsj.ZJAQGZWCRQ = "";//�����ȫ�����������
            if (jzwjbsj.ZJAQGZHYJSYNX == 0) jzwjbsj.ZJAQGZHYJSYNX = 0;//�����ȫ�����Ԥ��ʹ������
            if (string.IsNullOrEmpty(jzwjbsj.ZXLXM)) jzwjbsj.ZXLXM = "";//ר������
            if (string.IsNullOrEmpty(jzwjbsj.ZYZXTZBZMCM)) jzwjbsj.ZYZXTZBZMCM = "";//����ר��Ͷ�ʲ���������   ����ר��Ͷ�ʲ������ƴ����
            if (string.IsNullOrEmpty(jzwjbsj.WWJZDJM)) jzwjbsj.WWJZDJM = "";//���ｨ���ȼ���   ���ｨ���ȼ������
            if (jzwjbsj.JXJFZYF == 0) jzwjbsj.JXJFZYF = 0;//��ѧ�������÷�
            if (jzwjbsj.QZJS == 0) jzwjbsj.QZJS = 0;//���н���
            if (jzwjbsj.QZSYS == 0) jzwjbsj.QZSYS = 0;//����ʵ����
            if (jzwjbsj.QZTSS == 0) jzwjbsj.QZTSS = 0;//����ͼ����
            if (jzwjbsj.QZWJS == 0) jzwjbsj.QZWJS = 0;//����΢����
            if (jzwjbsj.QZYYS == 0) jzwjbsj.QZYYS = 0;//����������
            if (jzwjbsj.QZTYHDS == 0) jzwjbsj.QZTYHDS = 0;//�����������
            if (jzwjbsj.QZQTJFYF == 0) jzwjbsj.QZQTJFYF = 0;//���������̸��÷�
            if (jzwjbsj.SHYF == 0) jzwjbsj.SHYF = 0;//�����÷�
            if (jzwjbsj.QZXSSS == 0) jzwjbsj.QZXSSS = 0;//����ѧ������
            if (jzwjbsj.QZST == 0) jzwjbsj.QZST = 0;//����ʳ��
            if (jzwjbsj.QZCS == 0) jzwjbsj.QZCS = 0;//���в���
            if (jzwjbsj.QZGLF == 0) jzwjbsj.QZGLF = 0;//���й�¯��(��ˮ��)
            if (jzwjbsj.QZYS == 0) jzwjbsj.QZYS = 0;//����ԡ��
            if (jzwjbsj.QZJGSS == 0) jzwjbsj.QZJGSS = 0;//���н̹�����
            if (jzwjbsj.QZQTSHYF == 0) jzwjbsj.QZQTSHYF = 0;//�������������÷�
            if (jzwjbsj.XZBGYF == 0) jzwjbsj.XZBGYF = 0;//�����칫�÷�
            if (jzwjbsj.QZJSBGS == 0) jzwjbsj.QZJSBGS = 0;//���н�ְ���칫��
            if (jzwjbsj.QZWSBJS == 0) jzwjbsj.QZWSBJS = 0;//��������������
            if (jzwjbsj.QZQTXZBGYF == 0) jzwjbsj.QZQTXZBGYF = 0;//�������������칫�÷�
            if (jzwjbsj.QTYF == 0) jzwjbsj.QTYF = 0;//�����÷�
            if (string.IsNullOrEmpty(jzwjbsj.GLY)) jzwjbsj.GLY = "";//����Ա
            EDU_ZZFC_02_01_JZWJBSJ jzwjbsj_model = db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.FirstOrDefault(e => e.SCHOOLID == jzwjbsj.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jzwjbsj_model != null)
            {
                jzwjbsj_model.SCHOOLID = jzwjbsj.SCHOOLID;//ѧУ��   ѧУ���ñ�
                jzwjbsj_model.ID = jzwjbsj.ID;//������ID
                jzwjbsj_model.JZWH = jzwjbsj.JZWH;//�������
                jzwjbsj_model.JZWMC = jzwjbsj.JZWMC;//����������
                jzwjbsj_model.SYZKM = jzwjbsj.SYZKM;//ʹ��״����   ʹ��״�������
                jzwjbsj_model.FWCQ = jzwjbsj.FWCQ;//���ݲ�Ȩ   ��Ȩ�����
                jzwjbsj_model.XQH = jzwjbsj.XQH;//У����
                jzwjbsj_model.JZWFLM = jzwjbsj.JZWFLM;//�����������   �������������
                jzwjbsj_model.JZWJGM = jzwjbsj.JZWJGM;//������ṹ��   ������ṹ�����
                jzwjbsj_model.JZWCS = jzwjbsj.JZWCS;//���������
                jzwjbsj_model.JCNY = jzwjbsj.JCNY;//��������
                jzwjbsj_model.JZWTZZE = jzwjbsj.JZWTZZE;//������Ͷ���ܶ�
                jzwjbsj_model.JFLYM = jzwjbsj.JFLYM;//������Դ��   ������Դ�����
                jzwjbsj_model.ZJZMJ = jzwjbsj.ZJZMJ;//�ܽ������
                jzwjbsj_model.ZSYMJ = jzwjbsj.ZSYMJ;//��ʹ�����
                jzwjbsj_model.KZSFLDM = jzwjbsj.KZSFLDM;//��������Ҷ���   ��������Ҷȴ���
                jzwjbsj_model.KZSFBZM = jzwjbsj.KZSFBZM;//���������׼��   ���������׼����
                jzwjbsj_model.JZWDZ = jzwjbsj.JZWDZ;//�������ַ
                jzwjbsj_model.JZWZKM = jzwjbsj.JZWZKM;//������״����   ������״�������
                jzwjbsj_model.JZWTP = jzwjbsj.JZWTP;//������ͼƬ
                jzwjbsj_model.JZWPMT = jzwjbsj.JZWPMT;//������ƽ��ͼ
                jzwjbsj_model.XXDWCCM = jzwjbsj.XXDWCCM;//ѧУ��λ�����   ѧУ��λ��δ����
                jzwjbsj_model.JZWWZZK = jzwjbsj.JZWWZZK;//������λ��״��
                jzwjbsj_model.GHSPWH = jzwjbsj.GHSPWH;//�滮�����ĺ�
                jzwjbsj_model.ZHFZNL = jzwjbsj.ZHFZNL;//�ۺϷ�������
                jzwjbsj_model.GHSYNX = jzwjbsj.GHSYNX;//�滮ʹ������
                jzwjbsj_model.SFYYJBXCS = jzwjbsj.SFYYJBXCS;//�Ƿ���Ԥ�����մ�ʩ   �Ƿ��־�����
                jzwjbsj_model.SFKYYYJBNCS = jzwjbsj.SFKYYYJBNCS;//�Ƿ������Ӧ�����ѳ���   �Ƿ��־�����
                jzwjbsj_model.CQZH = jzwjbsj.CQZH;//��Ȩ֤��
                jzwjbsj_model.JZWYTM = jzwjbsj.JZWYTM;//��������;��   ��������;�����
                jzwjbsj_model.JZWZGD = jzwjbsj.JZWZGD;//�������ܸ߶�
                jzwjbsj_model.WFJDBM = jzwjbsj.WFJDBM;//Σ����������
                jzwjbsj_model.WFJDWH = jzwjbsj.WFJDWH;//Σ�������ĺ�
                jzwjbsj_model.WFJDRQ = jzwjbsj.WFJDRQ;//Σ����������
                jzwjbsj_model.GNFSM = jzwjbsj.GNFSM;//��ů��ʽ��   ��ů��ʽ�����
                jzwjbsj_model.JZWJCXSM = jzwjbsj.JZWJCXSM;//�����������ʽ��   �����������ʽ�����
                jzwjbsj_model.JZWPMXSM = jzwjbsj.JZWPMXSM;//������ƽ����ʽ��   ������ƽ����ʽ�����
                jzwjbsj_model.JZWLBXSM = jzwjbsj.JZWLBXSM;//������¥����ʽ��   ������¥����ʽ�����
                jzwjbsj_model.SFYGZZ = jzwjbsj.SFYGZZ;//�Ƿ��й�����   �Ƿ��־�����
                jzwjbsj_model.QL = jzwjbsj.QL;//Ȧ��   �Ƿ��־�����
                jzwjbsj_model.ZJAQGZWCRQ = jzwjbsj.ZJAQGZWCRQ;//�����ȫ�����������
                jzwjbsj_model.ZJAQGZHYJSYNX = jzwjbsj.ZJAQGZHYJSYNX;//�����ȫ�����Ԥ��ʹ������
                jzwjbsj_model.ZXLXM = jzwjbsj.ZXLXM;//ר������
                jzwjbsj_model.ZYZXTZBZMCM = jzwjbsj.ZYZXTZBZMCM;//����ר��Ͷ�ʲ���������   ����ר��Ͷ�ʲ������ƴ����
                jzwjbsj_model.WWJZDJM = jzwjbsj.WWJZDJM;//���ｨ���ȼ���   ���ｨ���ȼ������
                jzwjbsj_model.JXJFZYF = jzwjbsj.JXJFZYF;//��ѧ�������÷�
                jzwjbsj_model.QZJS = jzwjbsj.QZJS;//���н���
                jzwjbsj_model.QZSYS = jzwjbsj.QZSYS;//����ʵ����
                jzwjbsj_model.QZTSS = jzwjbsj.QZTSS;//����ͼ����
                jzwjbsj_model.QZWJS = jzwjbsj.QZWJS;//����΢����
                jzwjbsj_model.QZYYS = jzwjbsj.QZYYS;//����������
                jzwjbsj_model.QZTYHDS = jzwjbsj.QZTYHDS;//�����������
                jzwjbsj_model.QZQTJFYF = jzwjbsj.QZQTJFYF;//���������̸��÷�
                jzwjbsj_model.SHYF = jzwjbsj.SHYF;//�����÷�
                jzwjbsj_model.QZXSSS = jzwjbsj.QZXSSS;//����ѧ������
                jzwjbsj_model.QZST = jzwjbsj.QZST;//����ʳ��
                jzwjbsj_model.QZCS = jzwjbsj.QZCS;//���в���
                jzwjbsj_model.QZGLF = jzwjbsj.QZGLF;//���й�¯��(��ˮ��)
                jzwjbsj_model.QZYS = jzwjbsj.QZYS;//����ԡ��
                jzwjbsj_model.QZJGSS = jzwjbsj.QZJGSS;//���н̹�����
                jzwjbsj_model.QZQTSHYF = jzwjbsj.QZQTSHYF;//�������������÷�
                jzwjbsj_model.XZBGYF = jzwjbsj.XZBGYF;//�����칫�÷�
                jzwjbsj_model.QZJSBGS = jzwjbsj.QZJSBGS;//���н�ְ���칫��
                jzwjbsj_model.QZWSBJS = jzwjbsj.QZWSBJS;//��������������
                jzwjbsj_model.QZQTXZBGYF = jzwjbsj.QZQTXZBGYF;//�������������칫�÷�
                jzwjbsj_model.QTYF = jzwjbsj.QTYF;//�����÷�
                jzwjbsj_model.GLY = jzwjbsj.GLY;//����Ա
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
            ViewBag.JY_SYZKLst = JBLDAL.GetJY_SYZKSelLst();
            ViewBag.JY_CQLst = JBLDAL.GetJY_CQSelLst();
            ViewBag.JY_JZWFLLst = JBLDAL.GetJY_JZWFLSelLst();
            ViewBag.JY_JZWJGLst = JBLDAL.GetJY_JZWJGSelLst();
            ViewBag.JY_JFLYLst = JBLDAL.GetJY_JFLYSelLst();
            ViewBag.JY_KZSFLDLst = JBLDAL.GetJY_KZSFLDSelLst();
            ViewBag.JY_KZSFBZLst = JBLDAL.GetJY_KZSFBZSelLst();
            ViewBag.JY_JZWZKLst = JBLDAL.GetJY_JZWZKSelLst();
            ViewBag.JY_XXDWCCLst = JBLDAL.GetJY_XXDWCCSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.JY_JZWYTLst = JBLDAL.GetJY_JZWYTSelLst();
            ViewBag.JY_GNFSLst = JBLDAL.GetJY_GNFSSelLst();
            ViewBag.JY_JZWJCXSLst = JBLDAL.GetJY_JZWJCXSSelLst();
            ViewBag.JY_JZWPMXSLst = JBLDAL.GetJY_JZWPMXSSelLst();
            ViewBag.JY_JZWLBXSLst = JBLDAL.GetJY_JZWLBXSSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.JY_ZYZXTZBZMCLst = JBLDAL.GetJY_ZYZXTZBZMCSelLst();
            ViewBag.JY_WWJZDJLst = JBLDAL.GetJY_WWJZDJSelLst();
            
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

        /*public String Delete(String id)
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
