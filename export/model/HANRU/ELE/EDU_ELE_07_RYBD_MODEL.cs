namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_07_RYBD_metadata))]
    public partial class EDU_ELE_07_RYBD
    {
        public EDU_ELE_07_RYBD()
        {
            YHID = "";
            BDSJ = new DateTime(1900, 1, 1);
            BDTM = "";
            CZXX = "";
        }
        public class EDU_ELE_07_RYBD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "应用")]
            public Int32 APPID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "变动时间")]
            public DateTime BDSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "变动条目")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BDTM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "变动荣誉")]
            public Int32 BDRY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "操作信息")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CZXX { get; set; }


        }
    }
}
