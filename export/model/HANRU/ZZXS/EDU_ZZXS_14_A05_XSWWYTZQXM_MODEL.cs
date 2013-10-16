namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_14_A05_XSWWYTZQXM_metadata))]
    public partial class EDU_ZZXS_14_A05_XSWWYTZQXM
    {
        public EDU_ZZXS_14_A05_XSWWYTZQXM()
        {
            ZQXMMC = "";
        }
        public class EDU_ZZXS_14_A05_XSWWYTZQXM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "值勤项目名称")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZQXMMC { get; set; }


        }
    }
}
