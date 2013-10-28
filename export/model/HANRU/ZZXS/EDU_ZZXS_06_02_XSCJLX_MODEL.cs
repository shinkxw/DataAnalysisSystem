namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_06_02_XSCJLX_metadata))]
    public partial class EDU_ZZXS_06_02_XSCJLX
    {
        public EDU_ZZXS_06_02_XSCJLX()
        {
            LXMC = "";
        }
        public class EDU_ZZXS_06_02_XSCJLX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "类型名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "权重")]
            public Int32 QZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课程清单")]
            public Int32 KCQDID { get; set; }


        }
    }
}
