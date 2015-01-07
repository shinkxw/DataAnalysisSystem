namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_57_A23_DSZXSXQMYGH_metadata))]
    public partial class EDU_ZXXS_57_A23_DSZXSXQMYGH
    {
        public EDU_ZXXS_57_A23_DSZXSXQMYGH()
        {
            BYMB = "";
            BYXXSH = "";
            XYHDSH = "";
            ZLNXYYYDS = "";
            DLNXS = "";
            GDDS = "";
            TJSJ = DateTime.Now;
        }
        public class EDU_ZXXS_57_A23_DSZXSXQMYGH_metadata
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


            [Required(ErrorMessage = "必填")]
            [Display(Name = "月份")]
            public Int32 YF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "本月目标")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BYMB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "本月学习收获")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BYXXSH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "校园活动收获")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XYHDSH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "做了哪些有意义的事")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZLNXYYYDS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "读了哪些书")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DLNXS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "感动的事")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GDDS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


        }
    }
}
