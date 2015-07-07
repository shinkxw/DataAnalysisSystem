namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_25_A02_CWEJFLKM_metadata))]
    public partial class EDU_ZZJG_25_A02_CWEJFLKM
    {
        public EDU_ZZJG_25_A02_CWEJFLKM()
        {
            EJKMDM = "";
            EJKMMC = "";
        }
        public class EDU_ZZJG_25_A02_CWEJFLKM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "一级科目")]
            public Int32 YJKMID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "二级科目代码")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String EJKMDM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "二级科目名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String EJKMMC { get; set; }


        }
    }
}
