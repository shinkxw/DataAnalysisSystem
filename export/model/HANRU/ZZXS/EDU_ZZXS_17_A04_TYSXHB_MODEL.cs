namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_17_A04_TYSXHB_metadata))]
    public partial class EDU_ZZXS_17_A04_TYSXHB
    {
        public EDU_ZZXS_17_A04_TYSXHB()
        {
            HBNR = "";
            BZ = "";
            TJSJ = DateTime.Now;
        }
        public class EDU_ZZXS_17_A04_TYSXHB_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�㱨����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HBNR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Display(Name = "���ʱ��")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ӽ�ʦ")]
            public Int32 TJJSID { get; set; }


        }
    }
}
