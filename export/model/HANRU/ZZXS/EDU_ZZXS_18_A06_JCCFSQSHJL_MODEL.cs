namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_18_A06_JCCFSQSHJL_metadata))]
    public partial class EDU_ZZXS_18_A06_JCCFSQSHJL
    {
        public EDU_ZZXS_18_A06_JCCFSQSHJL()
        {
            SHSJ = new DateTime(1900, 1, 1);
            BZ = "";
        }
        public class EDU_ZZXS_18_A06_JCCFSQSHJL_metadata
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


            [Required(ErrorMessage = "必填")]
            [Display(Name = "解除处分申请")]
            public Int32 JCCFSQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "步骤")]
            public Int32 BZID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核结果")]
            public Int32 SHJG { get; set; }


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


        }
    }
}
