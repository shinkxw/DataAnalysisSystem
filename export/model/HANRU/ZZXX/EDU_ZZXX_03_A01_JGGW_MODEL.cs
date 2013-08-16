namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXX_03_A01_JGGW_metadata))]
    public partial class EDU_ZZXX_03_A01_JGGW
    {
        public EDU_ZZXX_03_A01_JGGW()
        {
            JGH = "";
            GWBH = "";
            GWSM = "";
        }
        public class EDU_ZZXX_03_A01_JGGW_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "岗位表")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "机构号")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JGH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "岗位编号")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GWBH { get; set; }


            [Display(Name = "岗位名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GWMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "岗位说明")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GWSM { get; set; }


        }
    }
}
