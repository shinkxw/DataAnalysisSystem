namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_A02_XXSXJD_metadata))]
    public partial class EDU_ZZJX_07_A02_XXSXJD
    {
        public EDU_ZZJX_07_A02_XXSXJD()
        {
            JDM = "";
            JDKSSJ = new DateTime(1900, 1, 1);
            JDJSSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZJX_07_A02_XXSXJD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习阶段")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习计划")]
            public Int32 SXJHID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "阶段名")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JDM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "阶段开始时间")]
            public DateTime JDKSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "阶段结束时间")]
            public DateTime JDJSSJ { get; set; }


        }
    }
}
