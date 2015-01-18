namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A27_BXKZYNR_metadata))]
    public partial class EDU_ZXJX_53_A27_BXKZYNR
    {
        public EDU_ZXJX_53_A27_BXKZYNR()
        {
            ZYNR = "";
            TJSJ = DateTime.Now;
        }
        public class EDU_ZXJX_53_A27_BXKZYNR_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "必修课教学班")]
            public Int32 BXKJXBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "作业内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYNR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


        }
    }
}
