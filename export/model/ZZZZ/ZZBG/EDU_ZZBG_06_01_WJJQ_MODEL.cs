namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZBG_06_01_WJJQ_metadata))]
    public partial class EDU_ZZBG_06_01_WJJQ
    {
        public EDU_ZZBG_06_01_WJJQ()
        {
            JYR = "";
            JYRQ = "";
            JYSPRGH = "";
            JYJBRGH = "";
        }
        public class EDU_ZZBG_06_01_WJJQ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "文件")]
            public Int32 WJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "借阅审批人")]
            public Int32 JYSPRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "借阅经办人")]
            public Int32 JYJBRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "借阅人")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JYR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "借阅日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JYRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "借阅审批人工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JYSPRGH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "借阅经办人工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JYJBRGH { get; set; }


            [Display(Name = "借阅原因")]
            [StringLength(80)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JYYY { get; set; }


        }
    }
}
