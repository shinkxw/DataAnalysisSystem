namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_01_APPDLCS_metadata))]
    public partial class EDU_ELE_01_APPDLCS
    {
        public EDU_ELE_01_APPDLCS()
        {
        }
        public class EDU_ELE_01_APPDLCS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "应用用户")]
            public Int32 APPUSERID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "参数名称")]
            public Int32 CSMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "参数值")]
            public Int32 CSZ { get; set; }


        }
    }
}
