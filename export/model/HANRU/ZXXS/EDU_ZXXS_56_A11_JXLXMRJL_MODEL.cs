namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_56_A11_JXLXMRJL_metadata))]
    public partial class EDU_ZXXS_56_A11_JXLXMRJL
    {
        public EDU_ZXXS_56_A11_JXLXMRJL()
        {
            DJSJ = DateTime.Now;
            BZRTXJL = "";
            JTTXJL = "";
        }
        public class EDU_ZXXS_56_A11_JXLXMRJL_metadata
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
            [Display(Name = "登记时间")]
            public DateTime DJSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班主任填写记录")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZRTXJL { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "家庭填写记录")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTTXJL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "班主任更新状态")]
            public Int32 BZRGXZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "家庭更新状态")]
            public Int32 JTGXZT { get; set; }


        }
    }
}
