namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_01_A02_JSRK_metadata))]
    public partial class EDU_ZZJX_01_A02_JSRK
    {
        public EDU_ZZJX_01_A02_JSRK()
        {
            KCH = "";
            JHBH = "";
            JXDG = "";
        }
        public class EDU_ZZJX_01_A02_JSRK_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课序号")]
            public Int32 KXH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师表")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程号")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "计划编号")]
            [StringLength(5)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHBH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "教学大纲")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXDG { get; set; }


        }
    }
}
