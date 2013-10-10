namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_11_A08_KPRY_metadata))]
    public partial class EDU_ZZJG_11_A08_KPRY
    {
        public EDU_ZZJG_11_A08_KPRY()
        {
            KPRIDLB = "";
            BPRIDLB = "";
        }
        public class EDU_ZZJG_11_A08_KPRY_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评包含内容表")]
            public Int32 KPBHNRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考评人ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KPRIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "被评人ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BPRIDLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评主体")]
            public Int32 KPZTID { get; set; }


        }
    }
}
