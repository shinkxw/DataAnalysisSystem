namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_25_A03_CWSJFLKM_metadata))]
    public partial class EDU_ZZJG_25_A03_CWSJFLKM
    {
        public EDU_ZZJG_25_A03_CWSJFLKM()
        {
            SJKMDM = "";
            SJKMMC = "";
        }
        public class EDU_ZZJG_25_A03_CWSJFLKM_metadata
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


            [Required(ErrorMessage = "必填")]
            [Display(Name = "二级科目")]
            public Int32 EJKMID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "三级科目代码")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJKMDM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "三级科目名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJKMMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否合计打印")]
            public Int32 SFHJDY { get; set; }


        }
    }
}
