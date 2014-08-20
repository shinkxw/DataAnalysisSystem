namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_39_A03_GWLZ_metadata))]
    public partial class EDU_OAXT_39_A03_GWLZ
    {
        public EDU_OAXT_39_A03_GWLZ()
        {
            XFRID = "";
            JSRID = "";
            XFSJ = DateTime.Now;
            QSSJ = DateTime.Now;
            CLJG = "";
            FJ = "";
        }
        public class EDU_OAXT_39_A03_GWLZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "收文表")]
            public Int32 SWBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "下发人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XFRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "接收人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "下发文档类型")]
            public Int32 XFWDLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "下发时间")]
            public DateTime XFSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "签收状态")]
            public Int32 QSZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "签收时间")]
            public DateTime QSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "短信通知状态")]
            public Int32 DXTZZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "处理状态")]
            public Int32 CLZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "处理结果")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLJG { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "附件")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "删除状态")]
            public Int32 SCZT { get; set; }


        }
    }
}
