namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_01_SCHOOL_metadata))]
    public partial class EDU_ELE_01_SCHOOL
    {
        public EDU_ELE_01_SCHOOL()
        {
            SCHOOLNAME = "";
            MatchURL = "";
            MenhuURL = "";
            ModuleIdList = "";
            CreateTime = DateTime.Now;
            YXTID = "";
            LOGO = "";
        }
        public class EDU_ELE_01_SCHOOL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学校名称")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SCHOOLNAME { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校类型")]
            public Int32 SCHOOLTYPE { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学年")]
            public Int32 XNID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "匹配url")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MatchURL { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "门户url")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MenhuURL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "门户webid")]
            public Int32 MenhuWebid { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "日志级别")]
            public Int32 LogLevel { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "权限列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ModuleIdList { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "启用状态")]
            public Int32 EnableStatus { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开户时间")]
            public DateTime CreateTime { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "翼校通")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YXTID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "图标")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LOGO { get; set; }


        }
    }
}
