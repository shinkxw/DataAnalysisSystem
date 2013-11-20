namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_01_APP_metadata))]
    public partial class EDU_ELE_01_APP
    {
        public EDU_ELE_01_APP()
        {
            NAME = "";
            URL = "";
            AUTHIP = "";
            SM = "";
            DLCSLB = "";
            MNDLJS = "";
        }
        public class EDU_ELE_01_APP_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "应用")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "应用名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NAME { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "网址")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String URL { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "限用IP")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AUTHIP { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "说明")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "登录方式")]
            public Int32 DLFS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "应用状态")]
            public Int32 STATUS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "应用类别")]
            public Int32 TYPE { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "登录参数列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DLCSLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "模拟登录JS")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MNDLJS { get; set; }


        }
    }
}
