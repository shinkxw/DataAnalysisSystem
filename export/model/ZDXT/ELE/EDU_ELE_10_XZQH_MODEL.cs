namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_10_XZQH_metadata))]
    public partial class EDU_ELE_10_XZQH
    {
        public EDU_ELE_10_XZQH()
        {
            DM = "";
            MC = "";
            QH = "";
        }
        public class EDU_ELE_10_XZQH_metadata
        {
            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "代码")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "名称")]
            [StringLength(15)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "区号")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QH { get; set; }


        }
    }
}
