namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_03_YHSYJL_metadata))]
    public partial class EDU_ELE_03_YHSYJL
    {
        public EDU_ELE_03_YHSYJL()
        {
            YHID = "";
            GNMC = "";
            LJ = "";
            SYSJ = DateTime.Now;
        }
        public class EDU_ELE_03_YHSYJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "应用")]
            public Int32 APPID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "功能")]
            public Int32 MODULEID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "功能名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GNMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "链接")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "使用时间")]
            public DateTime SYSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "消耗毫秒数")]
            public Int32 XHHMS { get; set; }


        }
    }
}
