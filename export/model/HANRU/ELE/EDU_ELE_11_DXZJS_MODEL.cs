namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_11_DXZJS_metadata))]
    public partial class EDU_ELE_11_DXZJS
    {
        public EDU_ELE_11_DXZJS()
        {
            JSMC = "";
            DXZJDBMJH = "";
            DXZJDMCLB = "";
        }
        public class EDU_ELE_11_DXZJS_metadata
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
            [Display(Name = "角色类别")]
            public Int32 JSLBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "角色名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "对象组节点编码集合")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DXZJDBMJH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "对象组节点名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DXZJDMCLB { get; set; }


        }
    }
}
