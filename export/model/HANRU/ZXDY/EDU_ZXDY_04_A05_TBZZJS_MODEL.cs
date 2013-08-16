namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_04_A05_TBZZJS_metadata))]
    public partial class EDU_ZXDY_04_A05_TBZZJS
    {
        public EDU_ZXDY_04_A05_TBZZJS()
        {
            JSLX = "";
            JSID = "";
        }
        public class EDU_ZXDY_04_A05_TBZZJS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "特别值周教师表")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "教师类型")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSLX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "教师")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSID { get; set; }


            [Display(Name = "有效日期")]
            public DateTime YXRQ { get; set; }


        }
    }
}
