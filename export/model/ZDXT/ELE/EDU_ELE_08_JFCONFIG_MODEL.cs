namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_08_JFCONFIG_metadata))]
    public partial class EDU_ELE_08_JFCONFIG
    {
        public EDU_ELE_08_JFCONFIG()
        {
            GNMC = "";
        }
        public class EDU_ELE_08_JFCONFIG_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "功能名称")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GNMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "应用")]
            public Int32 APPID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "积分")]
            public Int32 JF { get; set; }


        }
    }
}
