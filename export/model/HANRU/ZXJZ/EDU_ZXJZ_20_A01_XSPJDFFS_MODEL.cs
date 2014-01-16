namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_20_A01_XSPJDFFS_metadata))]
    public partial class EDU_ZXJZ_20_A01_XSPJDFFS
    {
        public EDU_ZXJZ_20_A01_XSPJDFFS()
        {
            DFFSMC = "";
        }
        public class EDU_ZXJZ_20_A01_XSPJDFFS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ַ�ʽ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFFSMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "״̬")]
            public Int32 ZT { get; set; }


        }
    }
}
