namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A11_SXMYKQJL_metadata))]
    public partial class EDU_ZZJX_22_A11_SXMYKQJL
    {
        public EDU_ZZJX_22_A11_SXMYKQJL()
        {
            SJ = DateTime.Now;
        }
        public class EDU_ZZJX_22_A11_SXMYKQJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习生")]
            public Int32 SXSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "时间")]
            public DateTime SJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实际工日")]
            [Range(typeof(decimal), "0", "999")]
            public decimal SJGR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "事假天数")]
            [Range(typeof(decimal), "0", "999")]
            public decimal SJTS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "旷工天数")]
            [Range(typeof(decimal), "0", "999")]
            public decimal KGTS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "病假天数")]
            [Range(typeof(decimal), "0", "999")]
            public decimal BJTS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "公休天数")]
            [Range(typeof(decimal), "0", "999")]
            public decimal GXTS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "迟到天数")]
            [Range(typeof(decimal), "0", "999")]
            public decimal CDTS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "早退天数")]
            [Range(typeof(decimal), "0", "999")]
            public decimal ZTTS { get; set; }


        }
    }
}
