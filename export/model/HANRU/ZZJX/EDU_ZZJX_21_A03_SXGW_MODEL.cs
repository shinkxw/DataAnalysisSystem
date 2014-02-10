namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_21_A03_SXGW_metadata))]
    public partial class EDU_ZZJX_21_A03_SXGW
    {
        public EDU_ZZJX_21_A03_SXGW()
        {
        }
        public class EDU_ZZJX_21_A03_SXGW_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习生")]
            public Int32 SXSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "岗位")]
            public Int32 JobID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "录取类型")]
            public Int32 TypeID { get; set; }


        }
    }
}
