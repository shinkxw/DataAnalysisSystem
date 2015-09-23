namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_52_A02_XYPJEJPFXM_metadata))]
    public partial class EDU_ZZJX_52_A02_XYPJEJPFXM
    {
        public EDU_ZZJX_52_A02_XYPJEJPFXM()
        {
            XMMC = "";
        }
        public class EDU_ZZJX_52_A02_XYPJEJPFXM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "һ����Ŀ")]
            public Int32 YJXMID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ŀ����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ĭ�Ϸ�ֵ")]
            [Range(typeof(decimal), "0", "999")]
            public decimal MRFZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ܷ��޸ķ�ֵ")]
            public Int32 NFXGFZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֵ����")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FZSX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֵ����")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FZXX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


        }
    }
}
