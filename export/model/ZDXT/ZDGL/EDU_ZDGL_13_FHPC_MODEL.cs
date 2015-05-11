namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_13_FHPC_metadata))]
    public partial class EDU_ZDGL_13_FHPC
    {
        public EDU_ZDGL_13_FHPC()
        {
            FHPCH = "";
            FHR = "";
            FHSJ = DateTime.Now;
        }
        public class EDU_ZDGL_13_FHPC_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发货批次号")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FHPCH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发货人")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FHR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "物流公司")]
            public Int32 WLGSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "总箱数")]
            public Int32 ZXS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发货时间")]
            public DateTime FHSJ { get; set; }


        }
    }
}
