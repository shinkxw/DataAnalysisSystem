namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_21_A01_BMXSL_metadata))]
    public partial class EDU_ZZJG_21_A01_BMXSL
    {
        public EDU_ZZJG_21_A01_BMXSL()
        {
            BMBH = "";
            SJ = DateTime.Now;
            ZYGZ = "";
            BZ = "";
        }
        public class EDU_ZZJG_21_A01_BMXSL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "部门编号")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BMBH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "时间")]
            public DateTime SJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "主要工作")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYGZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
