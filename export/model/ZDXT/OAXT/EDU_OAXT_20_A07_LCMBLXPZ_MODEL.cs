namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_20_A07_LCMBLXPZ_metadata))]
    public partial class EDU_OAXT_20_A07_LCMBLXPZ
    {
        public EDU_OAXT_20_A07_LCMBLXPZ()
        {
        }
        public class EDU_OAXT_20_A07_LCMBLXPZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "����ģ������")]
            public Int32 LCMBLXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʹ������")]
            public Int32 BSYLC { get; set; }


        }
    }
}
