namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_23_A04_DGSXMHWZ_metadata))]
    public partial class EDU_ZZJX_23_A04_DGSXMHWZ
    {
        public EDU_ZZJX_23_A04_DGSXMHWZ()
        {
            BT = "";
            FBR = "";
            ZZ = "";
            ZZBM = "";
            FBSJ = DateTime.Now;
            ZY = "";
            NR = "";
            SHRID = "";
            SHR = "";
            SHSJ = DateTime.Now;
        }
        public class EDU_ZZJX_23_A04_DGSXMHWZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ")]
            public Int32 LMID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FBR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���߲���")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZBM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime FBSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ժҪ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


            [Display(Name = "ͼƬ")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TP { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����")]
            public Int32 DJL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���״̬")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHRID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ö����ȼ�")]
            public Int32 ZDYXJ { get; set; }


        }
    }
}
