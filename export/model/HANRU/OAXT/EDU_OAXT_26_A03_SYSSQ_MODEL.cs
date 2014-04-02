namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_26_A03_SYSSQ_metadata))]
    public partial class EDU_OAXT_26_A03_SYSSQ
    {
        public EDU_OAXT_26_A03_SYSSQ()
        {
            SYQC = "";
            SYMC = "";
            KM = "";
            BJ = "";
            KSSJ = DateTime.Now;
            JSSJ = DateTime.Now;
            SQSJ = DateTime.Now;
            SQRID = "";
            BZ = "";
        }
        public class EDU_OAXT_26_A03_SYSSQ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实验室")]
            public Int32 SYSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "流程实例")]
            public Int32 LCSLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "实验器材")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SYQC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "实验名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SYMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "科目")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开始时间")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "结束时间")]
            public DateTime JSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请时间")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请状态")]
            public Int32 SQZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "申请人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SQRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
