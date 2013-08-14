namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZBG_03_02_HG_metadata))]
    public partial class EDU_ZZBG_03_02_HG
    {
        public EDU_ZZBG_03_02_HG()
        {
            HGRGH = "";
            HGDW = "";
            HGYJ = "";
            HGRQ = "";
        }
        public class EDU_ZZBG_03_02_HG_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ļ�")]
            public Int32 WJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�˸���")]
            public Int32 HGRID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�˸��˹���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HGRGH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�˸嵥λ")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HGDW { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�˸����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HGYJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�˸�����")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HGRQ { get; set; }


        }
    }
}
