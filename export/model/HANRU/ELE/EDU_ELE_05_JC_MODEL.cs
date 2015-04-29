namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_05_JC_metadata))]
    public partial class EDU_ELE_05_JC
    {
        public EDU_ELE_05_JC()
        {
            MC = "";
        }
        public class EDU_ELE_05_JC_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所属时段")]
            public Int32 SDID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "名称")]
            [StringLength(5)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开始小时")]
            public Int32 KSXS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开始分钟")]
            public Int32 KSFZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "结束小时")]
            public Int32 JSXS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "结束分钟")]
            public Int32 JSFZ { get; set; }


        }
    }
}
