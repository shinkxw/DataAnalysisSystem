namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_55_A04_CZDADFXX_metadata))]
    public partial class EDU_ZXXS_55_A04_CZDADFXX
    {
        public EDU_ZXXS_55_A04_CZDADFXX()
        {
            XXNR = "";
            TPLJ = "";
        }
        public class EDU_ZXXS_55_A04_CZDADFXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ַ�ʽ")]
            public Int32 DFFSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѡ������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXNR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ͼƬ·��")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TPLJ { get; set; }


        }
    }
}
