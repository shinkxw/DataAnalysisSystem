namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_04_02_JCXYXX_metadata))]
    public partial class EDU_ZZJX_04_02_JCXYXX
    {
        public EDU_ZZJX_04_02_JCXYXX()
        {
            NJID = "";
            KCID = "";
            SQSJ = DateTime.Now;
            SHSJ = DateTime.Now;
            SFRK = "";
        }
        public class EDU_ZZJX_04_02_JCXYXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业")]
            public Int32 ZYXXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCID { get; set; }


            [Display(Name = "教材")]
            public Int32 JCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "选用数量")]
            public Int32 XYSL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请人")]
            public Int32 SQRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请时间")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核状态")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核人")]
            public Int32 SHRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核时间")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否入库")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFRK { get; set; }


        }
    }
}
