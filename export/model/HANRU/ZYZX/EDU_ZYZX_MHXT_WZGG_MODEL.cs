namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_MHXT_WZGG_metadata))]
    public partial class EDU_ZYZX_MHXT_WZGG
    {
        public EDU_ZYZX_MHXT_WZGG()
        {
        }
        public class EDU_ZYZX_MHXT_WZGG_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʾ��ʽ")]
            public Int32 SHOWTYPE { get; set; }


            [Display(Name = "�������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ADCONTENT { get; set; }


            [Display(Name = "�������")]
            [StringLength(150)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GGLJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ���ʾ")]
            public Int32 SHOWSTATU { get; set; }


        }
    }
}
