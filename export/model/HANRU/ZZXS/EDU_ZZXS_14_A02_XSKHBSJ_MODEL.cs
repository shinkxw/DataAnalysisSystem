namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_14_A02_XSKHBSJ_metadata))]
    public partial class EDU_ZZXS_14_A02_XSKHBSJ
    {
        public EDU_ZZXS_14_A02_XSKHBSJ()
        {
            KHBMC = "";
            KHBJDMLB = "";
            KHXMIDLB = "";
            KHJSMCLB = "";
        }
        public class EDU_ZZXS_14_A02_XSKHBSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考核表名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KHBMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考核班级代码列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KHBJDMLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考核项目ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KHXMIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考核教师名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KHJSMCLB { get; set; }


            [Display(Name = "考核教师ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KHJSIDLB { get; set; }


        }
    }
}
