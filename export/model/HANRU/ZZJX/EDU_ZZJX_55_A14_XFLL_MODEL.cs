namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A14_XFLL_metadata))]
    public partial class EDU_ZZJX_55_A14_XFLL
    {
        public EDU_ZZJX_55_A14_XFLL()
        {
            JL = "";
        }
        public class EDU_ZZJX_55_A14_XFLL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "记录")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JL { get; set; }


        }
    }
}
