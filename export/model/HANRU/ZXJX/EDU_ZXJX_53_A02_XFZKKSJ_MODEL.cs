namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A02_XFZKKSJ_metadata))]
    public partial class EDU_ZXJX_53_A02_XFZKKSJ
    {
        public EDU_ZXJX_53_A02_XFZKKSJ()
        {
            SJMC = "";
            SDIDLB = "";
            SDMCLB = "";
        }
        public class EDU_ZXJX_53_A02_XFZKKSJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ʱ������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ʱ��ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SDIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ʱ�������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SDMCLB { get; set; }


        }
    }
}
