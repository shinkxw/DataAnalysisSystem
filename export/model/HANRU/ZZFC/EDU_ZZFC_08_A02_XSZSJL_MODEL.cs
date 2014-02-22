namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZFC_08_A02_XSZSJL_metadata))]
    public partial class EDU_ZZFC_08_A02_XSZSJL
    {
        public EDU_ZZFC_08_A02_XSZSJL()
        {
            ZYXMC = "";
            ZYMC = "";
            NJMC = "";
            BJMC = "";
            XSXM = "";
            RZSJ = DateTime.Now;
        }
        public class EDU_ZZFC_08_A02_XSZSJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "宿舍楼")]
            public Int32 SSLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "宿舍")]
            public Int32 SSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "床位")]
            public Int32 CWID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "专业系名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYXMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "专业名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级名称")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学生姓名")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSXM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "入住时间")]
            public DateTime RZSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否退宿")]
            public Int32 SFTS { get; set; }


        }
    }
}
