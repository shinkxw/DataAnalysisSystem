namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_01_A05_JZGKZSH_metadata))]
    public partial class EDU_ZXJZ_01_A05_JZGKZSH
    {
        public EDU_ZXJZ_01_A05_JZGKZSH()
        {
            SSDZB = "";
            BYYX = "";
            XXJL = "";
            GZJL = "";
            HJQK = "";
            ZC = "";
        }
        public class EDU_ZXJZ_01_A05_JZGKZSH_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "教工基本信息")]
            public Int32 JZGID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "工龄")]
            public Int32 GL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教龄")]
            public Int32 JL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "高级任职年限")]
            public Int32 GJRZNX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "中级任职年限")]
            public Int32 ZJRZNX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "初级任职年限")]
            public Int32 CJRZNX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "任职年限")]
            public Int32 RZNX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "所属党支部")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SSDZB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "毕业院校")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BYYX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学习经历")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXJL { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "工作经历")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZJL { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "获奖情况")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HJQK { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "职称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZC { get; set; }


        }
    }
}
