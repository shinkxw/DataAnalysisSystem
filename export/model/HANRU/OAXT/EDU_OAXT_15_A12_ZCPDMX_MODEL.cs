namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_15_A12_ZCPDMX_metadata))]
    public partial class EDU_OAXT_15_A12_ZCPDMX
    {
        public EDU_OAXT_15_A12_ZCPDMX()
        {
            PUserID = "";
            Name = "";
            Remark = "";
        }
        public class EDU_OAXT_15_A12_ZCPDMX_metadata
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
            [Display(Name = "盘点表")]
            public Int32 PID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "盘点人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PUserID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "库存数")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal Storesum { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实存数")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal RealSum { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "资产名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Name { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "资产总量")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal AllCount { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Remark { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "借用数量")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal BorrowCount { get; set; }


        }
    }
}
