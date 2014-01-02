namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_01_04_JLCJYQK_metadata))]
    public partial class EDU_JPXT_01_04_JLCJYQK
    {
        public EDU_JPXT_01_04_JLCJYQK()
        {
            JYNR = "";
            JYSJ = DateTime.Now;
            WCSJ = DateTime.Now;
            JYJG = "";
            BZ = "";
        }
        public class EDU_JPXT_01_04_JLCJYQK_metadata
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
            [Display(Name = "检验内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JYNR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "检验时间")]
            public DateTime JYSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "完成时间")]
            public DateTime WCSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "检验结果")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JYJG { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
