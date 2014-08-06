namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_50_A14_PJTM_metadata))]
    public partial class EDU_ZZJX_50_A14_PJTM
    {
        public EDU_ZZJX_50_A14_PJTM()
        {
            TMMC = "";
            PJZB = "";
        }
        public class EDU_ZZJX_50_A14_PJTM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评教")]
            public Int32 PJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评分方式")]
            public Int32 PFFSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "题目名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TMMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评教指标")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PJZB { get; set; }


        }
    }
}
