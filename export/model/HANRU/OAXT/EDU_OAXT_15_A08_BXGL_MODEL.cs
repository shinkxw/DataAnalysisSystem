namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_15_A08_BXGL_metadata))]
    public partial class EDU_OAXT_15_A08_BXGL
    {
        public EDU_OAXT_15_A08_BXGL()
        {
            Title = "";
            Telephone = "";
            Repairplace = "";
            Repaircontent = "";
            Repairpeople = "";
            RepairDate = DateTime.Now;
            ReadrID = "";
            Readr = "";
            Applicant = "";
            Evaluate = "";
            StartDate = DateTime.Now;
            Remark = "";
            GZTP = "";
        }
        public class EDU_OAXT_15_A08_BXGL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "库存表")]
            public Int32 AID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "报修类型")]
            public Int32 TypeID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "报修主题")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Title { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "联系电话")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Telephone { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "报修地点")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Repairplace { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "报修内容")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Repaircontent { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "维修人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Repairpeople { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "维修时间")]
            public DateTime RepairDate { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "阅读情况")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ReadrID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "阅读情况")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Readr { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "申请人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Applicant { get; set; }


            [Display(Name = "审批人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Approver { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评价")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Evaluate { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开始时间")]
            public DateTime StartDate { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "状态")]
            public Int32 Status { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Remark { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "数量")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal SumCount { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "故障图片")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZTP { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "完成状态")]
            public Int32 WCZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "删除状态")]
            public Int32 SCZT { get; set; }


        }
    }
}
