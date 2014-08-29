namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_23_SXDSJ_metadata))]
    public partial class EDU_ZDGL_23_SXDSJ
    {
        public EDU_ZDGL_23_SXDSJ()
        {
            WB = "";
        }
        public class EDU_ZDGL_23_SXDSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "送修单")]
            public Int32 SXDID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "设备型号")]
            public Int32 SBXHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "送修单项目")]
            public Int32 SXDXMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "数量")]
            public Int32 SL { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "文本")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WB { get; set; }


        }
    }
}
