namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_36_A01_JXJH_metadata))]
    public partial class EDU_ZZJX_36_A01_JXJH
    {
        public EDU_ZZJX_36_A01_JXJH()
        {
            JHMC = "";
            KSSJ = DateTime.Now;
            JSSJ = DateTime.Now;
            JXNR = "";
            JXXS = "";
        }
        public class EDU_ZZJX_36_A01_JXJH_metadata
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
            [Display(Name = "计划名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开始时间")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "结束时间")]
            public DateTime JSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "见习单位")]
            public Int32 JXDWID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "见习内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXNR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "见习学生")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXXS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否开启")]
            public Int32 SFKQ { get; set; }


        }
    }
}
