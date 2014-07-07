namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_22_A04_PHZYCPTM_metadata))]
    public partial class EDU_ZZJG_22_A04_PHZYCPTM
    {
        public EDU_ZZJG_22_A04_PHZYCPTM()
        {
            CPXM = "";
            CPZB = "";
        }
        public class EDU_ZZJG_22_A04_PHZYCPTM_metadata
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
            [Display(Name = "测评名称")]
            public Int32 CPMCID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "测评项目")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CPXM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "测评指标")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CPZB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "状态")]
            public Int32 ZT { get; set; }


        }
    }
}
