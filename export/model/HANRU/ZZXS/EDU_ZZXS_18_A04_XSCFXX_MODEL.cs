namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_18_A04_XSCFXX_metadata))]
    public partial class EDU_ZZXS_18_A04_XSCFXX
    {
        public EDU_ZZXS_18_A04_XSCFXX()
        {
            WJQK = "";
            SBSJ = DateTime.Now;
            SHSJ = DateTime.Now;
            BZ = "";
            FSSJ = DateTime.Now;
            JCSJ = DateTime.Now;
        }
        public class EDU_ZZXS_18_A04_XSCFXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "违纪类型")]
            public Int32 WJLXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "当前状态")]
            public Int32 DQZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "违纪情况")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WJQK { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "建议处分类型")]
            public Int32 JYCFLXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上报时间")]
            public DateTime SBSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上报教师")]
            public Int32 SBJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最终处分类型")]
            public Int32 ZZCFLXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核时间")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核教师")]
            public Int32 SHJSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发生时间")]
            public DateTime FSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "解除时间")]
            public DateTime JCSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "解除教师")]
            public Int32 JCJSID { get; set; }


        }
    }
}
