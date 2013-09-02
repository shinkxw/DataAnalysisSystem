namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_MHXT_WZPZ_metadata))]
    public partial class EDU_ZYZX_MHXT_WZPZ
    {
        public EDU_ZYZX_MHXT_WZPZ()
        {
            WEBNAME = "";
            WEBURL = "";
        }
        public class EDU_ZYZX_MHXT_WZPZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��վ��")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WEBNAME { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ���")]
            public Int32 STATUID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ַ")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WEBURL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ��ʽ")]
            public Int32 CSSID { get; set; }


        }
    }
}
