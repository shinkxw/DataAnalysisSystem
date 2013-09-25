namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_01_06_JLCCLXH_metadata))]
    public partial class EDU_JPXT_01_06_JLCCLXH
    {
        public EDU_JPXT_01_06_JLCCLXH()
        {
            LRSJ = new DateTime(1900, 1, 1);
            BZ = "";
        }
        public class EDU_JPXT_01_06_JLCCLXH_metadata
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
            [Display(Name = "消耗金额")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal XHQK { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
