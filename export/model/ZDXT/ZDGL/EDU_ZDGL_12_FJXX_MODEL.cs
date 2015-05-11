namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_12_FJXX_metadata))]
    public partial class EDU_ZDGL_12_FJXX
    {
        public EDU_ZDGL_12_FJXX()
        {
            PCH = "";
            BZ = "";
        }
        public class EDU_ZDGL_12_FJXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "批次号")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PCH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "型号")]
            public Int32 XHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "收入数量")]
            public Int32 SRSL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "良品数量")]
            public Int32 LPSL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "故障数量")]
            public Int32 GZSL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "报废数量")]
            public Int32 BFSL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "人为损坏数量")]
            public Int32 RWSHSL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其他")]
            public Int32 QT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "合计")]
            public Int32 HJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
