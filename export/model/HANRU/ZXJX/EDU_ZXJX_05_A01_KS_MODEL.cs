namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_05_A01_KS_metadata))]
    public partial class EDU_ZXJX_05_A01_KS
    {
        public EDU_ZXJX_05_A01_KS()
        {
            KSMC = "";
        }
        public class EDU_ZXJX_05_A01_KS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学年")]
            public Int32 XNID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考试名称")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考试开始时间")]
            public DateTime KSKSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考试结束时间")]
            public DateTime KSJSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "登分开始时间")]
            public DateTime DFKSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "登分结束时间")]
            public DateTime DFJSSJ { get; set; }


        }
    }
}
