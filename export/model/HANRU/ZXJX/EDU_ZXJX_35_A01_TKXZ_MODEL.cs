namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_35_A01_TKXZ_metadata))]
    public partial class EDU_ZXJX_35_A01_TKXZ
    {
        public EDU_ZXJX_35_A01_TKXZ()
        {
            XZMC = "";
            XZCY = "";
            XZCYMC = "";
        }
        public class EDU_ZXJX_35_A01_TKXZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "小组名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "小组成员")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZCY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "小组成员名称")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZCYMC { get; set; }


        }
    }
}
