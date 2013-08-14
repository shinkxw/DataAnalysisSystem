namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_05_A02_ZZDFXZ_metadata))]
    public partial class EDU_ZXDY_05_A02_ZZDFXZ
    {
        public EDU_ZXDY_05_A02_ZZDFXZ()
        {
            XZNR = "";
        }
        public class EDU_ZXDY_05_A02_ZZDFXZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "值周打分细则表")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所属大类")]
            public Int32 SSDLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "细则内容")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZNR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "细则分值")]
            [Range(typeof(decimal), "0", "99")]
            public decimal XZFZ { get; set; }


        }
    }
}
