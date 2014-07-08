namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_05_BXHT_metadata))]
    public partial class EDU_ZDGL_05_BXHT
    {
        public EDU_ZDGL_05_BXHT()
        {
            HTMC = "";
        }
        public class EDU_ZDGL_05_BXHT_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "合同名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HTMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "维修时限")]
            public Int32 WXSX { get; set; }


        }
    }
}
