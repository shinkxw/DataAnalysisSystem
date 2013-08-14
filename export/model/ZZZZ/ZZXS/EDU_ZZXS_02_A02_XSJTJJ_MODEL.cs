namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_02_A02_XSJTJJ_metadata))]
    public partial class EDU_ZZXS_02_A02_XSJTJJ
    {
        public EDU_ZZXS_02_A02_XSJTJJ()
        {
        }
        public class EDU_ZZXS_02_A02_XSJTJJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生信息数据表")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Display(Name = "赡养人口")]
            [Range(typeof(decimal), "0", "99")]
            public decimal SYRK { get; set; }


            [Display(Name = "劳动力人口")]
            [Range(typeof(decimal), "0", "99")]
            public decimal LDLRK { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "家庭人均月收入")]
            [Range(typeof(decimal), "0", "9999999")]
            public decimal JTRJYSR { get; set; }


            [Display(Name = "家庭类别码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTLBM { get; set; }


            [Display(Name = "困难原因码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KNYYM { get; set; }


            [Display(Name = "困难程度码")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KNCDM { get; set; }


            [Display(Name = "是否低保")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFDB { get; set; }


            [Display(Name = "入学前户口类别码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RXQHKLBM { get; set; }


            [Display(Name = "就学地低保线")]
            [Range(typeof(decimal), "0", "9999999")]
            public decimal JXDDBX { get; set; }


        }
    }
}
