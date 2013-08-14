namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_04_A07_MBFPNR_metadata))]
    public partial class EDU_ZXDY_04_A07_MBFPNR
    {
        public EDU_ZXDY_04_A07_MBFPNR()
        {
        }
        public class EDU_ZXDY_04_A07_MBFPNR_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "模板内容表")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "模板表")]
            public Int32 MBID { get; set; }


            [Display(Name = "工作日")]
            public Int32 GZR { get; set; }


            [Display(Name = "岗位")]
            public Int32 GWID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "对应人员号")]
            public Int32 DYRYH { get; set; }


        }
    }
}
