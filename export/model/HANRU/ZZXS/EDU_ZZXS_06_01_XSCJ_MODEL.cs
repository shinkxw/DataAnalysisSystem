namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_06_01_XSCJ_metadata))]
    public partial class EDU_ZZXS_06_01_XSCJ
    {
        public EDU_ZZXS_06_01_XSCJ()
        {
            KCH = "";
            KCMC = "";
            XQMC = "";
            CJLRRQ = "";
        }
        public class EDU_ZZXS_06_01_XSCJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ̺�")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ�����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            [Range(typeof(decimal), "0", "99")]
            public decimal XF { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧ������")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQMC { get; set; }


            [Display(Name = "ƽʱ�ɼ�")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal PSCJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ɼ�")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal CJ { get; set; }


            [Display(Name = "��������")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSXZ { get; set; }


            [Display(Name = "�ον̹�")]
            public Int32 RKJGID { get; set; }


            [Display(Name = "�ον̹���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RKJGH { get; set; }


            [Display(Name = "�ɼ�¼��̹�")]
            public Int32 CJLRJGID { get; set; }


            [Display(Name = "�ɼ�¼��̹���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CJLRJGH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ɼ�¼������")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CJLRRQ { get; set; }


            [Display(Name = "���гɼ�")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal QZCJ { get; set; }


            [Display(Name = "��ĩ�ɼ�")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal QMCJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�γ��嵥")]
            public Int32 KCQDID { get; set; }


        }
    }
}
