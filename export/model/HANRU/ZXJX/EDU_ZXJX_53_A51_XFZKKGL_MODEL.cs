namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A51_XFZKKGL_metadata))]
    public partial class EDU_ZXJX_53_A51_XFZKKGL
    {
        public EDU_ZXJX_53_A51_XFZKKGL()
        {
            KKR = "";
            KCNR = "";
            HJQK = "";
        }
        public class EDU_ZXJX_53_A51_XFZKKGL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�γ�����")]
            public Int32 KCMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KKR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ�����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCNR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HJQK { get; set; }


        }
    }
}
