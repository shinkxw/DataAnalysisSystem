namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A03_JDPD_metadata))]
    public partial class EDU_ZZJX_55_A03_JDPD
    {
        public EDU_ZZJX_55_A03_JDPD()
        {
            PDMC = "";
        }
        public class EDU_ZZJX_55_A03_JDPD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评定名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PDMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "基础绩点")]
            [Range(typeof(decimal), "0", "999")]
            public decimal JCJD { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分数上限")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FSSX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分数下限")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FSXX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "类型")]
            public Int32 LX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "计算公式")]
            public Int32 JSGS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排列顺序")]
            public Int32 PLSX { get; set; }


        }
    }
}
