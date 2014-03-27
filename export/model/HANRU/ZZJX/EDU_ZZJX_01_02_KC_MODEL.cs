namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_01_02_KC_metadata))]
    public partial class EDU_ZZJX_01_02_KC
    {
        public EDU_ZZJX_01_02_KC()
        {
            KCH = "";
            KCMC = "";
            KSXS = "";
            SKFSM = "";
        }
        public class EDU_ZZJX_01_02_KC_metadata
        {
            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ̺�")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ�����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCMC { get; set; }


            [Display(Name = "�γ�Ӣ����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCYWM { get; set; }


            [Display(Name = "�γ̱���")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCBM { get; set; }


            [Display(Name = "�γ̽���")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCJS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            [Range(typeof(decimal), "0", "9")]
            public decimal XF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧʱ")]
            [Range(typeof(decimal), "0", "99")]
            public decimal ZXS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ѧʱ")]
            [Range(typeof(decimal), "0", "99")]
            public decimal LLXS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵ��ѧʱ")]
            [Range(typeof(decimal), "0", "99")]
            public decimal SJXS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ѧʱ")]
            [Range(typeof(decimal), "0", "99")]
            public decimal QTXS { get; set; }


            [Display(Name = "�ο���Ŀ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CKSM { get; set; }


            [Display(Name = "���ε�λ")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KKDW { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ʽ")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSXS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ڿη�ʽ��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKFSM { get; set; }


            [Display(Name = "�γ̷���")]
            [Range(typeof(decimal), "0", "9999999")]
            public decimal KCFY { get; set; }


        }
    }
}
