namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_51_A02_KHDLXM_metadata))]
    public partial class EDU_ZXXS_51_A02_KHDLXM
    {
        public EDU_ZXXS_51_A02_KHDLXM()
        {
            DLXMMC = "";
        }
        public class EDU_ZXXS_51_A02_KHDLXM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 SSDLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������Ŀ����")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DLXMMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֵ����")]
            public Int32 FZLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ��߷�")]
            [Range(typeof(decimal), "0", "999")]
            public decimal XMZGF { get; set; }


        }
    }
}
