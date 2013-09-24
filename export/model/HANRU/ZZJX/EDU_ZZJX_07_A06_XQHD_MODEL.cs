namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_A06_XQHD_metadata))]
    public partial class EDU_ZZJX_07_A06_XQHD
    {
        public EDU_ZZJX_07_A06_XQHD()
        {
            XXJY = "";
            XSJY = "";
            GLJY = "";
            QTJY = "";
            FKNR = "";
            FKSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZJX_07_A06_XQHD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "校企互动信息")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "企业")]
            public Int32 QYID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "企业对学校工作建议")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXJY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "企业对学生职业技能建议")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSJY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "实习生管理工作的建议")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GLJY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "其他建议")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QTJY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "反馈内容")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FKNR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "反馈时间")]
            public DateTime FKSJ { get; set; }


        }
    }
}
