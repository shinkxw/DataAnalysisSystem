namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_52_A03_XYPJPFJL_metadata))]
    public partial class EDU_ZZJX_52_A03_XYPJPFJL
    {
        public EDU_ZZJX_52_A03_XYPJPFJL()
        {
            SJ = DateTime.Now;
            BZ = "";
            TJSJ = DateTime.Now;
            XFSQSJ = DateTime.Now;
            XFLY = "";
            XFSPSJ = DateTime.Now;
        }
        public class EDU_ZZJX_52_A03_XYPJPFJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "һ����Ŀ")]
            public Int32 YJXMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Ŀ")]
            public Int32 EJXMID { get; set; }


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
            [Display(Name = "���ʱ��")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���������ʦ")]
            public Int32 XFSQJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������ʱ��")]
            public DateTime XFSQSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XFLY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����������ʦ")]
            public Int32 XFSPJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������ʱ��")]
            public DateTime XFSPSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�γ�����")]
            public Int32 KCLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�γ�")]
            public Int32 KCID { get; set; }


        }
    }
}
