namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_01_03_JLCWXQK_metadata))]
    public partial class EDU_JPXT_01_03_JLCWXQK
    {
        public EDU_JPXT_01_03_JLCWXQK()
        {
            GZXX = "";
            WXJG = "";
            BZ = "";
        }
        public class EDU_JPXT_01_03_JLCWXQK_metadata
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


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "故障现象")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZXX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "送修时间")]
            public DateTime SXSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "完成时间")]
            public DateTime WCSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "维修结果")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WXJG { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
