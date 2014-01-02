namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_01_A13_ZXDY_metadata))]
    public partial class EDU_ZYZX_01_A13_ZXDY
    {
        public EDU_ZYZX_01_A13_ZXDY()
        {
            WENTI = "";
            TWR = "";
            TWSJ = DateTime.Now;
            HDR = "";
            HDSJ = DateTime.Now;
        }
        public class EDU_ZYZX_01_A13_ZXDY_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "问题")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WENTI { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "提问人")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TWR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "提问时间")]
            public DateTime TWSJ { get; set; }


            [Display(Name = "答案")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DAAN { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "回答人")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "回答时间")]
            public DateTime HDSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "状态")]
            public Int32 ZT { get; set; }


        }
    }
}
