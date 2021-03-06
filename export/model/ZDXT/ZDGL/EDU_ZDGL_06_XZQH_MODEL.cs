namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_06_XZQH_metadata))]
    public partial class EDU_ZDGL_06_XZQH
    {
        public EDU_ZDGL_06_XZQH()
        {
            QHM = "";
            QHMC = "";
            QH = "";
        }
        public class EDU_ZDGL_06_XZQH_metadata
        {
            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "区划码")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QHM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "区划名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QHMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "区号")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QH { get; set; }


        }
    }
}
