namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_36_A03_DKXX_metadata))]
    public partial class EDU_ZXJX_36_A03_DKXX
    {
        public EDU_ZXJX_36_A03_DKXX()
        {
            XDKRQ = DateTime.Now;
            XDKKCID = "";
        }
        public class EDU_ZXJX_36_A03_DKXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "需代课教师")]
            public Int32 XDKJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "需代课日期")]
            public DateTime XDKRQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "需代课时段")]
            public Int32 XDKSDID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "需代课节次")]
            public Int32 XDKJCID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "需代课课程")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XDKKCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "代课教师")]
            public Int32 DKJSID { get; set; }


        }
    }
}
