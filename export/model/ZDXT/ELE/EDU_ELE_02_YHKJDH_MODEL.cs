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
            NAME = "";
            LINK = "";
        }
        public class EDU_ELE_02_YHKJDH_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "MODULE表")]
            public Int32 MODULEID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "用户名")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LoginName { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "序号")]
            public Int32 OrderID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "显示名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NAME { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "链接")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LINK { get; set; }


        }
    }
}
