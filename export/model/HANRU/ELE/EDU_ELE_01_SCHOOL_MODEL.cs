namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_01_SCHOOL_metadata))]
    public partial class EDU_ELE_01_SCHOOL
    {
        public EDU_ELE_01_SCHOOL()
        {
            SCHOOLNAME = "";
            MatchURL = "";
        }
        public class EDU_ELE_01_SCHOOL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学校名称")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SCHOOLNAME { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校类型")]
            public Int32 SCHOOLTYPE { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学年")]
            public Int32 XNID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "匹配url")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MatchURL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "日志级别")]
            public Int32 LogLevel { get; set; }


        }
    }
}
