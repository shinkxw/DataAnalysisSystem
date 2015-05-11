namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_14_FHXX_metadata))]
    public partial class EDU_ZDGL_14_FHXX
    {
        public EDU_ZDGL_14_FHXX()
        {
            FHRQ = DateTime.Now;
        }
        public class EDU_ZDGL_14_FHXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发货批次")]
            public Int32 FHPCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分拣详细")]
            public Int32 FJXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "基础服务")]
            public Int32 JCFW { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "换壳")]
            public Int32 HK { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "维修")]
            public Int32 WX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "新电源")]
            public Int32 XDY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "旧电源")]
            public Int32 JDY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "配件")]
            public Int32 PJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "退回")]
            public Int32 TH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其他")]
            public Int32 QT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "未返")]
            public Int32 WF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "返回日期")]
            public DateTime FHRQ { get; set; }


        }
    }
}
