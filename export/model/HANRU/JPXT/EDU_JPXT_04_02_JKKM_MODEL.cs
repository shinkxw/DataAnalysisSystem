namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_04_02_JKKM_metadata))]
    public partial class EDU_JPXT_04_02_JKKM
    {
        public EDU_JPXT_04_02_JKKM()
        {
            CLXHMC = "";
            BZ = "";
        }
        public class EDU_JPXT_04_02_JKKM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "科目名称")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLXHMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "车辆型号")]
            public Int32 CLXHID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
