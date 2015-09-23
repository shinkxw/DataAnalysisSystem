namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_52_A01_XYPJYJPFXM_metadata))]
    public partial class EDU_ZZJX_52_A01_XYPJYJPFXM
    {
        public EDU_ZZJX_52_A01_XYPJYJPFXM()
        {
            XMMC = "";
        }
        public class EDU_ZZJX_52_A01_XYPJYJPFXM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "项目名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排列顺序")]
            public Int32 PLSX { get; set; }


        }
    }
}
