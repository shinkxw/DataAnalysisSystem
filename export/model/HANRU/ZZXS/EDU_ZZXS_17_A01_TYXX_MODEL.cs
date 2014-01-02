namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_17_A01_TYXX_metadata))]
    public partial class EDU_ZZXS_17_A01_TYXX
    {
        public EDU_ZZXS_17_A01_TYXX()
        {
            BJID = "";
            RTSJ = DateTime.Now;
            ZRD = "";
            ZRSJ = DateTime.Now;
            ZCSJ = DateTime.Now;
            BZ = "";
        }
        public class EDU_ZZXS_17_A01_TYXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime RTSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ת���")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZRD { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ת��ʱ��")]
            public DateTime ZRSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ת��ʱ��")]
            public DateTime ZCSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ǰ״̬")]
            public Int32 DQZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����ʦ")]
            public Int32 JBJSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
