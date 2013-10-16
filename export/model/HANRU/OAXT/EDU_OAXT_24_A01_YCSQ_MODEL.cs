namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_24_A01_YCSQ_metadata))]
    public partial class EDU_OAXT_24_A01_YCSQ
    {
        public EDU_OAXT_24_A01_YCSQ()
        {
            YCYY = "";
            KSSJ = new DateTime(1900, 1, 1);
            SQSJ = new DateTime(1900, 1, 1);
            SQRID = "";
            BZ = "";
        }
        public class EDU_OAXT_24_A01_YCSQ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "流程实例")]
            public Int32 LCSLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "用车原因")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YCYY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "外出人数")]
            public Int32 WCRS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开始时间")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "使用天数")]
            public Int32 SYTS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请时间")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "申请人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SQRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请状态")]
            public Int32 SQZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请车辆")]
            public Int32 SQCLID { get; set; }


        }
    }
}
