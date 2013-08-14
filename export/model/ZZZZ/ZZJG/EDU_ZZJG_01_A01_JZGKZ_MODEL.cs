namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_01_A01_JZGKZ_metadata))]
    public partial class EDU_ZZJG_01_A01_JZGKZ
    {
        public EDU_ZZJG_01_A01_JZGKZ()
        {
            GZJY = "";
            LDJN = "";
            XXJL = "";
        }
        public class EDU_ZZJG_01_A01_JZGKZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "教工基本信息")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教龄")]
            public Int32 JL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "工龄")]
            public Int32 GL { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "工作经验")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZJY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "劳动技能")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LDJN { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学习经历")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXJL { get; set; }


        }
    }
}
