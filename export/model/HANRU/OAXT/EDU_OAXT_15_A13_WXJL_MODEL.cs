namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_15_A13_WXJL_metadata))]
    public partial class EDU_OAXT_15_A13_WXJL
    {
        public EDU_OAXT_15_A13_WXJL()
        {
            BZ = "";
        }
        public class EDU_OAXT_15_A13_WXJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "物品")]
            public Int32 WPID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "维修状态")]
            public Int32 WXZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
