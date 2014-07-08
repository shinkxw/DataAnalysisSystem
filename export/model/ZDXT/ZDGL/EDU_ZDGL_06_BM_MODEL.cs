namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_06_BM_metadata))]
    public partial class EDU_ZDGL_06_BM
    {
        public EDU_ZDGL_06_BM()
        {
            BMMC = "";
            BMYHLB = "";
            SXDWLB = "";
        }
        public class EDU_ZDGL_06_BM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "部门名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BMMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "部门用户列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BMYHLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "送修单位列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXDWLB { get; set; }


        }
    }
}
