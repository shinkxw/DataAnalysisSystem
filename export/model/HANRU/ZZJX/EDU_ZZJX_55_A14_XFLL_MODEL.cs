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
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��¼")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JL { get; set; }


        }
    }
}
