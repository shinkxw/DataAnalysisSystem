namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_07_A02_CJFXPZXM_metadata))]
    public partial class EDU_ZXJX_07_A02_CJFXPZXM
    {
        public EDU_ZXJX_07_A02_CJFXPZXM()
        {
            DCMC = "";
        }
        public class EDU_ZXJX_07_A02_CJFXPZXM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所属配置")]
            public Int32 SSPZID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DCMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上限")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal SX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "下限")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal XX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "P值权重")]
            public Int32 PZQZ { get; set; }


        }
    }
}
