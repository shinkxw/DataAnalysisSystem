namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_SYS_01_XN_metadata))]
    public partial class EDU_SYS_01_XN
    {
        public EDU_SYS_01_XN()
        {
            XN = "";
        }
        public class EDU_SYS_01_XN_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学年")]
            [StringLength(9)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XN { get; set; }


        }
    }
}
