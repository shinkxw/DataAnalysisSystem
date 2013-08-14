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
            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ӧ��")]
            public Int32 APPID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ֵ")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String VALUE { get; set; }


        }
    }
}
