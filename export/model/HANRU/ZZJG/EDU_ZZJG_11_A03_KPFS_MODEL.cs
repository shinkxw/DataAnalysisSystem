namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_11_A03_KPFS_metadata))]
    public partial class EDU_ZZJG_11_A03_KPFS
    {
        public EDU_ZZJG_11_A03_KPFS()
        {
            KPFSMC = "";
        }
        public class EDU_ZZJG_11_A03_KPFS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ʽ����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KPFSMC { get; set; }


        }
    }
}
