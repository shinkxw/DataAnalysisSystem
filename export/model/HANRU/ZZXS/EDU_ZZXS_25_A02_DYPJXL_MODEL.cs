namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_25_A02_DYPJXL_metadata))]
    public partial class EDU_ZZXS_25_A02_DYPJXL
    {
        public EDU_ZZXS_25_A02_DYPJXL()
        {
            MC = "";
        }
        public class EDU_ZZXS_25_A02_DYPJXL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ֶ�������")]
            public Int32 PFDXLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 DLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


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
