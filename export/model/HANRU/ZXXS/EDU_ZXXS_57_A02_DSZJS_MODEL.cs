namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_57_A02_DSZJS_metadata))]
    public partial class EDU_ZXXS_57_A02_DSZJS
    {
        public EDU_ZXXS_57_A02_DSZJS()
        {
            JSMC = "";
            GNIDLB = "";
            GNMCLB = "";
        }
        public class EDU_ZXXS_57_A02_DSZJS_metadata
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
            [Display(Name = "角色名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "功能ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GNIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "功能名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GNMCLB { get; set; }


        }
    }
}
