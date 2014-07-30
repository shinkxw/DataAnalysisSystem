namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_31_A03_XGRTXL_metadata))]
    public partial class EDU_OAXT_31_A03_XGRTXL
    {
        public EDU_OAXT_31_A03_XGRTXL()
        {
            GRID = "";
            NR = "";
        }
        public class EDU_OAXT_31_A03_XGRTXL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "个人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "字段配置表")]
            public Int32 ZDPZID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "内容")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


        }
    }
}
