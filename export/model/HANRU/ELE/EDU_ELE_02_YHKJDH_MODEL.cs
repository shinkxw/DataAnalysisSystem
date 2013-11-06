namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_02_YHKJDH_metadata))]
    public partial class EDU_ELE_02_YHKJDH
    {
        public EDU_ELE_02_YHKJDH()
        {
            LoginName = "";
        }
        public class EDU_ELE_02_YHKJDH_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "MODULE��")]
            public Int32 MODULEID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�û���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LoginName { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 OrderID { get; set; }


        }
    }
}
