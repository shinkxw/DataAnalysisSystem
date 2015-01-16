namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_KTGL_07_A01_FWLL_metadata))]
    public partial class EDU_KTGL_07_A01_FWLL
    {
        public EDU_KTGL_07_A01_FWLL()
        {
            FWIP = "";
            FWLJ = "";
            FWSJ = DateTime.Now;
        }
        public class EDU_KTGL_07_A01_FWLL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "访问IP")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FWIP { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "访问链接")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FWLJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "访问时间")]
            public DateTime FWSJ { get; set; }


        }
    }
}
