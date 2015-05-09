namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXX_11_A01_RKJL_metadata))]
    public partial class EDU_ZXXX_11_A01_RKJL
    {
        public EDU_ZXXX_11_A01_RKJL()
        {
            ZCM = "";
            RKSJ = DateTime.Now;
        }
        public class EDU_ZXXX_11_A01_RKJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "资产名")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZCM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "数量")]
            public Int32 SL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "单价")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal DJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "入库时间")]
            public DateTime RKSJ { get; set; }


        }
    }
}
