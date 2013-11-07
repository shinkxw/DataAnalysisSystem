namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_18_A06_JCCFSQSHJL_metadata))]
    public partial class EDU_ZZXS_18_A06_JCCFSQSHJL
    {
        public EDU_ZZXS_18_A06_JCCFSQSHJL()
        {
            SHSJ = new DateTime(1900, 1, 1);
            BZ = "";
        }
        public class EDU_ZZXS_18_A06_JCCFSQSHJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��������Ϣ")]
            public Int32 XSCFXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����������")]
            public Int32 JCCFSQID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 BZID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��˽��")]
            public Int32 SHJG { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��˽�ʦ")]
            public Int32 SHJSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
