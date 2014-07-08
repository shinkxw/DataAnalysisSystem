namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_01_HASH_metadata))]
    public partial class EDU_ELE_01_HASH
    {
        public EDU_ELE_01_HASH()
        {
            KEY = "";
            VALUE = "";
        }
        public class EDU_ELE_01_HASH_metadata
        {
            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KEY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ֵ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String VALUE { get; set; }


        }
    }
}
