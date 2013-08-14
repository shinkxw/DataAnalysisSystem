namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZBG_03_04_CP_metadata))]
    public partial class EDU_ZZBG_03_04_CP
    {
        public EDU_ZZBG_03_04_CP()
        {
            PFR = "";
            PFDW = "";
            PFYJ = "";
            PFRQ = "";
        }
        public class EDU_ZZBG_03_04_CP_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "文件")]
            public Int32 WJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "批复人")]
            public Int32 PFRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "批复人")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PFR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "批复单位")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PFDW { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "批复意见")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PFYJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "批复日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PFRQ { get; set; }


        }
    }
}
