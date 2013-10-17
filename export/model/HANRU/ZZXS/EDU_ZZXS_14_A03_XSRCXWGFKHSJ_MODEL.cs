namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_14_A03_XSRCXWGFKHSJ_metadata))]
    public partial class EDU_ZZXS_14_A03_XSRCXWGFKHSJ
    {
        public EDU_ZZXS_14_A03_XSRCXWGFKHSJ()
        {
            KHBJDM = "";
            KHSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZXS_14_A03_XSRCXWGFKHSJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���˰༶����")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KHBJDM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���˱�")]
            public Int32 KHBID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Ŀ")]
            public Int32 KHXMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���˷�ֵ")]
            public Int32 KHFZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime KHSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��¼��ʦ")]
            public Int32 JLJSID { get; set; }


        }
    }
}
