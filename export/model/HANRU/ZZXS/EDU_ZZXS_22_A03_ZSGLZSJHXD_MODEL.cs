namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_22_A03_ZSGLZSJHXD_metadata))]
    public partial class EDU_ZZXS_22_A03_ZSGLZSJHXD
    {
        public EDU_ZZXS_22_A03_ZSGLZSJHXD()
        {
            ZYMC = "";
            ZYJS = "";
        }
        public class EDU_ZZXS_22_A03_ZSGLZSJHXD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "计划")]
            public Int32 JHID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "专业名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业")]
            public Int32 ZYID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "招生人数")]
            public Int32 ZSRS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "专业介绍")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYJS { get; set; }


        }
    }
}
