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
            [Required(ErrorMessage = "必填")]
            [Display(Name = "键")]
            public Int32 KEY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "值")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String VALUE { get; set; }


        }
    }
}
