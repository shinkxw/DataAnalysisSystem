namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_36_A01_BJGZLB_metadata))]
    public partial class EDU_OAXT_36_A01_BJGZLB
    {
        public EDU_OAXT_36_A01_BJGZLB()
        {
            GZLBMC = "";
            DJRYIDLB = "";
            DJRYXMLB = "";
        }
        public class EDU_OAXT_36_A01_BJGZLB_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "工作类别名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZLBMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "登记人员ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJRYIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "登记人员姓名列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJRYXMLB { get; set; }


        }
    }
}
