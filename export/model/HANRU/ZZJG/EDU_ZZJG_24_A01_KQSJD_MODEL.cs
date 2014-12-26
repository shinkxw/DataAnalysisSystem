namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_24_A01_KQSJD_metadata))]
    public partial class EDU_ZZJG_24_A01_KQSJD
    {
        public EDU_ZZJG_24_A01_KQSJD()
        {
            SJDMC = "";
            KSSJ = DateTime.Now;
            JSSJ = DateTime.Now;
            KQDX = "";
        }
        public class EDU_ZZJG_24_A01_KQSJD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "时间段名称")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJDMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考勤日")]
            public Int32 KQR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开始时间")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "结束时间")]
            public DateTime JSSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考勤对象")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KQDX { get; set; }


        }
    }
}
