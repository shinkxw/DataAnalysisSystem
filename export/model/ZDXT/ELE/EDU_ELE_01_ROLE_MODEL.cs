namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_01_ROLE_metadata))]
    public partial class EDU_ELE_01_ROLE
    {
        public EDU_ELE_01_ROLE()
        {
            NAME = "";
            ModIDLst = "";
        }
        public class EDU_ELE_01_ROLE_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "角色")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "应用")]
            public Int32 APPID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "角色名")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NAME { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "角色所属父")]
            public Int32 PID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "角色能访问的模块列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ModIDLst { get; set; }


        }
    }
}
