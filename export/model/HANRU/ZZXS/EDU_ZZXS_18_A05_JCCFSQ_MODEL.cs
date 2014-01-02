namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_18_A05_JCCFSQ_metadata))]
    public partial class EDU_ZZXS_18_A05_JCCFSQ
    {
        public EDU_ZZXS_18_A05_JCCFSQ()
        {
            JCYY = "";
            YJTL = "";
            SQSJ = DateTime.Now;
            SQTHYY = "";
            ZHSHSJ = DateTime.Now;
            BZ = "";
        }
        public class EDU_ZZXS_18_A05_JCCFSQ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生处分信息")]
            public Int32 XSCFXXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "解除原因")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JCYY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "依据条例")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YJTL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "当前状态")]
            public Int32 DQZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "当前步骤")]
            public Int32 DQBZID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请时间")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请学生")]
            public Int32 SQXSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "申请退回原因")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SQTHYY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最后审核时间")]
            public DateTime ZHSHSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最后审核教师")]
            public Int32 ZHSHJSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
