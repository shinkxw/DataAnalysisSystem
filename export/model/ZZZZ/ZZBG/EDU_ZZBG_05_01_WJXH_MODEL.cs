namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZBG_05_01_WJXH_metadata))]
    public partial class EDU_ZZBG_05_01_WJXH
    {
        public EDU_ZZBG_05_01_WJXH()
        {
            XHRQ = "";
            XHSPRGH = "";
            JBRGH = "";
        }
        public class EDU_ZZBG_05_01_WJXH_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "文件")]
            public Int32 WJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "销毁审批人")]
            public Int32 XHSPRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "经办人")]
            public Int32 JBRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "销毁日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XHRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "销毁审批人工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XHSPRGH { get; set; }


            [Display(Name = "销毁说明")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XHSM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "经办人工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBRGH { get; set; }


        }
    }
}
