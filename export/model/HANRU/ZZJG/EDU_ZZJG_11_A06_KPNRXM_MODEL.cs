namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_11_A06_KPNRXM_metadata))]
    public partial class EDU_ZZJG_11_A06_KPNRXM
    {
        public EDU_ZZJG_11_A06_KPNRXM()
        {
            XMMC = "";
            XMXX = "";
        }
        public class EDU_ZZJG_11_A06_KPNRXM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "项目名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "项目信息")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMXX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评内容")]
            public Int32 KPNRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评方式")]
            public Int32 KPFSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "权重")]
            public Int32 QZ { get; set; }


        }
    }
}
