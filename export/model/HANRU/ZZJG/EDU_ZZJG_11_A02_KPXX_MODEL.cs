namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_11_A02_KPXX_metadata))]
    public partial class EDU_ZZJG_11_A02_KPXX
    {
        public EDU_ZZJG_11_A02_KPXX()
        {
            XXMC = "";
        }
        public class EDU_ZZJG_11_A02_KPXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "选项名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评方式")]
            public Int32 KPFSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评分值")]
            public Int32 KPFZ { get; set; }


        }
    }
}
