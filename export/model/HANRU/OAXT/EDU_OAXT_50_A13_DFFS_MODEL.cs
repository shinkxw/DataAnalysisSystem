namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A13_DFFS_metadata))]
    public partial class EDU_OAXT_50_A13_DFFS
    {
        public EDU_OAXT_50_A13_DFFS()
        {
            DFFSMC = "";
        }
        public class EDU_OAXT_50_A13_DFFS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ")]
            public Int32 XMID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ַ�ʽ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFFSMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�������")]
            public Int32 DFLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ֵ")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal ZDZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Сֵ")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal ZXZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ĭ��ֵ")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal MRZ { get; set; }


        }
    }
}
