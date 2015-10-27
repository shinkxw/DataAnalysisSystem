namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_60_A04_XPKLB_metadata))]
    public partial class EDU_ZZJX_60_A04_XPKLB
    {
        public EDU_ZZJX_60_A04_XPKLB()
        {
            RQ = DateTime.Now;
            PKSJ = DateTime.Now;
            QRSJ = DateTime.Now;
            PKRID = "";
        }
        public class EDU_ZZJX_60_A04_XPKLB_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师请假信息表")]
            public Int32 JSQJXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排课结果记录表")]
            public Int32 PKJGJLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "日期")]
            public DateTime RQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "处理状态")]
            public Int32 CLZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "需排课教师")]
            public Int32 XPKJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "推荐教师")]
            public Int32 TJJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "代课教师")]
            public Int32 DKJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "代课类型")]
            public Int32 DKLXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排课时间")]
            public DateTime PKSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "确认时间")]
            public DateTime QRSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "排课人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PKRID { get; set; }


        }
    }
}
