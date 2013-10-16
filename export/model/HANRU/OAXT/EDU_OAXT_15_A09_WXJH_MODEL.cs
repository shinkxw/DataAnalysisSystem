namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_15_A09_WXJH_metadata))]
    public partial class EDU_OAXT_15_A09_WXJH
    {
        public EDU_OAXT_15_A09_WXJH()
        {
            Title = "";
            Content = "";
        }
        public class EDU_OAXT_15_A09_WXJH_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "库存表")]
            public Int32 AID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "计划标题")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Title { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "维修内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Content { get; set; }


        }
    }
}
