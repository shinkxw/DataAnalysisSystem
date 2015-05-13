namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_10_DXZ_metadata))]
    public partial class EDU_ELE_10_DXZ
    {
        public EDU_ELE_10_DXZ()
        {
            DXZMC = "";
            DXIDLB = "";
            DXMCLB = "";
        }
        public class EDU_ELE_10_DXZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "对象组名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DXZMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "对象ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DXIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "对象名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DXMCLB { get; set; }


        }
    }
}
