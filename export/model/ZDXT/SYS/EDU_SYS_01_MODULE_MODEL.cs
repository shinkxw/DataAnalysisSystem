namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_SYS_01_MODULE_metadata))]
    public partial class EDU_SYS_01_MODULE
    {
        public EDU_SYS_01_MODULE()
        {
            NAME = "";
            Link = "";
        }
        public class EDU_SYS_01_MODULE_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "")]
            public Int32 APPID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NAME { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "")]
            public Int32 Depth { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "")]
            public Int32 PID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "")]
            public Int32 MenuDisp { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "")]
            public Int32 MenuUserType { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Link { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "")]
            public Int32 OrderIndex { get; set; }


        }
    }
}
