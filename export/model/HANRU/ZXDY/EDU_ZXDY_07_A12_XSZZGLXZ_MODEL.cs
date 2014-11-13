namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_07_A12_XSZZGLXZ_metadata))]
    public partial class EDU_ZXDY_07_A12_XSZZGLXZ
    {
        public EDU_ZXDY_07_A12_XSZZGLXZ()
        {
            ZZ = "";
            ZY = "";
            XZKH = "";
        }
        public class EDU_ZXDY_07_A12_XSZZGLXZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�������")]
            public Int32 GLJGID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�鳤")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ա")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "С��ں�(Ŀ��)")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZKH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


        }
    }
}
