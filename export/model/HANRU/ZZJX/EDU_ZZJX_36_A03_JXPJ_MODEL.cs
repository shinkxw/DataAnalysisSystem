namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_36_A03_JXPJ_metadata))]
    public partial class EDU_ZZJX_36_A03_JXPJ
    {
        public EDU_ZZJX_36_A03_JXPJ()
        {
            PJNR = "";
            PJSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZJX_36_A03_JXPJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "见习计划")]
            public Int32 JXJHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生信息")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评价内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PJNR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评价时间")]
            public DateTime PJSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评价教师")]
            public Int32 PJJSID { get; set; }


        }
    }
}
