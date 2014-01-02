namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_15_A03_ZCKC_metadata))]
    public partial class EDU_OAXT_15_A03_ZCKC
    {
        public EDU_OAXT_15_A03_ZCKC()
        {
            Name = "";
            Info = "";
            Productdate = DateTime.Now;
            Merchant = "";
            Vender = "";
            Remark = "";
        }
        public class EDU_OAXT_15_A03_ZCKC_metadata
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


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "资产名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Name { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "资产规格")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Info { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "出厂时间")]
            public DateTime Productdate { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "单价")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal Price { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "数量")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal SumCount { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "供应商")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Merchant { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "厂家")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Vender { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Remark { get; set; }


        }
    }
}
