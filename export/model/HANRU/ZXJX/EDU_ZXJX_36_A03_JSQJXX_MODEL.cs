namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_36_A03_JSQJXX_metadata))]
    public partial class EDU_ZXJX_36_A03_JSQJXX
    {
        public EDU_ZXJX_36_A03_JSQJXX()
        {
            QJKSSJ = DateTime.Now;
            QJJSSJ = DateTime.Now;
            QJYY = "";
            SQSJ = DateTime.Now;
            BZ = "";
            SHRID = "";
            SHSJ = DateTime.Now;
        }
        public class EDU_ZXJX_36_A03_JSQJXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "请假教师")]
            public Int32 QJJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师请假类型")]
            public Int32 JSQJLXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "请假开始时间")]
            public DateTime QJKSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "请假结束时间")]
            public DateTime QJJSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "处理状态")]
            public Int32 CLZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课程处理方式")]
            public Int32 KCCLFS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "请假原因")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QJYY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请时间")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "审核人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核时间")]
            public DateTime SHSJ { get; set; }


        }
    }
}
