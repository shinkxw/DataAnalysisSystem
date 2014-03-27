namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXX_01_01_ZXXX_metadata))]
    public partial class EDU_ZXXX_01_01_ZXXX
    {
        public EDU_ZXXX_01_01_ZXXX()
        {
            XXDM = "";
            XXMC = "";
            XXDZ = "";
            XXYZBM = "";
            XZQHM = "";
            JXNY = "";
            XQR = "";
            XXBXLXM = "";
            XXZGBMM = "";
            FRZSH = "";
            XZXM = "";
            LXDH = "";
            CZDH = "";
            DZXX = "";
            ZYDZ = "";
            LSYG = "";
            XXBBM = "";
            SSZGDWM = "";
            SZDCXLXM = "";
            SZDJJSXM = "";
            SZDMZSX = "";
            ZJXYYM = "";
            FJXYYM = "";
        }
        public class EDU_ZXXX_01_01_ZXXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧУ����")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXDM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧУ����")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXMC { get; set; }


            [Display(Name = "ѧУӢ������")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXYWMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧУ��ַ")]
            [StringLength(180)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXDZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧУ��������")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXYZBM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����������")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZQHM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��У����")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXNY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "У����")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧУ��ѧ������")]
            [StringLength(3)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXBXLXM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧУ���ܲ�����")]
            [StringLength(3)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXZGBMM { get; set; }


            [Display(Name = "���������˺�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FDDBRH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����֤���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FRZSH { get; set; }


            [Display(Name = "У������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZGH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "У������")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZXM { get; set; }


            [Display(Name = "��ί�����˺�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DWFZRH { get; set; }


            [Display(Name = "��֯������")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZJGM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ϵ�绰")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXDH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����绰")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CZDH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(40)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DZXX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ҳ��ַ")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYDZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʷ�ظ�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LSYG { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧУ�����")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXBBM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������ܵ�λ��")]
            [StringLength(3)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SSZGDWM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ڵس���������")]
            [StringLength(3)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SZDCXLXM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ڵؾ���������")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SZDJJSXM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ڵ���������")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SZDMZSX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Сѧѧ��")]
            [Range(typeof(decimal), "0", "99")]
            public decimal XXXZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Сѧ��ѧ����")]
            [Range(typeof(decimal), "0", "9")]
            public decimal XXRXNL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ѧ��")]
            [Range(typeof(decimal), "0", "99")]
            public decimal CZXZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ѧ����")]
            [Range(typeof(decimal), "0", "99")]
            public decimal CZRXNL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ѧ��")]
            [Range(typeof(decimal), "0", "99")]
            public decimal GZXZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ѧ������")]
            [StringLength(3)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZJXYYM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ѧ������")]
            [StringLength(3)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJXYYM { get; set; }


            [Display(Name = "�����뾶")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSBJ { get; set; }


        }
    }
}
