namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_57_A21_DSZXSZWGH_metadata))]
    public partial class EDU_ZXXS_57_A21_DSZXSZWGH
    {
        public EDU_ZXXS_57_A21_DSZXSZWGH()
        {
            RSMB = "";
            WLSNDW = "";
            WGXQDZY = "";
            WXWDCS = "";
            TJSJ = DateTime.Now;
        }
        public class EDU_ZXXS_57_A21_DSZXSZWGH_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "人生目标")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RSMB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "未来十年的我")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WLSNDW { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "我感兴趣的职业")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WGXQDZY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "我向往的城市")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WXWDCS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


        }
    }
}
