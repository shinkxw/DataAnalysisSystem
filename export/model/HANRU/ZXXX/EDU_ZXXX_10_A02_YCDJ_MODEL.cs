namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXX_10_A02_YCDJ_metadata))]
    public partial class EDU_ZXXX_10_A02_YCDJ
    {
        public EDU_ZXXX_10_A02_YCDJ()
        {
            RQ = DateTime.Now;
            SFJC = "";
        }
        public class EDU_ZXXX_10_A02_YCDJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "三餐")]
            public Int32 SCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "日期")]
            public DateTime RQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否就餐")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFJC { get; set; }


        }
    }
}
