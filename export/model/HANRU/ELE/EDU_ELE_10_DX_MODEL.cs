namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_10_DX_metadata))]
    public partial class EDU_ELE_10_DX
    {
        public EDU_ELE_10_DX()
        {
            DXMC = "";
            DXID = "";
        }
        public class EDU_ELE_10_DX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "对象组")]
            public Int32 DXZID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "划分方式")]
            public Int32 HFFSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "节点")]
            public Int32 JDID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "对象名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DXMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "对象类型")]
            public Int32 DXLX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "对象")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DXID { get; set; }


        }
    }
}
