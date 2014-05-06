namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_52_A02_PXMC_metadata))]
    public partial class EDU_ZXXS_52_A02_PXMC
    {
        public EDU_ZXXS_52_A02_PXMC()
        {
            MC = "";
            PXXMIDLB = "";
            PXXMMCLB = "";
            PXXSIDLB = "";
            PXXSXMLB = "";
            YQTX = "";
            NR = "";
        }
        public class EDU_ZXXS_52_A02_PXMC_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评选项目ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PXXMIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评选项目名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PXXMMCLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评选学生ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PXXSIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评选学生姓名列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PXXSXMLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "友情提醒")]
            [StringLength(1000)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YQTX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "状态")]
            public Int32 ZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


        }
    }
}
