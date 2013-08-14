namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXX_01_01_ZZXX_metadata))]
    public partial class EDU_ZZXX_01_01_ZZXX
    {
        public EDU_ZZXX_01_01_ZZXX()
        {
            XXDM = "";
            XXMC = "";
            XXJBZM = "";
            XXZGBMM = "";
            XXDZ = "";
            XXYZBM = "";
            XZQHM = "";
            JXNY = "";
            XQR = "";
            XXPGQKSM = "";
            ZYDZ = "";
            FDDBRH = "";
            FRZSH = "";
            LXDH = "";
            CZDH = "";
            DZXX = "";
        }
        public class EDU_ZZXX_01_01_ZZXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
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
            [Display(Name = "ѧУ�ٰ�����")]
            [StringLength(3)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXJBZM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧУ���ܲ�����")]
            [StringLength(3)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXZGBMM { get; set; }


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


            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLBJ { get; set; }


            [Display(Name = "��ʷ�ظ�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LSYG { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУУ����")]
            [Range(typeof(decimal), "0", "99")]
            public decimal XXXQS { get; set; }


            [Display(Name = "ѧУ��������")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXPGLX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧУ�������˵��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXPGQKSM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ҳ��ַ")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYDZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���������˺�")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FDDBRH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����֤���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FRZSH { get; set; }


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


        }
    }
}
