namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_04_01_KMKS_metadata))]
    public partial class EDU_JPXT_04_01_KMKS
    {
        public EDU_JPXT_04_01_KMKS()
        {
            KMDM = "";
            KSSJ = DateTime.Now;
            BZ = "";
        }
        public class EDU_JPXT_04_01_KMKS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "科目代码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KMDM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考试时间")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
