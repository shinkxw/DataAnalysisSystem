namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_05_A02_ZZDFXZ_metadata))]
    public partial class EDU_ZXDY_05_A02_ZZDFXZ
    {
        public EDU_ZXDY_05_A02_ZZDFXZ()
        {
            XZNR = "";
        }
        public class EDU_ZXDY_05_A02_ZZDFXZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ֵ�ܴ��ϸ���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 SSDLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ϸ������")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZNR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ϸ���ֵ")]
            [Range(typeof(decimal), "0", "99")]
            public decimal XZFZ { get; set; }


        }
    }
}
