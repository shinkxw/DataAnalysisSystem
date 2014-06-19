namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_18_A07_BGMB_metadata))]
    public partial class EDU_ZZXS_18_A07_BGMB
    {
        public EDU_ZZXS_18_A07_BGMB()
        {
            MBMC = "";
            NR = "";
        }
        public class EDU_ZZXS_18_A07_BGMB_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "模板名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MBMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


        }
    }
}
