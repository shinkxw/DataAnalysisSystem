namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_01_A01_JZGKZ_metadata))]
    public partial class EDU_ZZJG_01_A01_JZGKZ
    {
        public EDU_ZZJG_01_A01_JZGKZ()
        {
            GZJY = "";
            LDJN = "";
            XXJL = "";
        }
        public class EDU_ZZJG_01_A01_JZGKZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "�̹�������Ϣ")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 JL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 GL { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZJY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ͷ�����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LDJN { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧϰ����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXJL { get; set; }


        }
    }
}
