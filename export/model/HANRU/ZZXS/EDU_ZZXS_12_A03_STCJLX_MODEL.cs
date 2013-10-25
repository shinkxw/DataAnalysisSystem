namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_12_A03_STCJLX_metadata))]
    public partial class EDU_ZZXS_12_A03_STCJLX
    {
        public EDU_ZZXS_12_A03_STCJLX()
        {
            CJLXMC = "";
        }
        public class EDU_ZZXS_12_A03_STCJLX_metadata
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
            public String CJLXMC { get; set; }


        }
    }
}
