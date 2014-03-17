namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYFZ_03_A01_YQLJLX_metadata))]
    public partial class EDU_ZYFZ_03_A01_YQLJLX
    {
        public EDU_ZYFZ_03_A01_YQLJLX()
        {
            LXMC = "";
        }
        public class EDU_ZYFZ_03_A01_YQLJLX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "类型名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "显示方式")]
            public Int32 XSFS { get; set; }


        }
    }
}
