namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_01_01_KC_metadata))]
    public partial class EDU_ZXJX_01_01_KC
    {
        public EDU_ZXJX_01_01_KC()
        {
            KCH = "";
            KCM = "";
            KCDJM = "";
            KCBM = "";
            SKFSM = "";
        }
        public class EDU_ZXJX_01_01_KC_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ̺�")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Display(Name = "�γ�����")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ���")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ̵ȼ���")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCDJM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ̱���")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCBM { get; set; }


            [Display(Name = "�γ̼��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCJJ { get; set; }


            [Display(Name = "�γ�Ҫ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCYQ { get; set; }


            [Display(Name = "��ѧʱ")]
            [Range(typeof(decimal), "0", "999")]
            public decimal ZXS { get; set; }


            [Display(Name = "��ѧʱ")]
            [Range(typeof(decimal), "0", "99")]
            public decimal ZHXS { get; set; }


            [Display(Name = "��ѧѧʱ")]
            [Range(typeof(decimal), "0", "999")]
            public decimal ZXXS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ڿη�ʽ��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKFSM { get; set; }


            [Display(Name = "�̲ı���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JCBM { get; set; }


            [Display(Name = "�ο���Ŀ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CKSM { get; set; }


            [Display(Name = "��������")]
            public Int32 CDXZ { get; set; }


            [Display(Name = "�Ƿ�����")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFZK { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


        }
    }
}
