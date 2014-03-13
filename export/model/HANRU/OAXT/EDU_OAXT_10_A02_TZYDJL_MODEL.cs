namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_10_A02_TZYDJL_metadata))]
    public partial class EDU_OAXT_10_A02_TZYDJL
    {
        public EDU_OAXT_10_A02_TZYDJL()
        {
            BTZRID = "";
            YDRQ = DateTime.Now;
            SFYD = "";
        }
        public class EDU_OAXT_10_A02_TZYDJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "通知阅读记录")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "通知")]
            public Int32 TZID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "被通知人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BTZRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "阅读日期")]
            public DateTime YDRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否已阅读")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFYD { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "删除状态")]
            public Int32 SCZT { get; set; }


        }
    }
}
