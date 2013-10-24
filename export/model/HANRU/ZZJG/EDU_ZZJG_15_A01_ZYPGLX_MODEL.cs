namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_15_A01_ZYPGLX_metadata))]
    public partial class EDU_ZZJG_15_A01_ZYPGLX
    {
        public EDU_ZZJG_15_A01_ZYPGLX()
        {
            XCLXMC = "";
        }
        public class EDU_ZZJG_15_A01_ZYPGLX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "类型名称")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XCLXMC { get; set; }


        }
    }
}
