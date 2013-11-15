namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_36_A03_JXPJ_metadata))]
    public partial class EDU_ZZJX_36_A03_JXPJ
    {
        public EDU_ZZJX_36_A03_JXPJ()
        {
            PJNR = "";
            PJSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZJX_36_A03_JXPJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ϰ�ƻ�")]
            public Int32 JXJHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ����Ϣ")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PJNR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime PJSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���۽�ʦ")]
            public Int32 PJJSID { get; set; }


        }
    }
}
