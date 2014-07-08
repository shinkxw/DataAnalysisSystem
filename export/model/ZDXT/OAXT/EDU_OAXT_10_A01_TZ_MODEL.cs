namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_10_A01_TZ_metadata))]
    public partial class EDU_OAXT_10_A01_TZ
    {
        public EDU_OAXT_10_A01_TZ()
        {
            FSRID = "";
            BT = "";
            NR = "";
            TJRQ = DateTime.Now;
            JSRIDLB = "";
            JSRMZLB = "";
            YYDRMZLB = "";
        }
        public class EDU_OAXT_10_A01_TZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "通知")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发送人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FSRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发送人类别")]
            public Int32 FSRLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "标题")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


            [Display(Name = "附件")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加日期")]
            public DateTime TJRQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "接收人数")]
            public Int32 JSRS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "接收人ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSRIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "接收人名字列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSRMZLB { get; set; }


            [Display(Name = "已阅读人ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YYDRIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "已阅读人名字列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YYDRMZLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发送状态")]
            public Int32 FSZT { get; set; }


        }
    }
}
