namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_10_DXZJD_metadata))]
    public partial class EDU_ELE_10_DXZJD
    {
        public EDU_ELE_10_DXZJD()
        {
            JDMC = "";
        }
        public class EDU_ELE_10_DXZJD_metadata
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
            [Display(Name = "划分层级")]
            public Int32 HFCJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "父节点")]
            public Int32 FJDID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "节点名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JDMC { get; set; }


        }
    }
}
