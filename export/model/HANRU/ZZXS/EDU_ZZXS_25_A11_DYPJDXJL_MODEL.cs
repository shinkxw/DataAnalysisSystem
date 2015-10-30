namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_25_A11_DYPJDXJL_metadata))]
    public partial class EDU_ZZXS_25_A11_DYPJDXJL
    {
        public EDU_ZZXS_25_A11_DYPJDXJL()
        {
            BJID = "";
            DHHM = "";
            DXNR = "";
            TJSJ = DateTime.Now;
            FSSJ = DateTime.Now;
        }
        public class EDU_ZZXS_25_A11_DYPJDXJL_metadata
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
            [Display(Name = "����ѧ�����ּ�¼")]
            public Int32 GLXSPFJLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�绰����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DHHM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DXNR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ֽ�ʦ")]
            public Int32 PFJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ӽ�ʦ")]
            public Int32 TJJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����״̬")]
            public Int32 FSZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime FSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ͽ�ʦ")]
            public Int32 FSJSID { get; set; }


        }
    }
}
