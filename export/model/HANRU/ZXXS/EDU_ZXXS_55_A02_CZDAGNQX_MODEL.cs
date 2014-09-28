namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_55_A02_CZDAGNQX_metadata))]
    public partial class EDU_ZXXS_55_A02_CZDAGNQX
    {
        public EDU_ZXXS_55_A02_CZDAGNQX()
        {
            QXMC = "";
        }
        public class EDU_ZXXS_55_A02_CZDAGNQX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 GNID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�û�����")]
            public Int32 YHLX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ȩ������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QXMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "״̬")]
            public Int32 ZT { get; set; }


        }
    }
}
