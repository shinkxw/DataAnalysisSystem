namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A06_KCPFXM_metadata))]
    public partial class EDU_ZZJX_55_A06_KCPFXM
    {
        public EDU_ZZJX_55_A06_KCPFXM()
        {
            XMMC = "";
            LY = "";
        }
        public class EDU_ZZJX_55_A06_KCPFXM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "父项目")]
            public Int32 FXMID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "项目名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否有子项目")]
            public Int32 SFYZXM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "比例")]
            [Range(typeof(decimal), "0", "999")]
            public decimal BL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否允许修改")]
            public Int32 SFYXXG { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "修改上限")]
            [Range(typeof(decimal), "0", "999")]
            public decimal XGSX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "修改下限")]
            [Range(typeof(decimal), "0", "999")]
            public decimal XGXX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "来源")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排列顺序")]
            public Int32 PLSX { get; set; }


        }
    }
}
