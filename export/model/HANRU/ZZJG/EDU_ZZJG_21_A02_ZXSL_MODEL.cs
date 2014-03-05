namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_21_A02_ZXSL_metadata))]
    public partial class EDU_ZZJG_21_A02_ZXSL
    {
        public EDU_ZZJG_21_A02_ZXSL()
        {
            ZRBM = "";
            SJ = DateTime.Now;
            ZYGZ = "";
            BZ = "";
        }
        public class EDU_ZZJG_21_A02_ZXSL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���β���")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZRBM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʱ��")]
            public DateTime SJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ҫ����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYGZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
