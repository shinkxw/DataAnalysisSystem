namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_09_A01_TKSQSJ_metadata))]
    public partial class EDU_ZZJX_09_A01_TKSQSJ
    {
        public EDU_ZZJX_09_A01_TKSQSJ()
        {
            KCID = "";
            BZ = "";
            SQSJ = DateTime.Now;
        }
        public class EDU_ZZJX_09_A01_TKSQSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "调课类型")]
            public Int32 TKLXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "调课前起始周")]
            public Int32 TKQQSZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "调课前结束周")]
            public Int32 TKQJSZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "调课前星期")]
            public Int32 TKQXQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "调课前时段")]
            public Int32 TKQSD { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "调课前节次")]
            public Int32 TKQJC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "调课后起始周")]
            public Int32 TKHQSZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "调课后结束周")]
            public Int32 TKHJSZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "调课后星期")]
            public Int32 TKHXQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "调课后时段")]
            public Int32 TKHSD { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "调课后节次")]
            public Int32 TKHJC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "当前状态")]
            public Int32 ZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请时间")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "接收教师")]
            public Int32 JSJSID { get; set; }


        }
    }
}
