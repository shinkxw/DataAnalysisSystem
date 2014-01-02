namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_07_JFBD_metadata))]
    public partial class EDU_ELE_07_JFBD
    {
        public EDU_ELE_07_JFBD()
        {
            YHID = "";
            BDSJ = DateTime.Now;
            BDTM = "";
            CZXX = "";
        }
        public class EDU_ELE_07_JFBD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ӧ��")]
            public Int32 APPID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�䶯ʱ��")]
            public DateTime BDSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�䶯��Ŀ")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BDTM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�䶯����")]
            public Int32 BDJF { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������Ϣ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CZXX { get; set; }


        }
    }
}
