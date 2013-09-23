namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_01_02_JLCBGLL_metadata))]
    public partial class EDU_JPXT_01_02_JLCBGLL
    {
        public EDU_JPXT_01_02_JLCBGLL()
        {
            BGZT = "";
        }
        public class EDU_JPXT_01_02_JLCBGLL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教练车")]
            public Int32 JLCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教练员")]
            public Int32 JLYID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "保管开始时间")]
            public DateTime BGKSSJ { get; set; }


            [Display(Name = "保管结束时间")]
            public DateTime BGJSSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "保管状态")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BGZT { get; set; }


        }
    }
}
