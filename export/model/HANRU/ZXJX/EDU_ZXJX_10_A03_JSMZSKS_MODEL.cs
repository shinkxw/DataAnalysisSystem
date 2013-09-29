namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_10_A03_JSMZSKS_metadata))]
    public partial class EDU_ZXJX_10_A03_JSMZSKS
    {
        public EDU_ZXJX_10_A03_JSMZSKS()
        {
            KCH = "";
        }
        public class EDU_ZXJX_10_A03_JSMZSKS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "校历周")]
            public Int32 XLZID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师任课")]
            public Int32 JSRKID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程号")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上课节数")]
            public Int32 SKJS { get; set; }


        }
    }
}
