namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_07_A01_DYHDKC_metadata))]
    public partial class EDU_ZXDY_07_A01_DYHDKC
    {
        public EDU_ZXDY_07_A01_DYHDKC()
        {
            BJ = "";
            HDSJ = "";
            HDZT = "";
            DYHDGCJL = "";
            HDGCTPZS = "";
            DYHDHJ = "";
        }
        public class EDU_ZXDY_07_A01_DYHDKC_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "活动时间")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "活动主题")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "德育活动过程记录")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DYHDGCJL { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "活动过程图片展示")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDGCTPZS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "德育活动后记")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DYHDHJ { get; set; }


        }
    }
}
