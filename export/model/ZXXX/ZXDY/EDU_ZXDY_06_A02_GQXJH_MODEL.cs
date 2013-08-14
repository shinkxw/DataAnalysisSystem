namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_06_A02_GQXJH_metadata))]
    public partial class EDU_ZXDY_06_A02_GQXJH
    {
        public EDU_ZXDY_06_A02_GQXJH()
        {
        }
        public class EDU_ZXDY_06_A02_GQXJH_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "国旗下讲话表")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "周次")]
            public Int32 ZCID { get; set; }


            [Display(Name = "讲话主题")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHZT { get; set; }


            [Display(Name = "讲话内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHNR { get; set; }


        }
    }
}
