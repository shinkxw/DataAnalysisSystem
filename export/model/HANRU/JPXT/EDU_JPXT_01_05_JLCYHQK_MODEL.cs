namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_01_05_JLCYHQK_metadata))]
    public partial class EDU_JPXT_01_05_JLCYHQK
    {
        public EDU_JPXT_01_05_JLCYHQK()
        {
            LRSJ = DateTime.Now;
            BZ = "";
        }
        public class EDU_JPXT_01_05_JLCYHQK_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教练车")]
            public Int32 JLCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教练员")]
            public Int32 JLYID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "录入时间")]
            public DateTime LRSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "充值油量")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal YLCZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
