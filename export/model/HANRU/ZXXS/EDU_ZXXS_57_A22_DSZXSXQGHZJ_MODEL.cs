namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_57_A22_DSZXSXQGHZJ_metadata))]
    public partial class EDU_ZXXS_57_A22_DSZXSXQGHZJ
    {
        public EDU_ZXXS_57_A22_DSZXSXQGHZJ()
        {
            XYSPCSMB = "";
            ZJTSKJZY = "";
            BXQDNLMB = "";
            XQHJXX = "";
            YXZSDXYWHHD = "";
            HGBXQ = "";
            TJSJ = DateTime.Now;
        }
        public class EDU_ZXXS_57_A22_DSZXSXQGHZJ_metadata
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
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学业水平测试目标")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XYSPCSMB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "自己提升空间怎样")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZJTSKJZY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "本学期的努力目标")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BXQDNLMB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学期获奖信息")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQHJXX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "印象最深的校园文化活动")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YXZSDXYWHHD { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "回顾本学期")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HGBXQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


        }
    }
}
