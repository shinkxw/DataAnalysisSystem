namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_02_A03_SJTM_metadata))]
    public partial class EDU_ZYZX_02_A03_SJTM
    {
        public EDU_ZYZX_02_A03_SJTM()
        {
            TM = "";
            SCRID = "";
            SCSJ = DateTime.Now;
            SHRID = "";
            SHSJ = DateTime.Now;
        }
        public class EDU_ZYZX_02_A03_SJTM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�γ̿�")]
            public Int32 KCKID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "֪ʶ��")]
            public Int32 ZSDID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 LXID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ŀ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ѷ�ϵ��")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal NDXS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֵ")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal FZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���״̬")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ϴ���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SCRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ϴ�ʱ��")]
            public DateTime SCSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime SHSJ { get; set; }


        }
    }
}
