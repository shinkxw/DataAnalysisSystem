namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_20_A02_LCBDSJ_metadata))]
    public partial class EDU_OAXT_20_A02_LCBDSJ
    {
        public EDU_OAXT_20_A02_LCBDSJ()
        {
            BDMC = "";
            BDNR = "";
            TJSJ = DateTime.Now;
            BZ = "";
        }
        public class EDU_OAXT_20_A02_LCBDSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "表单名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BDMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "表单内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BDNR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
