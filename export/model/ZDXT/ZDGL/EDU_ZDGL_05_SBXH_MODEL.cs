namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_05_SBXH_metadata))]
    public partial class EDU_ZDGL_05_SBXH
    {
        public EDU_ZDGL_05_SBXH()
        {
            XX = "";
            PY = "";
            MS = "";
        }
        public class EDU_ZDGL_05_SBXH_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "型号")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "类型")]
            public Int32 LXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "生产厂家")]
            public Int32 SCCJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "拼音")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "描述")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "价格")]
            public float JG { get; set; }


        }
    }
}
