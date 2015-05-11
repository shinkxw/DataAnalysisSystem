namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_16_JSD_metadata))]
    public partial class EDU_ZDGL_16_JSD
    {
        public EDU_ZDGL_16_JSD()
        {
            JSDH = "";
            SXRQ = DateTime.Now;
        }
        public class EDU_ZDGL_16_JSD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "接收单号")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSDH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "送修单位")]
            public Int32 SXDWID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "送修日期")]
            public DateTime SXRQ { get; set; }


        }
    }
}
