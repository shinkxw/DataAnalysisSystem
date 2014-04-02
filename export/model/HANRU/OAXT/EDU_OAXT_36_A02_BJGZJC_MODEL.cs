namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_36_A02_BJGZJC_metadata))]
    public partial class EDU_OAXT_36_A02_BJGZJC
    {
        public EDU_OAXT_36_A02_BJGZJC()
        {
            BJ = "";
            RQ = DateTime.Now;
            BJMC = "";
        }
        public class EDU_OAXT_36_A02_BJGZJC_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "工作类别")]
            public Int32 GZLBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "日期")]
            public DateTime RQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "结果")]
            public Int32 JG { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJMC { get; set; }


        }
    }
}
