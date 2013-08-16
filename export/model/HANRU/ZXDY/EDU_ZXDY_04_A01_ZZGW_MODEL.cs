namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_04_A01_ZZGW_metadata))]
    public partial class EDU_ZXDY_04_A01_ZZGW
    {
        public EDU_ZXDY_04_A01_ZZGW()
        {
            GWGZNR = "";
        }
        public class EDU_ZXDY_04_A01_ZZGW_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "值周岗位表")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "岗位工作内容")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GWGZNR { get; set; }


        }
    }
}
