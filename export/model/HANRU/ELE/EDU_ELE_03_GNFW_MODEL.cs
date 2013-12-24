namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_03_GNFW_metadata))]
    public partial class EDU_ELE_03_GNFW
    {
        public EDU_ELE_03_GNFW()
        {
            NAME = "";
            LINK = "";
        }
        public class EDU_ELE_03_GNFW_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "应用")]
            public Int32 APPID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "功能")]
            public Int32 MODULEID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "功能名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NAME { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "地址")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LINK { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "访问量")]
            public Int32 FWL { get; set; }


        }
    }
}
