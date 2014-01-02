namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_03_03_XYHFXX_metadata))]
    public partial class EDU_JPXT_03_03_XYHFXX
    {
        public EDU_JPXT_03_03_XYHFXX()
        {
            HFSJ = DateTime.Now;
            HFJG = "";
            BZ = "";
        }
        public class EDU_JPXT_03_03_XYHFXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学员")]
            public Int32 XYID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "回访时间")]
            public DateTime HFSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "回访结果")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HFJG { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
