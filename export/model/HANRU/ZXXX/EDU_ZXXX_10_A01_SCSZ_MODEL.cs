namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXX_10_A01_SCSZ_metadata))]
    public partial class EDU_ZXXX_10_A01_SCSZ
    {
        public EDU_ZXXX_10_A01_SCSZ()
        {
            MC = "";
        }
        public class EDU_ZXXX_10_A01_SCSZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "价格")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal JG { get; set; }


        }
    }
}
