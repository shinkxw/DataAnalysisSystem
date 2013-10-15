namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_15_A05_ZCJH_metadata))]
    public partial class EDU_OAXT_15_A05_ZCJH
    {
        public EDU_OAXT_15_A05_ZCJH()
        {
            Unit = "";
            Borrower = "";
            Remark = "";
        }
        public class EDU_OAXT_15_A05_ZCJH_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "资产目录表")]
            public Int32 TypeID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "资产大类表")]
            public Int32 ClassID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "库存表")]
            public Int32 AID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "数量")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal SumCount { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "单位")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Unit { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "借用方")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Borrower { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Remark { get; set; }


        }
    }
}
