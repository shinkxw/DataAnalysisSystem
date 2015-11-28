namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_25_A04_DYPJXSPFJL_metadata))]
    public partial class EDU_ZZXS_25_A04_DYPJXSPFJL
    {
        public EDU_ZZXS_25_A04_DYPJXSPFJL()
        {
            BJID = "";
            SJ = DateTime.Now;
            BZ = "";
            TJSJ = DateTime.Now;
            SCSJ = DateTime.Now;
        }
        public class EDU_ZZXS_25_A04_DYPJXSPFJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ܴ�")]
            public Int32 ZCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 DLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "С��")]
            public Int32 XLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʱ��")]
            public DateTime SJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֵ")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "״̬")]
            public Int32 ZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ɾ��״̬")]
            public Int32 SCZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ɾ����ʦ")]
            public Int32 SCJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ɾ��ʱ��")]
            public DateTime SCSJ { get; set; }


        }
    }
}