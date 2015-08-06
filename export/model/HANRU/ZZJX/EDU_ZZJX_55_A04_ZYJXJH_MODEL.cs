namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A04_ZYJXJH_metadata))]
    public partial class EDU_ZZJX_55_A04_ZYJXJH
    {
        public EDU_ZZJX_55_A04_ZYJXJH()
        {
            KCBH = "";
            KKDW = "";
            KSXS = "";
            SKFSM = "";
            JXDG = "";
        }
        public class EDU_ZZJX_55_A04_ZYJXJH_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业")]
            public Int32 ZYID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分制信息")]
            public Int32 FZXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课程评分类型")]
            public Int32 KCPFLXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCBH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "总学分")]
            [Range(typeof(decimal), "0", "999")]
            public decimal ZXF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "总学时")]
            public Int32 ZXS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "开课单位")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KKDW { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考试形式")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSXS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "授课方式码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKFSM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "教学大纲")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXDG { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否使用")]
            public Int32 SFSY { get; set; }


        }
    }
}
