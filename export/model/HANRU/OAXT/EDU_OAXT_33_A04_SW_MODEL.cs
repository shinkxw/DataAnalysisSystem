namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_33_A04_SW_metadata))]
    public partial class EDU_OAXT_33_A04_SW
    {
        public EDU_OAXT_33_A04_SW()
        {
            XFRID = "";
            JSRID = "";
            XFSJ = DateTime.Now;
            HFXX = "";
            HFFJ = "";
        }
        public class EDU_OAXT_33_A04_SW_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "公文")]
            public Int32 GWID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "下发人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XFRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "接受人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "下发时间")]
            public DateTime XFSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "签收状态")]
            public Int32 QSZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "短信通知状态")]
            public Int32 DXTZZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "回复状态")]
            public Int32 HFZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "回复信息")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HFXX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "回复附件")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HFFJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "处理状态")]
            public Int32 CLZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "删除状态")]
            public Int32 SCZT { get; set; }


        }
    }
}
