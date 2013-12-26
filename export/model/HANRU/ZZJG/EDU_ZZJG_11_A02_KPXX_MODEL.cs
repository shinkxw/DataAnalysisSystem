namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_11_A02_KPXX_metadata))]
    public partial class EDU_ZZJG_11_A02_KPXX
    {
        public EDU_ZZJG_11_A02_KPXX()
        {
            XXMC = "";
        }
        public class EDU_ZZJG_11_A02_KPXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѡ������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ʽ")]
            public Int32 KPFSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ֵ")]
            public Int32 KPFZ { get; set; }


        }
    }
}
