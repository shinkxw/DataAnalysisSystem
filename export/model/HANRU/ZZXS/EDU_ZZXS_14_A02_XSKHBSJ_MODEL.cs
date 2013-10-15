namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_14_A02_XSKHBSJ_metadata))]
    public partial class EDU_ZZXS_14_A02_XSKHBSJ
    {
        public EDU_ZZXS_14_A02_XSKHBSJ()
        {
            KHBMC = "";
            KHBJDMLB = "";
            KHXMIDLB = "";
            KHJSMCLB = "";
        }
        public class EDU_ZZXS_14_A02_XSKHBSJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���˱�����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KHBMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���˰༶�����б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KHBJDMLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ĿID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KHXMIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���˽�ʦ�����б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KHJSMCLB { get; set; }


            [Display(Name = "���˽�ʦID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KHJSIDLB { get; set; }


        }
    }
}
