namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A90_XFHASH_metadata))]
    public partial class EDU_ZZJX_55_A90_XFHASH
    {
        public EDU_ZZJX_55_A90_XFHASH()
        {
            VALUE = "";
        }
        public class EDU_ZZJX_55_A90_XFHASH_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "��")]
            public Int32 KEY { get; set; }


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
