namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_55_A03_CZDADFFS_metadata))]
    public partial class EDU_ZXXS_55_A03_CZDADFFS
    {
        public EDU_ZXXS_55_A03_CZDADFFS()
        {
            DFFSMC = "";
        }
        public class EDU_ZXXS_55_A03_CZDADFFS_metadata
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
            [Display(Name = "�����Ŀ����")]
            public Int32 DFXMLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "״̬")]
            public Int32 ZT { get; set; }


        }
    }
}
