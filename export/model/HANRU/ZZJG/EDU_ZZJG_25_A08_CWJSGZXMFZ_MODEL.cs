namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_25_A08_CWJSGZXMFZ_metadata))]
    public partial class EDU_ZZJG_25_A08_CWJSGZXMFZ
    {
        public EDU_ZZJG_25_A08_CWJSGZXMFZ()
        {
            FZMC = "";
            ZY = "";
            XMIDLB = "";
            XMMCLB = "";
        }
        public class EDU_ZZJG_25_A08_CWJSGZXMFZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FZMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ժҪ")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ĿID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ŀ�����б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMMCLB { get; set; }


        }
    }
}
