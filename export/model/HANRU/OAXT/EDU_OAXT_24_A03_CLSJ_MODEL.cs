namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_24_A03_CLSJ_metadata))]
    public partial class EDU_OAXT_24_A03_CLSJ
    {
        public EDU_OAXT_24_A03_CLSJ()
        {
            CLMC = "";
            CLPP = "";
            CLCPH = "";
            BZ = "";
        }
        public class EDU_OAXT_24_A03_CLSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "车辆名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "车辆品牌")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLPP { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "车辆车牌号")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLCPH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最大可载人数")]
            public Int32 ZDRNRS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "车辆状态")]
            public Int32 CLZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
