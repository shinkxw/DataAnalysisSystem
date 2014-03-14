namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_04_A06_JCBF_metadata))]
    public partial class EDU_ZXJX_04_A06_JCBF
    {
        public EDU_ZXJX_04_A06_JCBF()
        {
            BFYY = "";
            BFSJ = DateTime.Now;
        }
        public class EDU_ZXJX_04_A06_JCBF_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Display(Name = "教材")]
            public Int32 JCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "报废数量")]
            public Int32 BFSL { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "报废原因")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BFYY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "报废时间")]
            public DateTime BFSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "经手人")]
            public Int32 JSRID { get; set; }


        }
    }
}
