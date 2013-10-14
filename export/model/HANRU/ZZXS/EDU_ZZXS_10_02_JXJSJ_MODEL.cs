namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_10_02_JXJSJ_metadata))]
    public partial class EDU_ZZXS_10_02_JXJSJ
    {
        public EDU_ZZXS_10_02_JXJSJ()
        {
            JXJMC = "";
            JXJBH = "";
            JXJDJ = "";
            JXJLXM = "";
            HJSJ = new DateTime(1900, 1, 1);
            SFSH = "";
        }
        public class EDU_ZZXS_10_02_JXJSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "奖学金名称")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXJMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "奖学金编号")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXJBH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "奖学金等级")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXJDJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "奖学金类型码")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXJLXM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "奖学金额")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal JXJE { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "获奖时间")]
            public DateTime HJSJ { get; set; }


            [Display(Name = "资助单位或个人")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZDWHGR { get; set; }


            [Display(Name = "奖学金来源码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXJLYM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否审核")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFSH { get; set; }


        }
    }
}
