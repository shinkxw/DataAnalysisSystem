namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_11_A07_KPBHNR_metadata))]
    public partial class EDU_ZZJG_11_A07_KPBHNR
    {
        public EDU_ZZJG_11_A07_KPBHNR()
        {
        }
        public class EDU_ZZJG_11_A07_KPBHNR_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评")]
            public Int32 KPID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评内容")]
            public Int32 KPNRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "权重")]
            public Int32 QZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "显示方式")]
            public Int32 XSFS { get; set; }


        }
    }
}
