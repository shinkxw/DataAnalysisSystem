namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYFZ_02_A05_GZNRPL_metadata))]
    public partial class EDU_ZYFZ_02_A05_GZNRPL
    {
        public EDU_ZYFZ_02_A05_GZNRPL()
        {
            PLNR = "";
            PLR = "";
            PLSJ = DateTime.Now;
        }
        public class EDU_ZYFZ_02_A05_GZNRPL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "工作内容")]
            public Int32 GZNRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评论内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PLNR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评论人")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PLR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评论时间")]
            public DateTime PLSJ { get; set; }


        }
    }
}
