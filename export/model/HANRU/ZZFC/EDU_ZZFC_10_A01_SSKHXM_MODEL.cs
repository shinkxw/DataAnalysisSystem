namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZFC_10_A01_SSKHXM_metadata))]
    public partial class EDU_ZZFC_10_A01_SSKHXM
    {
        public EDU_ZZFC_10_A01_SSKHXM()
        {
            XMMC = "";
        }
        public class EDU_ZZFC_10_A01_SSKHXM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "类型")]
            public Int32 LX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "项目名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否影响评比")]
            public Int32 SFYXPB { get; set; }


        }
    }
}
