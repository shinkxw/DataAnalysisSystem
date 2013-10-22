namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_20_A02_XQHD_metadata))]
    public partial class EDU_ZZJX_20_A02_XQHD
    {
        public EDU_ZZJX_20_A02_XQHD()
        {
            ReactionTime = new DateTime(1900, 1, 1);
            AdviseToSchool = "";
            AdviseToArt = "";
            OtherAdvise = "";
            Retroaction = "";
            AdviseToStudent = "";
        }
        public class EDU_ZZJX_20_A02_XQHD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "企业")]
            public Int32 ComID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "反馈时间")]
            public DateTime ReactionTime { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "企业对学校工作建议")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AdviseToSchool { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "企业对学生职业技能建议")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AdviseToArt { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "其他建议")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String OtherAdvise { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "反馈内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Retroaction { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "实习生管理工作的建议")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AdviseToStudent { get; set; }


        }
    }
}
