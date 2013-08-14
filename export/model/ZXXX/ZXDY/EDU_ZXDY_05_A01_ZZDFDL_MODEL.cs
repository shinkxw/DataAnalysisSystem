namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_05_A01_ZZDFDL_metadata))]
    public partial class EDU_ZXDY_05_A01_ZZDFDL
    {
        public EDU_ZXDY_05_A01_ZZDFDL()
        {
            DLMC = "";
        }
        public class EDU_ZXDY_05_A01_ZZDFDL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "值周打分大类表")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "大类名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DLMC { get; set; }


        }
    }
}
