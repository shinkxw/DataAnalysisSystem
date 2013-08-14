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
            [Required(ErrorMessage = "必填")]
            [Display(Name = "岗位分配模板表")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "模板名称")]
            public Int32 MBMC { get; set; }


        }
    }
}
