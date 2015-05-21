namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_18_JFD_metadata))]
    public partial class EDU_ZDGL_18_JFD
    {
        public EDU_ZDGL_18_JFD()
        {
            JFDH = "";
            JFRQ = DateTime.Now;
        }
        public class EDU_ZDGL_18_JFD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "交付单号")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JFDH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "维修商")]
            public Int32 WXSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "交付日期")]
            public DateTime JFRQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "送修单位")]
            public Int32 SXDWID { get; set; }


        }
    }
}
