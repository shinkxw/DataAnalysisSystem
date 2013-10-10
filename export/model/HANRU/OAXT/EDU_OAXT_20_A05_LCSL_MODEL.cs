namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_20_A05_LCSL_metadata))]
    public partial class EDU_OAXT_20_A05_LCSL
    {
        public EDU_OAXT_20_A05_LCSL()
        {
            SQRID = "";
            SPRID = "";
            SQSJ = new DateTime(1900, 1, 1);
            YXQ = new DateTime(1900, 1, 1);
            FJ = "";
            BZ = "";
        }
        public class EDU_OAXT_20_A05_LCSL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "流程模板")]
            public Int32 LCMBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "申请人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SQRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "审批人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SPRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请时间")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "当前步骤")]
            public Int32 DQBZID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "当前步骤执行状态")]
            public Int32 DQBZZXZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "有效期")]
            public DateTime YXQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实例状态")]
            public Int32 SLZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "附件")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "类型")]
            public Int32 LXID { get; set; }


            [Display(Name = "类型名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXMC { get; set; }


        }
    }
}
