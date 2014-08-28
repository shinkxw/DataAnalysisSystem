namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_23_A04_PHZYDCTM_metadata))]
    public partial class EDU_ZZJG_23_A04_PHZYDCTM
    {
        public EDU_ZZJG_23_A04_PHZYDCTM()
        {
            DCXM = "";
            DCZB = "";
        }
        public class EDU_ZZJG_23_A04_PHZYDCTM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分方式")]
            public Int32 DFFSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "调查名称")]
            public Int32 DCMCID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "调查项目")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DCXM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "调查指标")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DCZB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "状态")]
            public Int32 ZT { get; set; }


        }
    }
}
