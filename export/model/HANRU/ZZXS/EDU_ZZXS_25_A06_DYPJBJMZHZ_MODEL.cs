namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_25_A06_DYPJBJMZHZ_metadata))]
    public partial class EDU_ZZXS_25_A06_DYPJBJMZHZ
    {
        public EDU_ZZXS_25_A06_DYPJBJMZHZ()
        {
            BJID = "";
            TJSJ = DateTime.Now;
        }
        public class EDU_ZZXS_25_A06_DYPJBJMZHZ_metadata
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


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ܷ�")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal ZZF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ܷ�")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal ZF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ȵ�")]
            public Int32 DDID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ȵ�������ʦ")]
            public Int32 DDPJJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ӽ�ʦ")]
            public Int32 TJJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime TJSJ { get; set; }


        }
    }
}
