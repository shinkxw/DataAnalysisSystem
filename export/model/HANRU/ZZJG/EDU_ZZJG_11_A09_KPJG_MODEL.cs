namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_11_A09_KPJG_metadata))]
    public partial class EDU_ZZJG_11_A09_KPJG
    {
        public EDU_ZZJG_11_A09_KPJG()
        {
        }
        public class EDU_ZZJG_11_A09_KPJG_metadata
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


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评内容项目")]
            public Int32 KPNRXMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评方式")]
            public Int32 KPFSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评人")]
            public Int32 KPRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "被评人")]
            public Int32 BPRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评主体")]
            public Int32 KPZTID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评分值")]
            public Int32 KPFZ { get; set; }


        }
    }
}
