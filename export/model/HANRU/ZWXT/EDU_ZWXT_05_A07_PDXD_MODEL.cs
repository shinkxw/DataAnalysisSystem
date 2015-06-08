namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZWXT_05_A07_PDXD_metadata))]
    public partial class EDU_ZWXT_05_A07_PDXD
    {
        public EDU_ZWXT_05_A07_PDXD()
        {
            BZ = "";
            BGYHID = "";
        }
        public class EDU_ZWXT_05_A07_PDXD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�̵�")]
            public Int32 PDID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "У��")]
            public Int32 XCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "У������")]
            public Int32 XCSL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�̵�ʵ��")]
            public Int32 PDSS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BGYHID { get; set; }


        }
    }
}
