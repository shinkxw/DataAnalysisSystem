namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_MHXT_JSXX_metadata))]
    public partial class EDU_WZXT_MHXT_JSXX
    {
        public EDU_WZXT_MHXT_JSXX()
        {
            JSMC = "";
            LMIDLB = "";
        }
        public class EDU_WZXT_MHXT_JSXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "角色")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "角色名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "角色类型")]
            public Int32 JSLX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "栏目ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LMIDLB { get; set; }


            [Display(Name = "栏目名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LMMCLB { get; set; }


        }
    }
}
