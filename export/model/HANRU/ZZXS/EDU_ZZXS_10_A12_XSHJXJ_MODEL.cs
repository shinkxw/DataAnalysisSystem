namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_10_A12_XSHJXJ_metadata))]
    public partial class EDU_ZZXS_10_A12_XSHJXJ
    {
        public EDU_ZZXS_10_A12_XSHJXJ()
        {
            HJSJ = DateTime.Now;
            BZ = "";
            SQYY = "";
            SQSJ = DateTime.Now;
            SHSJ = DateTime.Now;
        }
        public class EDU_ZZXS_10_A12_XSHJXJ_metadata
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
            [Display(Name = "学生")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "奖学金")]
            public Int32 JXJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "获得金额")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal HDJE { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "获奖时间")]
            public DateTime HJSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "申请原因")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SQYY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请时间")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核状态")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核时间")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核教师")]
            public Int32 SHJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加教师")]
            public Int32 TJJSID { get; set; }


        }
    }
}
