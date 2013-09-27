namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_10_A02_JSGCXPJXM_metadata))]
    public partial class EDU_ZXJX_10_A02_JSGCXPJXM
    {
        public EDU_ZXJX_10_A02_JSGCXPJXM()
        {
            XMMC = "";
            DWMC = "";
        }
        public class EDU_ZXJX_10_A02_JSGCXPJXM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "项目名称")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "单位")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DWMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考核最高分")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal ZGF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "权重")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZ { get; set; }


        }
    }
}
