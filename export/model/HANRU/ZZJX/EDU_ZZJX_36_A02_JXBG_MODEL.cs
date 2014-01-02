namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_36_A02_JXBG_metadata))]
    public partial class EDU_ZZJX_36_A02_JXBG
    {
        public EDU_ZZJX_36_A02_JXBG()
        {
            BGNR = "";
            BGSJ = DateTime.Now;
            BGBT = "";
        }
        public class EDU_ZZJX_36_A02_JXBG_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "见习计划")]
            public Int32 JXJHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生信息")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "报告内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BGNR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "报告时间")]
            public DateTime BGSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "报告标题")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BGBT { get; set; }


        }
    }
}
