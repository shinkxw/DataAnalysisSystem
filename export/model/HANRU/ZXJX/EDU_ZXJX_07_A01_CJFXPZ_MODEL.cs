namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_07_A01_CJFXPZ_metadata))]
    public partial class EDU_ZXJX_07_A01_CJFXPZ
    {
        public EDU_ZXJX_07_A01_CJFXPZ()
        {
            SSKSID = "";
            BZ = "";
        }
        public class EDU_ZXJX_07_A01_CJFXPZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "配置名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SSKSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分析类型")]
            public Int32 FXLX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
