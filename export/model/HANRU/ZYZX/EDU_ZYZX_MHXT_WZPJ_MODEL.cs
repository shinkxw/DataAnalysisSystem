namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_MHXT_WZPJ_metadata))]
    public partial class EDU_ZYZX_MHXT_WZPJ
    {
        public EDU_ZYZX_MHXT_WZPJ()
        {
            PJR = "";
            YJDZ = "";
            PJNR = "";
            HF = "";
        }
        public class EDU_ZYZX_MHXT_WZPJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "评价")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站文章")]
            public Int32 WZID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评价人")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PJR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "邮件地址")]
            [StringLength(40)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YJDZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评价时间")]
            public DateTime PJSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评价内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PJNR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评价状态")]
            public Int32 PJZT { get; set; }


            [Display(Name = "审核人")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "回复")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HF { get; set; }


        }
    }
}
