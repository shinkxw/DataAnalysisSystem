namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_01_A01_KCPJ_metadata))]
    public partial class EDU_ZZJX_01_A01_KCPJ
    {
        public EDU_ZZJX_01_A01_KCPJ()
        {
            PJR = "";
            PJSJ = DateTime.Now;
            PJNR = "";
            HF = "";
        }
        public class EDU_ZZJX_01_A01_KCPJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评价")]
            public Int32 PJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课序号")]
            public Int32 KXH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评价人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PJR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评价时间")]
            public DateTime PJSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评价内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PJNR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "回复")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HF { get; set; }


        }
    }
}
