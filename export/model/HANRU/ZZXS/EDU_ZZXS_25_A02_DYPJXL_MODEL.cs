namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_25_A02_DYPJXL_metadata))]
    public partial class EDU_ZZXS_25_A02_DYPJXL
    {
        public EDU_ZZXS_25_A02_DYPJXL()
        {
            MC = "";
        }
        public class EDU_ZZXS_25_A02_DYPJXL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评分对象类型")]
            public Int32 PFDXLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "大类")]
            public Int32 DLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "默认分值")]
            [Range(typeof(decimal), "0", "999")]
            public decimal MRFZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "能否修改分值")]
            public Int32 NFXGFZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分值上限")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FZSX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分值下限")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FZXX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排列顺序")]
            public Int32 PLSX { get; set; }


        }
    }
}
