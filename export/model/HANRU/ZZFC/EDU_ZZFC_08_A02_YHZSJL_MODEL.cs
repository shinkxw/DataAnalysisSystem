namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZFC_08_A02_YHZSJL_metadata))]
    public partial class EDU_ZZFC_08_A02_YHZSJL
    {
        public EDU_ZZFC_08_A02_YHZSJL()
        {
            RZSJ = DateTime.Now;
            SHSJ = DateTime.Now;
            SHR = "";
        }
        public class EDU_ZZFC_08_A02_YHZSJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ס�޼�¼")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�û�")]
            public Int32 YHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����¥")]
            public Int32 SSLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 SSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��λ")]
            public Int32 CWID { get; set; }


            [Display(Name = "�û�����")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHXM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ס������")]
            public Int32 RZRLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��סʱ��")]
            public DateTime RZSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���״̬")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHR { get; set; }


        }
    }
}
