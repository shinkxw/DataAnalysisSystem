namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZFC_08_A03_ZWHCY_metadata))]
    public partial class EDU_ZZFC_08_A03_ZWHCY
    {
        public EDU_ZZFC_08_A03_ZWHCY()
        {
            TJSJ = new DateTime(1900, 1, 1);
            ZWMC = "";
            GZNR = "";
        }
        public class EDU_ZZFC_08_A03_ZWHCY_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ա")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�û�")]
            public Int32 YHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�û�����")]
            public Int32 YHLX { get; set; }


            [Display(Name = "��Ա����")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CYXM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ְλ����")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZWMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZNR { get; set; }


        }
    }
}
