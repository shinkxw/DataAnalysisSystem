namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_52_A02_XYPJEJPFXM_metadata))]
    public partial class EDU_ZZJX_52_A02_XYPJEJPFXM
    {
        public EDU_ZZJX_52_A02_XYPJEJPFXM()
        {
            XMMC = "";
        }
        public class EDU_ZZJX_52_A02_XYPJEJPFXM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "一级项目")]
            public Int32 YJXMID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "项目名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMMC { get; set; }


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
