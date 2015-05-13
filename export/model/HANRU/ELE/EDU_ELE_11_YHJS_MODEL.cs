namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_11_YHJS_metadata))]
    public partial class EDU_ELE_11_YHJS
    {
        public EDU_ELE_11_YHJS()
        {
            YHID = "";
        }
        public class EDU_ELE_11_YHJS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "对象组")]
            public Int32 DXZID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "角色")]
            public Int32 JSID { get; set; }


        }
    }
}
