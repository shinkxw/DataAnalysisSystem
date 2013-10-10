namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_11_A05_KPNRSJ_metadata))]
    public partial class EDU_ZZJG_11_A05_KPNRSJ
    {
        public EDU_ZZJG_11_A05_KPNRSJ()
        {
            KPNRMC = "";
        }
        public class EDU_ZZJG_11_A05_KPNRSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考评内容名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KPNRMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评内容类型")]
            public Int32 KPNRLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评主体")]
            public Int32 KPZTID { get; set; }


        }
    }
}
