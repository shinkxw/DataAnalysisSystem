namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A09_JLTD_metadata))]
    public partial class EDU_ZZJX_22_A09_JLTD
    {
        public EDU_ZZJX_22_A09_JLTD()
        {
            JLNR = "";
            TDSJ = DateTime.Now;
            FKNR = "";
        }
        public class EDU_ZZJX_22_A09_JLTD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ��")]
            public Int32 SXSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ҵ")]
            public Int32 ComID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��λ")]
            public Int32 GWID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JLNR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ͷ��ʱ��")]
            public DateTime TDSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ�鿴")]
            public Int32 SFCK { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FKNR { get; set; }


        }
    }
}
