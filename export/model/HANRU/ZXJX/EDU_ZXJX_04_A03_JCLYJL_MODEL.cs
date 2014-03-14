namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_04_A03_JCLYJL_metadata))]
    public partial class EDU_ZXJX_04_A03_JCLYJL
    {
        public EDU_ZXJX_04_A03_JCLYJL()
        {
            NJID = "";
            BJID = "";
            LYR = "";
            LYSJ = DateTime.Now;
        }
        public class EDU_ZXJX_04_A03_JCLYJL_metadata
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
            [Display(Name = "年级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教材")]
            public Int32 JCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "领用数量")]
            public Int32 LYSL { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "领用人")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LYR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "领用时间")]
            public DateTime LYSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "经手人")]
            public Int32 JSRID { get; set; }


        }
    }
}
