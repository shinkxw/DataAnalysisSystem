namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_21_A01_SXBJGL_metadata))]
    public partial class EDU_ZZJX_21_A01_SXBJGL
    {
        public EDU_ZZJX_21_A01_SXBJGL()
        {
            BJMC = "";
        }
        public class EDU_ZZJX_21_A01_SXBJGL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学年")]
            public Int32 XNID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "班主任")]
            public Int32 BZRID { get; set; }


        }
    }
}
