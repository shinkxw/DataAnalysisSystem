namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_04_A06_ZZZC_metadata))]
    public partial class EDU_ZXDY_04_A06_ZZZC
    {
        public EDU_ZXDY_04_A06_ZZZC()
        {
            ZCM = "";
            XQKSRQ = DateTime.Now;
            XQJSRQ = DateTime.Now;
        }
        public class EDU_ZXDY_04_A06_ZZZC_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "周次表")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "周次名")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZCM { get; set; }


            [Display(Name = "开始日期")]
            public DateTime XQKSRQ { get; set; }


            [Display(Name = "结束日期")]
            public DateTime XQJSRQ { get; set; }


        }
    }
}
