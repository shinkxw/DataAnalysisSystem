namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_03_A01_XQXFGL_metadata))]
    public partial class EDU_ZZJX_03_A01_XQXFGL
    {
        public EDU_ZZJX_03_A01_XQXFGL()
        {
            JHBH = "";
        }
        public class EDU_ZZJX_03_A01_XQXFGL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教学计划")]
            public Int32 JXJHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "计划编号")]
            [StringLength(5)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHBH { get; set; }


            [Display(Name = "最高学分")]
            [Range(typeof(decimal), "0", "99")]
            public decimal ZDXF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最低学分")]
            [Range(typeof(decimal), "0", "99")]
            public decimal ZGXF { get; set; }


        }
    }
}
