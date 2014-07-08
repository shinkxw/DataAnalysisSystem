namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_32_A04_DCWJJL_metadata))]
    public partial class EDU_OAXT_32_A04_DCWJJL
    {
        public EDU_OAXT_32_A04_DCWJJL()
        {
            YHID = "";
        }
        public class EDU_OAXT_32_A04_DCWJJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所属问卷")]
            public Int32 WJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所属题目")]
            public Int32 TMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "选项")]
            public Int32 XXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "选项分值")]
            public Int32 XXFZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "提交状态")]
            public Int32 TJZT { get; set; }


        }
    }
}
