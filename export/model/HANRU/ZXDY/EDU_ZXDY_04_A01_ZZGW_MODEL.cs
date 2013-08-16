namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_04_A01_ZZGW_metadata))]
    public partial class EDU_ZXDY_04_A01_ZZGW
    {
        public EDU_ZXDY_04_A01_ZZGW()
        {
            GWGZNR = "";
        }
        public class EDU_ZXDY_04_A01_ZZGW_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ֵ�ܸ�λ��")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��λ��������")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GWGZNR { get; set; }


        }
    }
}
