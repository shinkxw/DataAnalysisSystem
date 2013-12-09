namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_18_A02_JSNDKH_metadata))]
    public partial class EDU_ZZJG_18_A02_JSNDKH
    {
        public EDU_ZZJG_18_A02_JSNDKH()
        {
            KHNR = "";
            KHSJ = "";
        }
        public class EDU_ZZJG_18_A02_JSNDKH_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教职工")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考核内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KHNR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考核时间")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KHSJ { get; set; }


        }
    }
}
