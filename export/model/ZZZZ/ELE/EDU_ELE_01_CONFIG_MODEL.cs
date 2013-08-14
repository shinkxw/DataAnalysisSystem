namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_01_CONFIG_metadata))]
    public partial class EDU_ELE_01_CONFIG
    {
        public EDU_ELE_01_CONFIG()
        {
            VALUE = "";
        }
        public class EDU_ELE_01_CONFIG_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "配置")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "应用")]
            public Int32 APPID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "配置值")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String VALUE { get; set; }


        }
    }
}
