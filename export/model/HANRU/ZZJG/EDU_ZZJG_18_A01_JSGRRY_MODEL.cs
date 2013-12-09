namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_18_A01_JSGRRY_metadata))]
    public partial class EDU_ZZJG_18_A01_JSGRRY
    {
        public EDU_ZZJG_18_A01_JSGRRY()
        {
            RYNR = "";
            HQSJ = "";
        }
        public class EDU_ZZJG_18_A01_JSGRRY_metadata
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
            [Display(Name = "荣誉内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RYNR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "获取时间")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HQSJ { get; set; }


        }
    }
}
