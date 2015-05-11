namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_20_FHD_metadata))]
    public partial class EDU_ZDGL_20_FHD
    {
        public EDU_ZDGL_20_FHD()
        {
            FHDH = "";
            FHRQ = DateTime.Now;
        }
        public class EDU_ZDGL_20_FHD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "返回单号")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FHDH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "返回日期")]
            public DateTime FHRQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "返回单位")]
            public Int32 FHDWID { get; set; }


        }
    }
}
