namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_50_A12_PJPFFS_metadata))]
    public partial class EDU_ZZJX_50_A12_PJPFFS
    {
        public EDU_ZZJX_50_A12_PJPFFS()
        {
            PFFSMC = "";
        }
        public class EDU_ZZJX_50_A12_PJPFFS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ַ�ʽ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PFFSMC { get; set; }


        }
    }
}
