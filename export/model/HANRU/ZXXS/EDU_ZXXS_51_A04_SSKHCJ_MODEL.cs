namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_51_A04_SSKHCJ_metadata))]
    public partial class EDU_ZXXS_51_A04_SSKHCJ
    {
        public EDU_ZXXS_51_A04_SSKHCJ()
        {
            KHSJ = DateTime.Now;
            DJRID = "";
            DJSJ = DateTime.Now;
        }
        public class EDU_ZXXS_51_A04_SSKHCJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 SSDLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����������Ŀ")]
            public Int32 SSDLXMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ԣ")]
            public Int32 GYID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 SSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime KHSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֵ")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ǽ���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ǽ�ʱ��")]
            public DateTime DJSJ { get; set; }


        }
    }
}
