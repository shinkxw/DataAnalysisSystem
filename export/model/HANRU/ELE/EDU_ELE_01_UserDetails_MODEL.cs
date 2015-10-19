namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_01_UserDetails_metadata))]
    public partial class EDU_ELE_01_UserDetails
    {
        public EDU_ELE_01_UserDetails()
        {
            LoginName = "";
        }
        public class EDU_ELE_01_UserDetails_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LoginName { get; set; }


            [Display(Name = "用户信息一")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Detail1 { get; set; }


            [Display(Name = "用户信息二")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Detail2 { get; set; }


            [Display(Name = "用户信息三")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Detail3 { get; set; }


            [Display(Name = "用户信息四")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Detail4 { get; set; }


            [Display(Name = "用户信息五")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Detail5 { get; set; }


            [Display(Name = "用户信息六")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Detail6 { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否是数据行")]
            public Int32 IsDataRow { get; set; }


        }
    }
}
