namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXX_10_A02_YCDJ_metadata))]
    public partial class EDU_ZXXX_10_A02_YCDJ
    {
        public EDU_ZXXX_10_A02_YCDJ()
        {
            RQ = DateTime.Now;
            SFJC = "";
        }
        public class EDU_ZXXX_10_A02_YCDJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 SCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public DateTime RQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ�Ͳ�")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFJC { get; set; }


        }
    }
}
