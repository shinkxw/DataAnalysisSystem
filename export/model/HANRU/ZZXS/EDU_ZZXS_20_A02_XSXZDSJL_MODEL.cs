namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_20_A02_XSXZDSJL_metadata))]
    public partial class EDU_ZZXS_20_A02_XSXZDSJL
    {
        public EDU_ZZXS_20_A02_XSXZDSJL()
        {
        }
        public class EDU_ZZXS_20_A02_XSXZDSJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "导师")]
            public Int32 DSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


        }
    }
}
