namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A01_DFXM_metadata))]
    public partial class EDU_OAXT_50_A01_DFXM
    {
        public EDU_OAXT_50_A01_DFXM()
        {
            XMMC = "";
        }
        public class EDU_OAXT_50_A01_DFXM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "项目名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所在应用")]
            public Int32 APPID { get; set; }


        }
    }
}
