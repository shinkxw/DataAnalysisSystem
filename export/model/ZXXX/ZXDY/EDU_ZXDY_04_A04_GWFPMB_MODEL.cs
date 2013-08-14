namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_04_A04_GWFPMB_metadata))]
    public partial class EDU_ZXDY_04_A04_GWFPMB
    {
        public EDU_ZXDY_04_A04_GWFPMB()
        {
        }
        public class EDU_ZXDY_04_A04_GWFPMB_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "��λ����ģ���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ģ������")]
            public Int32 MBMC { get; set; }


        }
    }
}
