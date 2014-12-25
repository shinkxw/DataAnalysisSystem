namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYFZ_02_A07_XQGRLM_metadata))]
    public partial class EDU_ZYFZ_02_A07_XQGRLM
    {
        public EDU_ZYFZ_02_A07_XQGRLM()
        {
            YHID = "";
            LMIDLB = "";
            LMMCLB = "";
        }
        public class EDU_ZYFZ_02_A07_XQGRLM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "栏目ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LMIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "栏目名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LMMCLB { get; set; }


        }
    }
}
