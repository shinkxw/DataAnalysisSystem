namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_22_A06_HYJYMB_metadata))]
    public partial class EDU_OAXT_22_A06_HYJYMB
    {
        public EDU_OAXT_22_A06_HYJYMB()
        {
            MBMC = "";
            MBNR = "";
        }
        public class EDU_OAXT_22_A06_HYJYMB_metadata
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
            [Display(Name = "模板内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MBNR { get; set; }


        }
    }
}
