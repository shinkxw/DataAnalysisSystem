namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_06_A01_ZZXJ_metadata))]
    public partial class EDU_ZXDY_06_A01_ZZXJ
    {
        public EDU_ZXDY_06_A01_ZZXJ()
        {
        }
        public class EDU_ZXDY_06_A01_ZZXJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "值周小结表")]
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


            [Display(Name = "上周大事")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SZDS { get; set; }


            [Display(Name = "值周检查情况反馈")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZJCQKFK { get; set; }


        }
    }
}
