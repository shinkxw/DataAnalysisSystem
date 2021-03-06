namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_01_A03_GRXXBJKG_metadata))]
    public partial class EDU_ZXJZ_01_A03_GRXXBJKG
    {
        public EDU_ZXJZ_01_A03_GRXXBJKG()
        {
            SCSJ = DateTime.Now;
            HDSJ = DateTime.Now;
            SFKQ = "";
            SFXYSH = "";
        }
        public class EDU_ZXJZ_01_A03_GRXXBJKG_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开始时间")]
            public DateTime SCSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "结束时间")]
            public DateTime HDSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否开启")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFKQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否需要审核")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFXYSH { get; set; }


        }
    }
}
