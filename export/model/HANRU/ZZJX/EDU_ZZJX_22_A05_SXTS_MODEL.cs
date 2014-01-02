namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A05_SXTS_metadata))]
    public partial class EDU_ZZJX_22_A05_SXTS
    {
        public EDU_ZZJX_22_A05_SXTS()
        {
            TsTime = DateTime.Now;
            TsReason = "";
            TsResult = "";
            ComSuggest = "";
        }
        public class EDU_ZZJX_22_A05_SXTS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "企业")]
            public Int32 ComID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 StuID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "投诉时间")]
            public DateTime TsTime { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "投诉原因")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TsReason { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "投诉结果")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TsResult { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "投诉建议")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ComSuggest { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "投诉类型")]
            public Int32 TypeID { get; set; }


        }
    }
}
