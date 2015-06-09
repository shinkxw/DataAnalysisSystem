namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZWXT_05_A03_XC_metadata))]
    public partial class EDU_ZWXT_05_A03_XC
    {
        public EDU_ZWXT_05_A03_XC()
        {
            DQBGYHID = "";
            MC = "";
            GG = "";
            DW = "";
            SCRQ = DateTime.Now;
            RKSJ = DateTime.Now;
            SCCJ = "";
            BZ = "";
        }
        public class EDU_ZWXT_05_A03_XC_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "校产类型")]
            public Int32 XCLXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "校产目录")]
            public Int32 XCMLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "当前保管用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DQBGYHID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "规格")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GG { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "单价")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal DJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "数量")]
            public Int32 SL { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "单位")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DW { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "生产日期")]
            public DateTime SCRQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "入库时间")]
            public DateTime RKSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "生产厂家")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SCCJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "当前状态")]
            public Int32 DQZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
