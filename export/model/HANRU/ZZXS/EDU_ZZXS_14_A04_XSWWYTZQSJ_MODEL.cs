namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_14_A04_XSWWYTZQSJ_metadata))]
    public partial class EDU_ZZXS_14_A04_XSWWYTZQSJ
    {
        public EDU_ZZXS_14_A04_XSWWYTZQSJ()
        {
            JXBMC = "";
            ZRSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZXS_14_A04_XSWWYTZQSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "报告类型")]
            public Int32 BGLX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "教学部名称")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXBMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "报告人类型")]
            public Int32 BGRLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "报告人")]
            public Int32 BGRID { get; set; }


            [Display(Name = "内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


            [Display(Name = "值日时间")]
            public DateTime ZRSJ { get; set; }


        }
    }
}
