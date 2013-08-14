namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_04_A03_ZZGWFP_metadata))]
    public partial class EDU_ZXDY_04_A03_ZZGWFP
    {
        public EDU_ZXDY_04_A03_ZZGWFP()
        {
            JSID = "";
        }
        public class EDU_ZXDY_04_A03_ZZGWFP_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ֵ�ܸ�λ�����")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ܴ�")]
            public Int32 ZCID { get; set; }


            [Display(Name = "������")]
            public Int32 GZR { get; set; }


            [Display(Name = "��λ")]
            public Int32 GWID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʦ")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSID { get; set; }


        }
    }
}
