namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_17_JSDXX_metadata))]
    public partial class EDU_ZDGL_17_JSDXX
    {
        public EDU_ZDGL_17_JSDXX()
        {
            XH = "";
            SN = "";
            SFECFX = "";
            WXRQ = DateTime.Now;
        }
        public class EDU_ZDGL_17_JSDXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "型号")]
            public Int32 XHID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "序号")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "SN号")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SN { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否二次返修")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFECFX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "送修单位")]
            public Int32 SXDWID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "故障信息")]
            public Int32 GZXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "维修信息")]
            public Int32 WXXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "维修人")]
            public Int32 WXRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "维修日期")]
            public DateTime WXRQ { get; set; }


        }
    }
}
