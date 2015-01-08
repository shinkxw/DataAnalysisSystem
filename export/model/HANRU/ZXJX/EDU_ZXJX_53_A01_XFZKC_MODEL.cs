namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A01_XFZKC_metadata))]
    public partial class EDU_ZXJX_53_A01_XFZKC
    {
        public EDU_ZXJX_53_A01_XFZKC()
        {
            KCH = "";
        }
        public class EDU_ZXJX_53_A01_XFZKC_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ̺�")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Display(Name = "�γ����")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCLB { get; set; }


            [Display(Name = "������Ŀ")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SSKM { get; set; }


            [Display(Name = "�γ�����")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCMC { get; set; }


            [Display(Name = "�Ƿ����")]
            public Int32 SFBX { get; set; }


            [Display(Name = "�Ƿ�ʹ��")]
            public Int32 SFSY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


        }
    }
}
