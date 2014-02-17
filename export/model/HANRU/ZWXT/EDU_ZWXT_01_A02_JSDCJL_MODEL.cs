namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZWXT_01_A02_JSDCJL_metadata))]
    public partial class EDU_ZWXT_01_A02_JSDCJL
    {
        public EDU_ZWXT_01_A02_JSDCJL()
        {
            DCSJ = DateTime.Now;
            DCRID = "";
        }
        public class EDU_ZWXT_01_A02_JSDCJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "菜品")]
            public Int32 CPID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "订餐时间")]
            public DateTime DCSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "订餐人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DCRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所订数量")]
            public Int32 SDSL { get; set; }


        }
    }
}
