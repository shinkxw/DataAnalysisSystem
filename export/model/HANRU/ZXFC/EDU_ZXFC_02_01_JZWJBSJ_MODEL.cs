namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXFC_02_01_JZWJBSJ_metadata))]
    public partial class EDU_ZXFC_02_01_JZWJBSJ
    {
        public EDU_ZXFC_02_01_JZWJBSJ()
        {
            JZWH = "";
            JZWMC = "";
            SYZKM = "";
            FWCQ = "";
            JZWFLM = "";
            JZWJGM = "";
            KZSFBZM = "";
            JZWDZ = "";
            JZWZKM = "";
            JZWWZZK = "";
            GHSPWH = "";
            CQZH = "";
            SFYGZZ = "";
            QL = "";
            GLY = "";
        }
        public class EDU_ZXFC_02_01_JZWJBSJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����������")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ʹ��״����")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SYZKM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ݲ�Ȩ")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FWCQ { get; set; }


            [Display(Name = "У����")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����������")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWFLM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ṹ��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWJGM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���������")]
            [Range(typeof(decimal), "0", "99")]
            public decimal JZWCS { get; set; }


            [Display(Name = "��������")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JCNY { get; set; }


            [Display(Name = "������Ͷ���ܶ�")]
            [Range(typeof(decimal), "0", "9999999")]
            public decimal JZWTZZE { get; set; }


            [Display(Name = "������Դ��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JFLYM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ܽ������")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal ZJZMJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʹ�����")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal ZSYMJ { get; set; }


            [Display(Name = "��������Ҷ���")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KZSFLDM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���������׼��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KZSFBZM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������ַ")]
            [StringLength(180)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWDZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������״����")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWZKM { get; set; }


            [Display(Name = "������ͼƬ")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWTP { get; set; }


            [Display(Name = "������ƽ��ͼ")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWPMT { get; set; }


            [Display(Name = "ѧУ��λ�����")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXDWCCM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������λ��״��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWWZZK { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�滮�����ĺ�")]
            [StringLength(24)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GHSPWH { get; set; }


            [Display(Name = "�ۺϷ�������")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZHFZNL { get; set; }


            [Display(Name = "�滮ʹ������")]
            [Range(typeof(decimal), "0", "999")]
            public decimal GHSYNX { get; set; }


            [Display(Name = "�Ƿ���Ԥ�����մ�ʩ")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFYYJBXCS { get; set; }


            [Display(Name = "�Ƿ������Ӧ�����ѳ���")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFKYYYJBNCS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ȩ֤��")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CQZH { get; set; }


            [Display(Name = "��������;��")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWYTM { get; set; }


            [Display(Name = "�������ܸ߶�")]
            [Range(typeof(decimal), "0", "999")]
            public decimal JZWZGD { get; set; }


            [Display(Name = "Σ����������")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WFJDBM { get; set; }


            [Display(Name = "Σ�������ĺ�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WFJDWH { get; set; }


            [Display(Name = "Σ����������")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WFJDRQ { get; set; }


            [Display(Name = "��ů��ʽ��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GNFSM { get; set; }


            [Display(Name = "�����������ʽ��")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWJCXSM { get; set; }


            [Display(Name = "������ƽ����ʽ��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWPMXSM { get; set; }


            [Display(Name = "������¥����ʽ��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWLBXSM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ��й�����")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFYGZZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ȧ��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QL { get; set; }


            [Display(Name = "�����ȫ�����������")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZJAQGZWCRQ { get; set; }


            [Display(Name = "�����ȫ�����Ԥ��ʹ������")]
            [Range(typeof(decimal), "0", "99")]
            public decimal ZJAQGZHYJSYNX { get; set; }


            [Display(Name = "ר������")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZXLXM { get; set; }


            [Display(Name = "����ר��Ͷ�ʲ���������")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYZXTZBZMCM { get; set; }


            [Display(Name = "���ｨ���ȼ���")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WWJZDJM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧ�������÷�")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal JXJFZYF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���н���")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZJS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʵ����")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZSYS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ͼ����")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZTSS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����΢����")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZWJS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����������")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZYYS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����������")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZTYHDS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���������̸��÷�")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZQTJFYF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����÷�")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal SHYF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ѧ������")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZXSSS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʳ��")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZST { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���в���")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZCS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���й�¯��(��ˮ��)")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZGLF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ԡ��")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZYS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���н̹�����")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZJGSS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�������������÷�")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZQTSHYF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����칫�÷�")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal XZBGYF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���н�ְ���칫��")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZJSBGS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������������")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZWSBJS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�������������칫�÷�")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZQTXZBGYF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����÷�")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QTYF { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����Ա")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GLY { get; set; }


        }
    }
}
