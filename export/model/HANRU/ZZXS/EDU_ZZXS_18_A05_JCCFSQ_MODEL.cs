namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_18_A05_JCCFSQ_metadata))]
    public partial class EDU_ZZXS_18_A05_JCCFSQ
    {
        public EDU_ZZXS_18_A05_JCCFSQ()
        {
            JCYY = "";
            YJTL = "";
            SQSJ = DateTime.Now;
            SQTHYY = "";
            ZHSHSJ = DateTime.Now;
            BZ = "";
        }
        public class EDU_ZZXS_18_A05_JCCFSQ_metadata
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


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ԭ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JCYY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YJTL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ǰ״̬")]
            public Int32 DQZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ǰ����")]
            public Int32 DQBZID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ѧ��")]
            public Int32 SQXSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����˻�ԭ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SQTHYY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ʱ��")]
            public DateTime ZHSHSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����˽�ʦ")]
            public Int32 ZHSHJSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
