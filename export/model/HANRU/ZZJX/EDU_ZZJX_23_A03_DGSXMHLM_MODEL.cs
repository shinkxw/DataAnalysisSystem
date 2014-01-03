namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_23_A03_DGSXMHLM_metadata))]
    public partial class EDU_ZZJX_23_A03_DGSXMHLM
    {
        public EDU_ZZJX_23_A03_DGSXMHLM()
        {
            LMMC = "";
            LMLJ = "";
        }
        public class EDU_ZZJX_23_A03_DGSXMHLM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "栏目名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LMMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "栏目链接")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LMLJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "层级")]
            public Int32 CJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "父栏目")]
            public Int32 FLMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否启用")]
            public Int32 SFQY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排列顺序")]
            public Int32 PLSX { get; set; }


        }
    }
}
