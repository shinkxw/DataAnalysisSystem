namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_32_A03_DCWJTMXX_metadata))]
    public partial class EDU_OAXT_32_A03_DCWJTMXX
    {
        public EDU_OAXT_32_A03_DCWJTMXX()
        {
            SelectItem = "";
        }
        public class EDU_OAXT_32_A03_DCWJTMXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所属题目")]
            public Int32 TMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所属问卷")]
            public Int32 WJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "选项")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SelectItem { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "选项分值")]
            public Int32 XXFZ { get; set; }


        }
    }
}
