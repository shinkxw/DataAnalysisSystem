namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_37_A02_JNJDAP_metadata))]
    public partial class EDU_ZZJX_37_A02_JNJDAP
    {
        public EDU_ZZJX_37_A02_JNJDAP()
        {
            KSMC = "";
            KSSJ = new DateTime(1900, 1, 1);
            KSDD = "";
            KSXS = "";
        }
        public class EDU_ZZJX_37_A02_JNJDAP_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考试名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "鉴定项目")]
            public Int32 JDXMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考试时间")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考试地点")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSDD { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考试学生")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSXS { get; set; }


        }
    }
}
