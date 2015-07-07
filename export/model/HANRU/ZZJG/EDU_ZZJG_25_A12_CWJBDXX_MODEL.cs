namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_25_A12_CWJBDXX_metadata))]
    public partial class EDU_ZZJG_25_A12_CWJBDXX
    {
        public EDU_ZZJG_25_A12_CWJBDXX()
        {
            JBDH = "";
            JBDLX = "";
            JBDSJ = DateTime.Now;
        }
        public class EDU_ZZJG_25_A12_CWJBDXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "结报单号")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBDH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "结报单类型")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBDLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "结报单时间")]
            public DateTime JBDSJ { get; set; }


        }
    }
}
